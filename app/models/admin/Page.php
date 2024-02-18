<?php


namespace app\models\admin;


use app\models\AppModel;
use RedBeanPHP\R;
use wfm\App;
use wfm\form\FormFieldValidation;
use wfm\form\VALIDITY_TYPE;

class Page extends AppModel
{

    public function getPages($lang, $start, $perpage): array
    {
        return R::getAll("SELECT p.*, pd.title FROM pages p JOIN page_descriptions pd on p.id = pd.page_id WHERE pd.language_id = ? LIMIT $start, $perpage", [$lang['id']]);
    }

    public function deletePage($id): bool
    {
        R::begin();
        try {
            $page = R::load('pages', $id);
            if (!$page) {
                return false;
            }
            R::exec("DELETE FROM page_descriptions WHERE page_id = ?", [$id]);
            R::trash($page);

            R::commit();
            return true;
        } catch (\Exception $e) {
            R::rollback();
            return false;
        }
    }

    public function validatePageRequest($request): bool
    {
        $errors = '';
        $form_validation = [];
        $lang_codes = App::$app->getProperty('lang_codes');

        foreach ($request['page_description'] as $lang_id => $lang_item) {
            $v_title = new FormFieldValidation("page_description[{$lang_id}][title]", VALIDITY_TYPE::VALID);
            $v_content = new FormFieldValidation("page_description[{$lang_id}][content]", VALIDITY_TYPE::VALID);

            if (empty(trim($lang_item['title']))) {
                $error_message = strtoupper($lang_codes[$lang_id]) . ": Title required.";
                $v_title->setValidity(VALIDITY_TYPE::INVALID);
                $v_title->setMessage($error_message);
                $errors .= $error_message . '<br>';

            }
            if (empty(trim($lang_item['content']))) {
                $error_message = strtoupper($lang_codes[$lang_id]) . ": Content required.";
                $v_content->setValidity(VALIDITY_TYPE::INVALID);
                $v_content->setMessage($error_message);
                $errors .= $error_message . '<br>';
            }

            $form_validation[$v_title->getName()] = $v_title;
            $form_validation[$v_content->getName()] = $v_content;
        }

        if ($errors) {
            $_SESSION['errors'] = $errors;
            $_SESSION['form_validation'] = $form_validation;
            $_SESSION['form_data'] = $request;
            return false;
        }
        return true;
    }

    public function savePage($request): ?int
    {
        $lang = App::$app->getProperty('language')['id'];
        R::begin();
        try {
            // page
            $page = R::dispense('pages');
            $page_id = R::store($page);
            $page->slug = AppModel::createSlug('pages', 'slug', $request['page_description'][$lang]['title'], $page_id);
            R::store($page);

            // page_description
            foreach ($request['page_description'] as $lang_id => $lang_item) {
                R::exec("INSERT INTO page_descriptions (page_id, language_id, title, content, keywords, description) VALUES (?,?,?,?,?,?)", [
                    $page_id,
                    $lang_id,
                    $lang_item['title'],
                    $lang_item['content'],
                    $lang_item['keywords'],
                    $lang_item['description'],
                ]);
            }

            R::commit();
            return $page_id;
        } catch (\Exception $e) {
            R::rollback();
            $_SESSION['form_data'] = $request;
            return null;
        }
    }

    public function updatePage($id, $request): bool
    {
        R::begin();
        try {
            // page
            $page = R::load('pages', $id);
            if (!$page) {
                return false;
            }

            // page_description
            foreach ($request['page_description'] as $lang_id => $lang_item) {
                R::exec("UPDATE page_descriptions SET title = ?, content = ?, keywords = ?, description = ? WHERE page_id = ? AND language_id = ?", [
                    $lang_item['title'],
                    $lang_item['content'],
                    $lang_item['keywords'],
                    $lang_item['description'],
                    $id,
                    $lang_id,
                ]);
            }

            R::commit();
            return true;
        } catch (\Exception $e) {
            R::rollback();
            return false;
        }
    }

    public function getEmptyPage(): array
    {
        $lang_codes = App::$app->getProperty('lang_codes');
        return array_combine(
            array_keys($lang_codes),
            array_fill(0, count($lang_codes), [
                'title' => '',
                'description' => '',
                'keywords' => '',
                'content' => ''
            ])
        );
    }

    public function getPage($id): array
    {
        return R::getAssoc("SELECT pd.language_id, pd.*, p.* FROM page_descriptions pd JOIN pages p on p.id = pd.page_id WHERE pd.page_id = ?", [$id]);
    }

}