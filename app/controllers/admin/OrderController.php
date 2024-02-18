<?php


namespace app\controllers\admin;

use app\models\admin\Order;
use RedBeanPHP\R;
use wfm\Pagination;

/** @property Order $model */
class OrderController extends AppController
{

    public function indexAction()
    {
        $status = get('status', 's');
        $status = ($status == 'new') ? ' status = 0 ' : '';

        $page = get('page');
        $perpage = 20;
        $total = R::count('orders', $status);
        $pagination = new Pagination($page, $perpage, $total);
        $start = $pagination->getStart();

        $orders = $this->model->getOrders($start, $perpage, $status);
        $title = 'Orders';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'orders', 'pagination', 'total'));
    }

    public function editAction()
    {
        $id = get('id');

        if (isset($_GET['status'])) {
            $status = get('status');
            if ($this->model->changeStatus($id, $status)) {
                $_SESSION['success'] = 'Order status changed';
            } else {
                $_SESSION['errors'] = 'Error!';
            }
        }

        $order = $this->model->getOrder($id);
        if (!$order) {
            throw new \Exception('Order not found', 404);
        }
        $title = "Order № {$id}";
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'order'));
    }

}