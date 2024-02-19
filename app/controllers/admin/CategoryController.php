<?php


namespace app\controllers\admin;


use app\models\admin\Category;
use RedBeanPHP\R;
use wfm\App;

/** @property Category $model */
class CategoryController extends AppController
{
    public function indexAction()
    {
        $categories = Category::getCategories();

        $title = 'Categories';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'categories'));
    }

    public function deleteAction()
    {
        $id = get('id');
        $errors = '';
        $children = R::count('categories', 'parent_id = ?', [$id]);
        $items = R::count('items', 'category_id = ?', [$id]);
        if ($children) {
            $errors .= 'Error! Category is a parent<br>';
        }
        if ($items) {
            $errors .= 'Error! Category has items<br>';
        }
        if ($errors) {
            $_SESSION['errors'] = $errors;
        } else {
            R::exec("DELETE FROM category_descriptions WHERE category_id = ?", [$id]);
            R::exec("DELETE FROM categories WHERE id = ?", [$id]);
            $_SESSION['success'] = 'Category deleted';
        }
        redirect();
    }

    public function addAction()
    {
        if (!empty($_POST)) {
            $request = $_POST;
            if ($this->model->validateCategoryRequest($request)) {
                if ($id = $this->model->saveCategory($request)) {
                    $_SESSION['success'] = 'Category added';
                    if ($request['submit'] == 'save') {
                        redirect("/admin/category/edit?id={$id}");
                    }
                } else {
                    $_SESSION['errors'] = 'Error!';
                }
            }

            redirect();
        }

        $category = $_SESSION['form_data'] ?? $this->model->getEmptyCategory();
        $categories = Category::getCategories();

        $title = 'New category';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'category', 'categories'));
    }

    /**
     * @throws \Exception
     */
    public function editAction()
    {
        $id = get('id');
        if (!empty($_POST)) {
            $request = $_POST;
            if ($this->model->validateCategoryRequest($request)) {
                if ($this->model->updateCategory($id, $request)) {
                    $_SESSION['success'] = 'Category saved';
                    if ($request['submit'] == 'save_add') {
                        redirect("/admin/category/add");
                    }
                } else {
                    $_SESSION['errors'] = 'Error!';
                }
            }

            redirect();
        }
        $category = $_SESSION['form_data'] ?? $this->model->getCategory($id);
        $categories = Category::getCategories();

        if (!$category) {
            throw new \Exception('Not found category', 404);
        }
        $lang = App::$app->getProperty('language')['id'];
        $title = 'Edit category';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'category', 'categories'));
    }
}