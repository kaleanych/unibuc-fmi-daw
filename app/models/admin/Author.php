<?php


namespace app\models\admin;


use app\models\AppModel;
use RedBeanPHP\R;
use wfm\App;
use wfm\form\FormFieldValidation;
use wfm\form\VALIDITY_TYPE;

class Author extends AppModel
{

    public function getAuthors($lang, $start, $per_page): array
    {
        return R::getAll("SELECT a.*, ad.name FROM authors a JOIN author_descriptions ad on a.id = ad.author_id WHERE ad.language_id = ? LIMIT $start, $per_page", [$lang['id']]);
    }

    public function deleteAuthor($id): bool
    {
        R::begin();
        try {
            $author = R::load('authors', $id);
            if (!$author) {
                return false;
            }
            R::exec("DELETE FROM author_descriptions WHERE author_id = ?", [$id]);
            R::trash($author);

            R::commit();
            return true;
        } catch (\Exception $e) {
            R::rollback();
            return false;
        }
    }

    public function validateAuthorRequest($request): bool
    {
        $errors = '';
        $form_validation = [];
        $lang_codes = App::$app->getProperty('lang_codes');

        foreach ($request['author_description'] as $lang_id => $lang_item) {
            $v_name = new FormFieldValidation("author_description[{$lang_id}][name]", VALIDITY_TYPE::VALID);

            if (empty(trim($lang_item['name']))) {
                $error_message = strtoupper($lang_codes[$lang_id]) . ": Name required.";
                $v_name->setValidity(VALIDITY_TYPE::INVALID);
                $v_name->setMessage($error_message);
                $errors .= $error_message . '<br>';
            }

            $form_validation[$v_name->getName()] = $v_name;
        }

        if ($errors) {
            $_SESSION['errors'] = $errors;
            $_SESSION['form_validation'] = $form_validation;
            $_SESSION['form_data'] = $request;
            return false;
        }
        return true;
    }

    public function saveAuthor($request): ?int
    {
        $lang = App::$app->getProperty('language')['id'];
        R::begin();
        try {
            // author
            $author = R::dispense('authors');
            $author->status = post('status') ? 1 : 0;
            $author->featured = post('hit') ? 1 : 0;
            $author_id = R::store($author);
            $author->slug = AppModel::createSlug('authors', 'slug', $request['author_description'][$lang]['name'], $author_id);
            R::store($author);

            // author_description
            foreach ($request['author_description'] as $lang_id => $lang_item) {
                R::exec("INSERT INTO author_descriptions (author_id, language_id, name, bio) VALUES (?,?,?,?)", [
                    $author_id,
                    $lang_id,
                    $lang_item['name'],
                    $lang_item['bio'],
                ]);
            }

            R::commit();
            return $author_id;
        } catch (\Exception $e) {
            R::rollback();
            $_SESSION['form_data'] = $request;
            return null;
        }
    }

    public function updateAuthor($id, $request): bool
    {
        R::begin();
        try {
            // author
            $author = R::load('authors', $id);
            if (!$author) {
                return false;
            }

            $author->status = post('status') ? 1 : 0;
            $author->featured = post('featured') ? 1 : 0;

            $lang = App::$app->getProperty('language')['id'];
            $author->slug = AppModel::createSlug('authors', 'slug', $request['author_description'][$lang]['name'], $id);

            R::store($author);

            // author_description
            foreach ($request['author_description'] as $lang_id => $lang_item) {
                R::exec("UPDATE author_descriptions SET name = ?, bio = ? WHERE author_id = ? AND language_id = ?", [
                    $lang_item['name'],
                    $lang_item['bio'],
                    $id,
                    $lang_id,
                ]);
            }

            R::commit();
            return true;
        } catch (\Exception $e) {
            echo $e->getMessage();
            die;
            R::rollback();
            return false;
        }
    }

    public function getEmptyAuthor(): array
    {
        $lang_codes = App::$app->getProperty('lang_codes');
        $author = ['status' => 1, 'featured' => 0];
        $author['author_description'] = array_combine(
            array_keys($lang_codes),
            array_fill(0, count($lang_codes), [
                'name' => '',
                'bio' => ''
            ])
        );

        return $author;
    }

    public function getAuthor($id): array
    {
        $author = R::getRow("SELECT a.* FROM authors a WHERE a.id = ?", [$id]);
        $author['author_description'] =  R::getAssoc("SELECT ad.language_id, ad.* FROM author_descriptions ad WHERE ad.author_id = ?", [$id]);
        return $author;
    }

}