<?php


namespace app\controllers\admin;


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
        $lang = App::$app->getProperty('language');
        $page = get('page');
        $per_page = 3;
        $total = R::count('items');
        $pagination = new Pagination($page, $per_page, $total);
        $start = $pagination->getStart();

        $items = $this->model->getItems($lang, $start, $per_page);
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
                } else {
                    $_SESSION['errors'] = 'Error!';
                }
            }
            if ($request['submit'] == 'save_add') {
                redirect();
            } else {
                redirect("/admin/item/edit?id={$id}");
            }
        }
        $categories = Category::getCategories();

        $item = $this->model->getEmptyItem();

        $title = 'New item';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'item', 'categories'));
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

        $item = $this->model->getItem($id);
        if (!$item) {
            throw new \Exception('Item not found', 404);
        }

        $gallery = $this->model->getGallery($id);
        $categories = Category::getCategories();

        $lang = App::$app->getProperty('language')['id'];
        $title = 'Edit item';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'item', 'gallery', 'categories'));
    }

    public function getDownloadAction()
    {
        $q = get('q', 's');
        $downloads = $this->model->get_downloads($q);
        echo json_encode($downloads);
        die;
    }

}