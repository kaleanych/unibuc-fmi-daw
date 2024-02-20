<?php


namespace app\controllers\admin;


use app\models\admin\Author;
use Dompdf\Dompdf;
use RedBeanPHP\R;
use wfm\App;
use wfm\Pagination;

/** @property Author $model */
class AuthorController extends AppController
{
    public function indexAction(): void
    {
        $lang = App::$app->getProperty('language');
        $page = get('page');
        $per_page = 10;
        $total = R::count('authors');
        $pagination = new Pagination($page  , $per_page, $total);
        $start = $pagination->getStart();

        $authors = $this->model->getAuthors($lang, $start, $per_page);
        $title = 'Authors';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'authors', 'pagination', 'total'));
    }

    public function deleteAction(): void
    {
        $id = get('id');
        if ($this->model->deleteAuthor($id)) {
            $_SESSION['success'] = 'Author deleted';
        } else {
            $_SESSION['errors'] = 'Error!';
        }
        redirect();
    }

    public function addAction(): void
    {
        if (!empty($_POST)) {
            $request = $_POST;
            if ($this->model->validateAuthorRequest($request)) {
                if ($id = $this->model->saveAuthor($request)) {
                    $_SESSION['success'] = 'Author added';
                    if ($request['submit'] == 'save') {
                        redirect("/admin/author/edit?id={$id}");
                    }
                } else {
                    $_SESSION['errors'] = 'Error!';
                }
            }

            redirect();
        }

        $author = $_SESSION['form_data'] ?? $this->model->getEmptyAuthor();

        $title = 'New author';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'author'));
    }

    public function editAction(): void
    {
        $id = get('id');

        if (!empty($_POST)) {
            $request = $_POST;
            if ($this->model->validateAuthorRequest($request)) {
                if ($this->model->updateAuthor($id, $request)) {
                    $_SESSION['success'] = 'Author saved';
                    if ($request['submit'] == 'save_add') {
                        redirect("/admin/author/add");
                    }
                } else {
                    $_SESSION['errors'] = 'Author save error';
                }
            }

            redirect();
        }

        $author = $_SESSION['form_data'] ?? $this->model->getAuthor($id);
        if (!$author) {
            throw new \Exception('Author not found', 404);
        }

        $title = 'Edit author';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'author'));
    }

    public function exportAction() {

        $authors = (new \app\models\Author)->getAuthors(App::$app->getProperty('language'), 0, 100, 'count_books_desc');
        $title = "Top 100 Authors";

        $dompdf = new Dompdf();

        ob_start();
        require \APP . "/views/admin/Author/export.php";
        $content = ob_get_clean();

        $dompdf->loadHtml($content);
        $dompdf->render();
        $dompdf->stream();
    }

}