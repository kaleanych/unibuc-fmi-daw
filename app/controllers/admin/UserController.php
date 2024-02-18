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
        $per_page = 1;
        $total = R::count('users');
        $pagination = new Pagination($page, $per_page, $total);
        $start = $pagination->getStart();

        $users = $this->model->get_users($start, $per_page);
        $title = 'Users';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'users', 'pagination', 'total'));
    }

    public function viewAction()
    {
        $id = get('id');
        $user = $this->model->get_user($id);
        if (!$user) {
            throw new \Exception('User not found', 404);
        }

        $page = get('page');
        $per_page = 1;
        $total = $this->model->get_count_orders($id);
        $pagination = new Pagination($page, $per_page, $total);
        $start = $pagination->getStart();

        $orders = $this->model->get_user_orders($start, $per_page, $id);
        $title = 'User profile';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'user', 'pagination', 'total', 'orders'));
    }

    public function addAction()
    {
        if (!empty($_POST)) {
            $request = $_POST;
            $this->model->load();
            if (!$this->model->validate($this->model->attributes) || !$this->model->checkUnique('This email is already in use')) {
                $this->model->getErrors();
                $_SESSION['form_data'] = $request;
            } else {
                $this->model->attributes['password'] = password_hash($this->model->attributes['password'], PASSWORD_DEFAULT);
                if ($id = $this->model->save('users')) {
                    $_SESSION['success'] = 'User added';
                } else {
                    $_SESSION['errors'] = 'Error!';
                }
            }

            if ($request['submit'] == 'save_add') {
                redirect();
            } else {
                redirect("/admin/user/edit?id={$id}");
            }

        }
        $title = 'New user';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title'));
    }

    public function editAction()
    {
        $id = get('id');
        $user = $this->model->get_user($id);
        if (!$user) {
            throw new \Exception('User not found', 404);
        }

        if (!empty($_POST)) {
            $request = $_POST;
            $this->model->load();
            if (empty($this->model->attributes['password'])) {
                unset($this->model->attributes['password']);
            }

            if (!$this->model->validate($this->model->attributes) || !$this->model->checkEmail($user)) {
                $this->model->getErrors();
            } else {
                if (!empty($this->model->attributes['password'])) {
                    $this->model->attributes['password'] = password_hash($this->model->attributes['password'], PASSWORD_DEFAULT);
                }
                if ($this->model->update('users', $id)) {
                    $_SESSION['success'] = 'User saved';
                } else {
                    $_SESSION['errors'] = 'Error!';
                }
            }
            if ($request['submit'] == 'save_add') {
                redirect("/admin/user/add");
            } else {
                redirect();
            }
        }

        $title = 'Edit user';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'user'));
    }

    public function loginAdminAction()
    {
        if ($this->model::isAdmin()) {
            redirect(ADMIN_URL);
        }

        $this->layout = 'login';
        if (!empty($_POST)) {
            if ($this->model->login(true)) {
                $_SESSION['success'] = 'Successfully logged in';
            } else {
                $_SESSION['errors'] = 'Wrong credentials';
            }
            if ($this->model::isAdmin()) {
                redirect(ADMIN_URL);
            } else {
                redirect();
            }
        }

    }

    public function logoutAction()
    {
        if ($this->model::isAdmin()) {
            unset($_SESSION['user']);
        }
        redirect(ADMIN_URL . '/user/login-admin');
    }

}