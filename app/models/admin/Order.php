<?php


namespace app\models\admin;


use app\models\AppModel;
use RedBeanPHP\R;

class Order extends AppModel
{

    public function getOrders($start, $per_page, $status): array
    {
        if ($status) {
            return R::getAll("SELECT * FROM orders WHERE $status ORDER BY id DESC LIMIT $start, $per_page");
        } else {
            return R::getAll("SELECT * FROM orders ORDER BY id DESC LIMIT $start, $per_page");
        }
    }

    public function getOrder($id): array
    {
        return R::getRow("SELECT o.*, 
        u.name AS user_name, u.email AS user_email, u.address AS user_address, u.phone_number AS user_phone_number 
        FROM orders o JOIN users u ON u.id=o.user_id WHERE o.id = ?", [$id]);
    }

    public function getOrderItems($id): array
    {
        return R::getAll("SELECT oi.* FROM order_items oi WHERE oi.order_id = ?", [$id]);
    }

    public function changeStatus($id, $status): bool
    {
        $status = ($status == 1) ? 1 : 0;
        R::begin();
        try {
            R::exec("UPDATE orders SET status = ? WHERE id = ?", [$status, $id]);
            R::exec("UPDATE order_downloads SET status = ? WHERE order_id = ?", [$status, $id]);
            R::commit();
            return true;
        } catch (\Exception $e) {
            R::rollback();
            return false;
        }
    }

}