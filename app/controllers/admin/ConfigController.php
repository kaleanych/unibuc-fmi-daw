<?php


namespace app\controllers\admin;

use app\models\admin\Config;

/** @property Config $model */
class ConfigController extends AppController
{

    public function editAction()
    {
        $config = $this->model->getConfig();
        $id = $config['id'];

        if (isset($_SESSION['form_data'])) {
            $config = $_SESSION['form_data'];
        }

        if (!$config) {
            throw new \Exception('Config not found', 404);
        }

        if (!empty($_POST)) {
            $request = $_POST;
            $this->model->load();

            if (!$this->model->validate($this->model->attributes)) {
                $this->model->getErrors();
                $_SESSION['form_data'] = $request;
            } else {
                if ($this->model->update('config', $id)) {
                    $_SESSION['success'] = 'Config saved';
                } else {
                    $_SESSION['errors'] = 'Error!';
                    $_SESSION['form_data'] = $request;
                }
            }

            redirect();
        }

        $fields = $this->model->labels;
        $rules = $this->model->rules;

        $title = 'Config';
        $this->setMeta('Admin :: Config');
        $this->set(compact('title', 'config', 'fields', 'rules'));
    }

}