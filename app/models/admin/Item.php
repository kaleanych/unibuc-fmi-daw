<?php


namespace app\models\admin;


use app\models\AppModel;
use RedBeanPHP\R;
use wfm\App;

class Item extends AppModel
{

    public function getItems($lang, $start, $perpage): array
    {
        return R::getAll("SELECT p.*, pd.title FROM items p JOIN item_descriptions pd on p.id = pd.item_id WHERE pd.language_id = ? LIMIT $start, $perpage", [$lang['id']]);
    }

    public function getDownloads($q): array
    {
        $data = [];
        $downloads = R::getAssoc("SELECT download_id, name FROM download_descriptions WHERE name LIKE ? LIMIT 10", ["%{$q}%"]);
        if ($downloads) {
            $i = 0;
            foreach ($downloads as $id => $title) {
                $data['items'][$i]['id'] = $id;
                $data['items'][$i]['text'] = $title;
                $i++;
            }
        }
        return $data;
    }

    public function validateItemRequest($request): bool
    {
        $errors = '';
        if (!is_numeric(post('price'))) {
            $errors .= "Price must be a number<br>";
        }
        if (!is_numeric(post('old_price'))) {
            $errors .= "Old price must be a number<br>";
        }

        $lang_codes = App::$app->getProperty('lang_codes');

        foreach ($request['item_description'] as $lang_id => $lang_item) {
            $lang_item['title'] = trim($lang_item['title']);
            $lang_item['excerpt'] = trim($lang_item['excerpt']);
            if (empty($lang_item['title'])) {
                $error_message = strtoupper($lang_codes[$lang_id]) . ": Title required.";
                $errors .= $error_message. "<br>";
            }
            if (empty($lang_item['excerpt'])) {
                $error_message = strtoupper($lang_codes[$lang_id]) . ": Excerpt required.";
                $errors .= $error_message. "<br>";
            }
        }

        if ($errors) {
            $_SESSION['errors'] = $errors;
            $_SESSION['form_data'] = $_POST;
            return false;
        }
        return true;
    }

    public function saveItem($request): ?int
    {
        $lang = App::$app->getProperty('language')['id'];
        R::begin();
        try {
            // item
            $item = R::dispense('items');
            $item->category_id = @$request['category_id'] ? $request['category_id'] : null;
            $item->price = post('price', 'f');
            $item->old_price = post('old_price', 'f');
            $item->status = post('status') ? 1 : 0;
            $item->hit = post('hit') ? 1 : 0;
            $item->img = post('img') ?: NO_IMAGE;
            $item->is_download = post('is_download') ? 1 : 0;
            $item_id = R::store($item);

            $item->slug = AppModel::createSlug('items', 'slug', $request['item_description'][$lang]['title'], $item_id);
            R::store($item);

            // $item_description
            foreach ($request['item_description'] as $lang_id => $lang_item) {
                R::exec("INSERT INTO item_descriptions (item_id, language_id, title, content, excerpt, keywords, description) VALUES (?,?,?,?,?,?,?)", [
                    $item_id,
                    $lang_id,
                    $lang_item['title'],
                    $lang_item['content'],
                    $lang_item['excerpt'],
                    $lang_item['keywords'],
                    $lang_item['description'],
                ]);
            }

            // item_gallery if exists
            if (isset($request['gallery']) && is_array($request['gallery'])) {
                $sql = "INSERT INTO item_gallery (item_id, img) VALUES ";
                foreach ($request['gallery'] as $item) {
                    $sql .= "({$item_id}, ?),";
                }
                $sql = rtrim($sql, ',');
                R::exec($sql, $request['gallery']);
            }

            // item_download if is_download
            if ($item->is_download) {
                $download_id = post('is_download', 'i');
                R::exec("INSERT INTO item_downloads (item_id, download_id) VALUES (?,?)", [$item_id, $download_id]);
            }

            R::commit();
            return $item_id;
        } catch (\Exception $e) {
            R::rollback();
            $_SESSION['form_data'] = $request;
            return null;
        }
    }

