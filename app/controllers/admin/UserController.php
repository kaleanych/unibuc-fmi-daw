<?php


namespace app\controllers\admin;

use app\models\admin\User;
use RedBeanPHP\R;
use wfm\Pagination;

/** @property User $model */
class UserController extends AppController
{

    public function indexAction()
    {
        $page = get('page');
        $per_page = 10;
        $total = R::count('users');
        $pagination = new Pagination($page, $per_page, $total);
        $start = $pagination->getStart();

        $users = $this->model->getUsers($start, $per_page);
        $title = 'Users';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'users', 'pagination', 'total'));
    }

    public function viewAction()
    {
        $id = get('id');
        $user = $this->model->getUser($id);
        if (!$user) {
            throw new \Exception('User not found', 404);
        }

        $page = get('page');
        $per_page = 1;
        $total = $this->model->countOrders($id);
        $pagination = new Pagination($page, $per_page, $total);
        $start = $pagination->getStart();

        $orders = $this->model->getUserOrders($start, $per_page, $id);
        $title = 'User profile';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'user', 'pagination', 'total', 'orders'));
    }

    public function addAction()
    {
        if (!empty($_POST)) {
            $request = $_POST;
            $this->model->load();
            $this->model->attributes['status'] = (isset($request['status']) ? 1 : 0);
            if (!$this->model->validate($this->model->attributes) || !$this->model->checkUnique('This email is already in use')) {
                $this->model->getErrors();
                $_SESSION['form_data'] = $request;
            } else {
                $this->model->attributes['password'] = password_hash($this->model->attributes['password'], PASSWORD_DEFAULT);
                if ($id = $this->model->save('users')) {
                    $_SESSION['success'] = 'User added';
                    if ($request['submit'] == 'save') {
                        redirect("/admin/user/edit?id={$id}");
                    }
                } else {
                    $_SESSION['errors'] = 'Error!';
                    $_SESSION['form_data'] = $request;
                }
            }

            redirect();
        }

        $user = $_SESSION['form_data'] ?? $this->model->getEmptyUser();
            $title = 'New user';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'user'));
    }

    public function editAction()
    {
        $id = get('id');
        $user = $_SESSION['form_data'] ?? $this->model->getUser($id);
        if (!$user) {
            throw new \Exception('User not found', 404);
        }

        if (!empty($_POST)) {
            $request = $_POST;
            $this->model->load();
            if (empty($this->model->attributes['password'])) {
                unset($this->model->attributes['password']);
            }
            $this->model->attributes['status'] = (isset($request['status']) ? 1 : 0);

            if (!$this->model->validate($this->model->attributes) || !$this->model->checkEmail($user)) {
                $this->model->getErrors();
                $_SESSION['form_data'] = $request;
            } else {
                if (!empty($this->model->attributes['password'])) {
                    $this->model->attributes['password'] = password_hash($this->model->attributes['password'], PASSWORD_DEFAULT);
                }
                if ($this->model->update('users', $id)) {
                    $_SESSION['success'] = 'User saved';
                    if ($request['submit'] == 'save_add') {
                        redirect("/admin/user/add");
                    }
                } else {
                    $_SESSION['errors'] = 'Error!';
                    $_SESSION['form_data'] = $request;
                }
            }

            redirect();
        }

        $title = 'Edit user';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'user'));
    }

    public function loginAdminAction()
    {
        if ($this->model::canAdmin()) {
            redirect(ADMIN_URL);
        }

        $this->layout = 'login';
        if (!empty($_POST)) {
            if ($this->model->login(true)) {
                $_SESSION['success'] = 'Successfully logged in';
            } else {
                $_SESSION['errors'] = 'Wrong credentials';
            }
            if ($this->model::canAdmin()) {
                redirect(ADMIN_URL);
            } else {
                redirect();
            }
        }

    }

    public function logoutAction()
    {
        if ($this->model::canAdmin()) {
            unset($_SESSION['user']);
        }
        redirect(ADMIN_URL . '/user/login-admin');
    }

}