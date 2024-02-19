<?php


namespace app\controllers;


use app\models\Author;
use app\models\Breadcrumbs;
use RedBeanPHP\R;
use wfm\App;
use wfm\Pagination;

/** @property Author $model */
class AuthorController extends AppController
{
    public function indexAction(): void
    {
        $lang = App::$app->getProperty('language');

        $breadcrumbs = Breadcrumbs::getAuthorBreadcrumbs(___('tpl_authors'));

        $page = get('page');
        $per_page = App::$app->getProperty('pagination');
        $total = R::count('authors', 'status=1');
        $pagination = new Pagination($page, $per_page, $total);
        $start = $pagination->getStart();

        $authors = $this->model->getAuthors($lang, $start, $per_page);
        $this->setMeta('Authors');
        $this->set(compact('authors', 'breadcrumbs', 'total', 'pagination'));
    }

    public function viewAction(): void
    {
        $lang = App::$app->getProperty('language');
        $author = $this->model->getAuthor($this->route['slug'], $lang);

        if (!$author) {
            $this->error404();
            return;
        }

        $breadcrumbs = Breadcrumbs::getAuthorBreadcrumbs(h($author['name']), true);
        $ids = $this->model->getIds($author['id']);

        $page = get('page');
        $per_page = App::$app->getProperty('pagination');
        $total = $this->model->countItems($ids);
        $pagination = new Pagination($page, $per_page, $total);
        $start = $pagination->getStart();

        $items = $this->model->getItems($ids, $lang, $start, $per_page);
        $this->setMeta($author['name']);
        $this->set(compact('items', 'author', 'breadcrumbs', 'total', 'pagination'));
    }

}