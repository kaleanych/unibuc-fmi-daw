<?php


namespace app\controllers\admin;


use app\models\admin\Page;
use RedBeanPHP\R;
use wfm\App;
use wfm\Pagination;

/** @property Page $model */
class PageController extends AppController
{
    public function indexAction(): void
    {
        $lang = App::$app->getProperty('language');
        $page = get('pages');
        $per_page = 20;
        $total = R::count('pages');
        $pagination = new Pagination($page, $per_page, $total);
        $start = $pagination->getStart();

        $pages = $this->model->getPages($lang, $start, $per_page);
        $title = 'Pages';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'pages', 'pagination', 'total'));
    }

    public function deleteAction(): void
    {
        $id = get('id');
        if ($this->model->deletePage($id)) {
            $_SESSION['success'] = 'Page deleted';
        } else {
            $_SESSION['errors'] = 'Error!';
        }
        redirect();
    }

    public function addAction(): void
    {
        if (!empty($_POST)) {
            $request = $_POST;
            if ($this->model->validatePageRequest($request)) {
                if ($id = $this->model->savePage($request)) {
                    $_SESSION['success'] = 'Page added';
                    if ($request['submit'] == 'save') {
                        redirect("/admin/page/edit?id={$id}");
                    }
                } else {
                    $_SESSION['errors'] = 'Error!';
                }
            }
            redirect();
        }

        $page = $_SESSION['form_data'] ?? $this->model->getEmptyPage();

        $title = 'New page';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'page'));
    }

    public function editAction(): void
    {
        $id = get('id');

        if (!empty($_POST)) {
            $request = $_POST;
            if ($this->model->validatePageRequest($request)) {
                if ($this->model->updatePage($id, $request)) {
                    $_SESSION['success'] = 'Page saved';
                    if ($request['submit'] == 'save_add') {
                        redirect("/admin/page/add");
                    }
                } else {
                    $_SESSION['errors'] = 'Page save error';
                }
            }
            redirect();
        }

        $page = $_SESSION['form_data'] ?? $this->model->getPage($id);
        if (!$page) {
            throw new \Exception('Page not found', 404);
        }

        $title = 'Edit page';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'page'));
    }

}