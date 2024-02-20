<?php


namespace app\controllers\admin;


use RedBeanPHP\R;

class MainController extends AppController
{

    public function indexAction()
    {
        $orders = R::count('orders');
        $new_orders = R::count('orders', 'status = 0');
        $users = R::count('users');
        $items = R::count('items');

        $title = 'Dashboard';
        $this->setMeta('Admin :: Dashboard');
        $this->set(compact('title', 'orders', 'new_orders', 'users', 'items'));
    }
}