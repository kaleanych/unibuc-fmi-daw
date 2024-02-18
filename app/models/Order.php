<?php


namespace app\models;


use PHPMailer\PHPMailer\PHPMailer;
use RedBeanPHP\R;
use wfm\App;

class Order extends AppModel
{

    public static function saveOrder($data): int|false
    {
        R::begin();
        try {
            $order = R::dispense('orders');
            $order->user_id = $data['user_id'];
            $order->note = $data['note'];
            $order->total = $_SESSION['cart.sum'];
            $order->qty = $_SESSION['cart.qty'];
            $order_id = R::store($order);
            self::saveOrderItem($order_id, $data['user_id']);

            R::commit();
            return $order_id;
        } catch (\Exception $e) {
            R::rollback();
            return false;
        }
    }

    public static function saveOrderItem($order_id, $user_id)
    {
        $sql_part = '';
        $binds = [];
        foreach ($_SESSION['cart'] as $item_id => $item) {
            if ($item['is_download']) {
                $download_id = R::getCell("SELECT download_id FROM item_downloads WHERE item_id = ?", [$item_id]);
                $order_download = R::dispense('order_downloads');
                $order_download->order_id = $order_id;
                $order_download->user_id = $user_id;
                $order_download->item_id = $item_id;
                $order_download->download_id = $download_id;
                R::store($order_download);
            }

            $sum = $item['qty'] * $item['price'];
            $sql_part .= "(?,?,?,?,?,?,?),";
            $binds = array_merge($binds, [$order_id, $item_id, $item['title'], $item['slug'], $item['qty'], $item['price'], $sum]);
        }
        $sql_part = rtrim($sql_part, ',');
        R::exec("INSERT INTO order_items (order_id, item_id, title, slug, qty, price, sum) VALUES $sql_part", $binds);
    }

    public static function mailOrder($order_id, $user_email, $tpl): bool
    {

        try {
            $mail = App::$app->getProperty('mailer');
            $mail->addAddress($user_email);
            $mail->Subject = sprintf(___('cart_checkout_mail_subject'), $order_id);

            ob_start();
            require \APP . "/views/mail/{$tpl}.php";
            $body = ob_get_clean();

            $mail->Body = $body;
            return $mail->send();
        } catch (\Exception $e) {
//            debug($e,1);
            return false;
        }
    }

}