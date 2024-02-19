<?php


namespace app\controllers\admin;


use app\models\admin\Download;
use RedBeanPHP\R;
use wfm\App;
use wfm\Pagination;

/** @property Download $model */
class DownloadController extends AppController
{

    public function indexAction()
    {
        $lang = App::$app->getProperty('language');
        $page = get('page');
        $per_page = 20;
        $total = R::count('downloads');
        $pagination = new Pagination($page, $per_page, $total);
        $start = $pagination->getStart();

        $downloads = $this->model->getDownloads($lang, $start, $per_page);
        $title = 'Files (digital items)';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'downloads', 'pagination', 'total'));
    }

    public function addAction()
    {
        if (!empty($_POST)) {
            if ($this->model->validateDownloadRequest()) {
                if ($data = $this->model->uploadFile()) {
                    if ($this->model->saveDownload($data)) {
                        $_SESSION['success'] = 'File added';
                    } else {
                        $_SESSION['errors'] = 'Error!';
                    }
                } else {
                    $_SESSION['errors'] = 'Error!';
                }
            }
            redirect();
        }
        $title = 'Add file (digital item)';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title'));
    }

    public function deleteAction()
    {
        $id = get('id');
        if (R::count('order_downloads', 'download_id = ?', [$id])) {
            $_SESSION['errors'] = 'Cannot delete - the file was purchased.';
            redirect();
        }
        if (R::count('item_downloads', 'download_id = ?', [$id])) {
            $_SESSION['errors'] = 'Cannot delete - the file is linked to an item.';
            redirect();
        }
        if ($this->model->deleteDownload($id)) {
            $_SESSION['success'] = 'File deleted';
        } else {
            $_SESSION['errors'] = 'Error!';
        }
        redirect();
    }

}