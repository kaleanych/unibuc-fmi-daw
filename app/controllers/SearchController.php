<?php


namespace app\controllers;


use app\models\Search;
use wfm\App;
use wfm\Pagination;

/** @property Search $model */
class SearchController extends AppController
{

    public function indexAction()
    {
        $s = get('s', 's');
        $lang = App::$app->getProperty('language');
        $page = get('page');
        $per_page = App::$app->getProperty('pagination');
        $total = $this->model->countFindItems($s, $lang);
        $pagination = new Pagination($page, $per_page, $total);
        $start = $pagination->getStart();

        $items = $this->model->getFindItems($s, $lang, $start, $per_page);
        $this->setMeta(___('tpl_search_title'));
        $this->set(compact('s', 'items', 'pagination', 'total'));
    }

}