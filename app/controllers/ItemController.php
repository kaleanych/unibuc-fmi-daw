<?php


namespace app\controllers;


use app\models\Breadcrumbs;
use app\models\Item;
use wfm\App;

/** @property Item $model */
class ItemController extends AppController
{

    public function viewAction(): void
    {
        $lang = App::$app->getProperty('language');
        $item = $this->model->getItem($this->route['slug'], $lang);

        if (!$item) {
            $this->error404();
            return;
        }

        $breadcrumbs = Breadcrumbs::getBreadcrumbs($item['category_id'], $item['title']);

        $gallery = $this->model->getGallery($item['id']);
        $this->setMeta($item['title'], $item['description'], $item['keywords']);
        $this->set(compact('item', 'gallery', 'breadcrumbs'));
    }

}