<?php


namespace app\models;


use RedBeanPHP\R;

class Cart extends AppModel
{

    public function getItem($id, $lang): array
    {
        return R::getRow("SELECT i.*, id.* FROM items i JOIN item_descriptions id on i.id = id.item_id WHERE i.status = 1 AND i.id = ? AND id.language_id = ?", [$id, $lang['id']]);
    }

    public function addToCart($item, $qty = 1)
    {
        $qty = abs($qty);

        if ($item['is_download'] && isset($_SESSION['cart'][$item['id']])) {
            return false;
        }

        if (isset($_SESSION['cart'][$item['id']])) {
            $_SESSION['cart'][$item['id']]['qty'] += $qty;
        } else {
            if ($item['is_download']) {
                $qty = 1;
            }
            $_SESSION['cart'][$item['id']] = [
                'title' => $item['title'],
                'slug' => $item['slug'],
                'price' => $item['price'],
                'qty' => $qty,
                'img' => $item['img'],
                'is_download' => $item['is_download'],
            ];
        }

        $_SESSION['cart.qty'] = !empty($_SESSION['cart.qty']) ? $_SESSION['cart.qty'] + $qty : $qty;
        $_SESSION['cart.sum'] = !empty($_SESSION['cart.sum']) ? $_SESSION['cart.sum'] + $qty * $item['price'] : $qty * $item['price'];
        return true;
    }

    public function deleteItem($id)
    {
        $qty_minus = $_SESSION['cart'][$id]['qty'];
        $sum_minus = $_SESSION['cart'][$id]['qty'] * $_SESSION['cart'][$id]['price'];
        $_SESSION['cart.qty'] -= $qty_minus;
        $_SESSION['cart.sum'] -= $sum_minus;
        unset($_SESSION['cart'][$id]);
    }

    public static function translateCart($lang)
    {
        if (empty($_SESSION['cart'])) {
            return;
        }
        $ids = implode(',', array_keys($_SESSION['cart']));
        $items = R::getAll("SELECT p.id, pd.title FROM items p JOIN item_descriptions pd on p.id = pd.item_id WHERE p.id IN ($ids) AND pd.language_id = ?", [$lang['id']]);
        foreach ($items as $item) {
            $_SESSION['cart'][$item['id']]['title'] = $item['title'];
        }
    }

}