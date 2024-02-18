<?php


namespace app\models\admin;


use app\models\AppModel;
use RedBeanPHP\R;
use wfm\App;
use wfm\form\FormFieldValidation;
use wfm\form\VALIDITY_TYPE;

class Category extends AppModel
{

    public function validateCategoryRequest($request): bool
    {
        $errors = '';
        $form_validation = [];
        $lang_codes = App::$app->getProperty('lang_codes');

        foreach ($request['category_description'] as $lang_id => $lang_item) {
            $v_title = new FormFieldValidation("category_description[{$lang_id}][title]", VALIDITY_TYPE::VALID);

            if (empty(trim($lang_item['title']))) {
                $error_message = strtoupper($lang_codes[$lang_id]) . ": Title required.";
                $v_title->setValidity(VALIDITY_TYPE::INVALID);
                $v_title->setMessage($error_message);
                $errors .= $error_message . '<br>';

            }

            $form_validation[$v_title->getName()] = $v_title;
        }

        if ($errors) {
            $_SESSION['errors'] = $errors;
            $_SESSION['form_validation'] = $form_validation;
            $_SESSION['form_data'] = $request;
            return false;
        }
        return true;
    }

    public function saveCategory($request): ?int
    {
        $lang = App::$app->getProperty('language')['id'];
        R::begin();
        try {
            $category = R::dispense('categories');
            $parent_id = post('parent_id', 'i');
            $category->parent_id = $parent_id != 0 ? $parent_id : null;
            $category_id = R::store($category);
            $category->slug = AppModel::createSlug('categories', 'slug', $request['category_description'][$lang]['title'], $category_id);
            R::store($category);

            foreach ($request['category_description'] as $lang_id => $lang_item) {
                R::exec("INSERT INTO category_descriptions (category_id, language_id, title, description, keywords, content) VALUES (?,?,?,?,?,?)", [
                    $category_id,
                    $lang_id,
                    $lang_item['title'],
                    $lang_item['description'],
                    $lang_item['keywords'],
                    $lang_item['content'],
                ]);
            }
            R::commit();
            return $category_id;
        } catch (\Exception $e) {
            R::rollback();
            return null;
        }
    }

    public function updateCategory($id, $request): bool
    {
        R::begin();
        try {
            $category = R::load('categories', $id);
            if (!$category) {
                return false;
            }
            $parent_id = post('parent_id', 'i');
            $category->parent_id = $parent_id != 0 ? $parent_id : null;
            R::store($category);

            foreach ($request['category_description'] as $lang_id => $lang_item) {
                R::exec("UPDATE category_descriptions SET title = ?, description = ?, keywords = ?, content = ? WHERE category_id = ? AND language_id = ?", [
                    $lang_item['title'],
                    $lang_item['description'],
                    $lang_item['keywords'],
                    $lang_item['content'],
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

    public function getEmptyCategory(): array
    {
        $lang_codes = App::$app->getProperty('lang_codes');
        $category = ['parent_id' => null];
        $category['category_description'] = array_combine(
            array_keys($lang_codes),
            array_fill(0, count($lang_codes), [
                'title' => '',
                'description' => '',
                'keywords' => '',
                'content' => ''
            ])
        );
        return $category;
    }

    public function getCategory($id): array
    {
        $category = R::getRow("SELECT c.* FROM categories c WHERE c.id = ?", [$id]);
        $category['category_description'] = R::getAssoc("SELECT cd.language_id, cd.* FROM category_descriptions cd WHERE cd.category_id = ?", [$id]);
        return $category;
    }

    public static function getCategories()
    {
        $lang = App::$app->getProperty('language');
        $categories = R::getAssoc("SELECT c.*, cd.* FROM categories c 
                        JOIN category_descriptions cd
                        ON c.id = cd.category_id
                        WHERE cd.language_id = ?", [$lang['id']]);
        return $categories;
    }
}