<?php


namespace app\controllers\admin;


use app\models\admin\Author;
use app\models\admin\Category;
use app\models\admin\Item;
use RedBeanPHP\R;
use wfm\App;
use wfm\Pagination;

/** @property Item $model */
class ItemController extends AppController
{

    public function indexAction()
    {
        $author_id = get('author_id', 'i');
        $lang = App::$app->getProperty('language');
        $page = get('page');
        $per_page = 10;
        $total = $this->model->countItems($lang, $author_id);
        $pagination = new Pagination($page, $per_page, $total);
        $start = $pagination->getStart();

        $items = $this->model->getItems($lang, $start, $per_page, $author_id);
        $title = 'Items';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'items', 'pagination', 'total'));
    }

    public function deleteAction(): void
    {
        $id = get('id');
        if ($this->model->deleteItem($id)) {
            $_SESSION['success'] = 'Item deleted';
        } else {
            $_SESSION['errors'] = 'Error!';
        }
        redirect();
    }

    public function addAction()
    {
        if (!empty($_POST)) {
            $request = $_POST;
            if ($this->model->validateItemRequest($request)) {
                if ($id = $this->model->saveItem($request)) {
                    $_SESSION['success'] = 'Item added';
                    if ($request['submit'] == 'save') {
                        redirect("/admin/item/edit?id={$id}");
                    }
                } else {
                    $_SESSION['errors'] = 'Error!';
                }
            }
            redirect();
        }
        $categories = Category::getCategories();
        $authors = Author::getAllAuthors();

        $item = $_SESSION['form_data'] ?? $this->model->getEmptyItem();

        $title = 'New item';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'item', 'categories', 'authors'));
    }

    public function editAction()
    {
        $id = get('id');

        if (!empty($_POST)) {
            $request = $_POST;
            if ($this->model->validateItemRequest($request)) {
                if ($this->model->updateItem($id, $request)) {
                    $_SESSION['success'] = 'Item saved';
                } else {
                    $_SESSION['errors'] = 'Error!';
                }
            }
            redirect();
        }

        $item = $_SESSION['form_data'] ?? $this->model->getItem($id);
        if (!$item) {
            throw new \Exception('Item not found', 404);
        }

        $gallery = $this->model->getGallery($id);
        $categories = Category::getCategories();
        $authors = Author::getAllAuthors();

        $title = 'Edit item';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'item', 'gallery', 'categories', 'authors'));
    }

    public function getDownloadAction()
    {
        $q = get('q', 's');
        $downloads = $this->model->get_downloads($q);
        echo json_encode($downloads);
        die;
    }

}