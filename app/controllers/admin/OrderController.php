<?php


namespace app\controllers\admin;

use app\models\admin\Order;
use Dompdf\Dompdf;
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
        $per_page = 20;
        $total = R::count('orders', $status);
        $pagination = new Pagination($page, $per_page, $total);
        $start = $pagination->getStart();

        $orders = $this->model->getOrders($start, $per_page, $status);
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
        $order_items = $this->model->getOrderItems($id);
        $title = "Order № {$id}";
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title', 'order', 'order_items'));
    }

    public function exportAction() {
        $id = get('id');

        $order = $this->model->getOrder($id);
        if (!$order) {
            throw new \Exception('Order not found', 404);
        }
        $order_items = $this->model->getOrderItems($id);
        $title = "Order № {$id}";

        $dompdf = new Dompdf();

        ob_start();
        require \APP . "/views/admin/Order/view.php";
        $content = ob_get_clean();

        $dompdf->loadHtml($content);
        $dompdf->render();
        $dompdf->stream();
    }
}