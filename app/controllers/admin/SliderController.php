<?php


namespace app\controllers\admin;


use app\models\admin\Slider;

/** @property Slider $model */
class SliderController extends AppController
{

    public function indexAction()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $this->model->update_slider();
            $_SESSION['success'] = 'Slider updated';
            redirect();
        }
        $gallery = $this->model->get_slides();
        $title = 'Slider management';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'gallery'));
    }

}