<?php


namespace app\controllers;


use app\models\Breadcrumbs;
use app\models\Category;
use wfm\App;
use wfm\Pagination;

/** @property Category $model */
class CategoryController extends AppController
{

    public function viewAction(): void
    {
        $lang = App::$app->getProperty('language');
        $category = $this->model->getCategory($this->route['slug'], $lang);

        if (!$category) {
            $this->error404();
            return;
        }

        $breadcrumbs = Breadcrumbs::getBreadcrumbs($category['id']);
        $ids = $this->model->getIds($category['id']);
        $ids = !$ids ? $category['id'] : $ids . $category['id'];

        $page = get('page');
        $per_page = App::$app->getProperty('pagination');
        $total = $this->model->countItems($ids);
        $pagination = new Pagination($page, $per_page, $total);
        $start = $pagination->getStart();

        $items = $this->model->getItems($ids, $lang, $start, $per_page);
        $this->setMeta($category['title'], $category['description'], $category['keywords']);
        $this->set(compact('items', 'category', 'breadcrumbs', 'total', 'pagination'));
    }

}