<?php


namespace app\models\admin;


use app\models\AppModel;
use RedBeanPHP\R;

class Download extends AppModel
{

    public function getDownloads($lang, $start, $per_page): array
    {
        return R::getAll("SELECT d.*, dd.* FROM downloads d JOIN download_descriptions dd on d.id = dd.download_id WHERE dd.language_id = ? LIMIT $start, $per_page", [$lang['id']]);
    }

    public function validateDownloadRequest(): bool
    {
        $errors = '';
        foreach ($_POST['download_description'] as $lang_id => $lang_item) {
            $item['name'] = trim($lang_item['name']);
            if (empty($item['name'])) {
                $errors .= "Name {$lang_id} required<br>";
            }
        }

        if (empty($_FILES) || $_FILES['file']['error']) {
            $errors .= "Error!<br>";
        } else {
            $extensions = ['jpg', 'jpeg', 'png', 'zip', 'pdf', 'txt'];
            $parts = explode('.', $_FILES['file']['name']);
            $ext = end($parts);
            if (!in_array($ext, $extensions)) {
                $errors .= "Accepted types: jpg, jpeg, png, zip, pdf, txt<br>";
            }
        }

        if ($errors) {
            $_SESSION['errors'] = $errors;
            return false;
        }
        return true;
    }

    public function uploadFile(): array|false
    {
        $file_name = $_FILES['file']['name'] . uniqid();
        $path = WWW . '/downloads/' . $file_name;
        if (move_uploaded_file($_FILES['file']['tmp_name'], $path)) {
            return [
                'original_name' => $_FILES['file']['name'],
                'filename' => $file_name,
            ];
        }
        return false;
    }

    public function saveDownload($data): bool
    {
        R::begin();
        try {
            $download = R::dispense('downloads');
            $download->filename = $data['filename'];
            $download->original_name = $data['original_name'];
            $download_id = R::store($download);

            foreach ($_POST['download_description'] as $lang_id => $lang_item) {
                R::exec("INSERT INTO  download_descriptions (download_id, language_id, name) VALUES (?,?,?)", [
                    $download_id,
                    $lang_id,
                    $lang_item['name'],
                ]);
            }
            R::commit();
            return true;
        } catch (\Exception $e) {
            R::rollback();
            return false;
        }
    }

    public function deleteDownload($id): bool
    {
        $file_name = R::getCell('SELECT filename FROM downloads WHERE id = ?', [$id]);
        $file_path = WWW . "/downloads/{$file_name}";
        if (file_exists($file_path)) {
            R::begin();
            try {
                R::exec("DELETE FROM download_descriptions WHERE download_id = ?", [$id]);
                R::exec("DELETE FROM downloads WHERE id = ?", [$id]);
                R::commit();
                @unlink($file_path);
                return true;
            } catch (\Exception $e) {
                R::rollback();
                return false;
            }
        }
        return false;
    }

}