    public function updateItem($id, $request): bool
    {
        R::begin();
        try {
            // item
            $item = R::load('items', $id);
            if (!$item) {
                return false;
            }
            $item->category_id = @$request['category_id'] ? $request['category_id'] : null;
            $item->price = post('price', 'f');
            $item->old_price = post('old_price', 'f');
            $item->status = post('status') ? 1 : 0;
            $item->hit = post('hit') ? 1 : 0;
            $item->img = post('img') ?: NO_IMAGE;
            $item->is_download = post('is_download') ? 1 : 0;

            $lang = App::$app->getProperty('language')['id'];
            $item->slug = AppModel::createSlug('items', 'slug', $request['item_description'][$lang]['title'], $id);

            $item_id = R::store($item);

            // item_description
            foreach ($request['item_description'] as $lang_id => $lang_item) {
                R::exec("UPDATE item_descriptions SET title = ?, content = ?, excerpt = ?, keywords = ?, description = ? WHERE item_id = ? AND language_id = ?", [
                    $lang_item['title'],
                    $lang_item['content'],
                    $lang_item['excerpt'],
                    $lang_item['keywords'],
                    $lang_item['description'],
                    $id,
                    $lang_id,
                ]);
            }

            // item_gallery if exists
            if (!isset($request['gallery'])) {
                R::exec("DELETE FROM item_gallery WHERE item_id = ?", [$id]);
            }

            if (isset($request['gallery']) && is_array($request['gallery'])) {
                $gallery = self::getGallery($id);

                if ( (count($gallery) != count($request['gallery'])) || array_diff($gallery, $request['gallery']) || array_diff($request['gallery'], $gallery) ) {
                    R::exec("DELETE FROM item_gallery WHERE item_id = ?", [$id]);
                    $sql = "INSERT INTO item_gallery (item_id, img) VALUES ";
                    foreach ($request['gallery'] as $item) {
                        $sql .= "({$id}, ?),";
                    }
                    $sql = rtrim($sql, ',');
                    R::exec($sql, $request['gallery']);
                }
            }

            // item_download if is_download
            R::exec("DELETE FROM item_downloads WHERE item_id = ?", [$id]);
            if ($item->is_download) {
                $download_id = post('is_download', 'i');
                R::exec("INSERT INTO item_downloads (item_id, download_id) VALUES (?,?)", [$item_id, $download_id]);
            }

            R::commit();
            return true;
        } catch (\Exception $e) {
            print_r($e->getMessage());
            die;
            R::rollback();
            return false;
        }
    }

    public function getEmptyItem(): array
    {
        $lang_codes = App::$app->getProperty('lang_codes');
        $item = [
                    'category_id' => null,
                    'price' => null,
                    'old_price' => null,
                    'status' => null,
                    'hit' => null,
                    'img' => null,
                    'is_download' => null
        ];
        $item['item_description '] = array_combine(
            array_keys($lang_codes),
            array_fill(0, count($lang_codes), [
                'title' => '',
                'description' => '',
                'keywords' => '',
                'excerpt' => '',
                'content' => ''
            ])
        );
        return $item;
    }

    public function getItem($id): array|false
    {
        $item = R::getAssoc("SELECT id.language_id, id.*, i.* FROM item_descriptions id JOIN items i ON i.id = id.item_id WHERE id.item_id = ?", [$id]);
        if (!$item) {
            return false;
        }
        $key = key($item);
        if ($item[$key]['is_download']) {
            $download_info = self::getItemDownload($id);
            $item[$key]['download_id'] = $download_info['download_id'];
            $item[$key]['download_name'] = $download_info['name'];
        }
        return $item;
    }

    public function getItemDownload($item_id): array
    {
        $lang_id = App::$app->getProperty('language')['id'];
        return R::getRow("SELECT pd.download_id, dd.name FROM item_downloads pd JOIN download_descriptions dd ON pd.download_id = dd.download_id WHERE pd.item_id = ? AND dd.language_id = ?", [$item_id, $lang_id]);
    }

    public function getGallery($id): array
    {
        return R::getCol("SELECT img FROM item_gallery WHERE item_id = ?", [$id]);
    }

}