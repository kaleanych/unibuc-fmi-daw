<?php


namespace app\models;


use RedBeanPHP\R;

class Wishlist extends AppModel
{

    public function getItem($id): array|null|string
    {
        return R::getCell("SELECT id FROM items WHERE status = 1 AND id = ?", [$id]);
    }

    public function addToWishlist($id)
    {
        $wishlist = self::getWishlistIds();
        if (!$wishlist) {
            setcookie('wishlist', $id, time() + 3600*24*7*30, '/');
        } else {
            if (!in_array($id, $wishlist)) {
                if (count($wishlist) > 5) {
                    array_shift($wishlist);
                }
                $wishlist[] = $id;
                $wishlist = implode(',', $wishlist);
                setcookie('wishlist', $wishlist, time() + 3600*24*7*30, '/');
            }
        }
    }

    public static function getWishlistIds(): array
    {
        $wishlist = $_COOKIE['wishlist'] ?? '';
        if ($wishlist) {
            $wishlist = explode(',', $wishlist);
        }
        if (is_array($wishlist)) {
            $wishlist = array_slice($wishlist, 0, 6);
            $wishlist = array_map('intval', $wishlist);
            return $wishlist;
        }
        return [];
    }

    public function getWishlistItems($lang): array
    {
        $wishlist = self::getWishlistIds();
        if ($wishlist) {
            $wishlist = implode(',', $wishlist);
            return R::getAll(Item::addAuthorSQL("SELECT i.*, id.*, %s FROM items i JOIN item_descriptions id on i.id = id.item_id %s WHERE i.status = 1 AND i.id IN ($wishlist) AND id.language_id = ? LIMIT 6"), [$lang['id'], $lang['id']]);
        }
        return [];
    }

    public function deleteFromWishlist($id): bool
    {
        $wishlist = self::getWishlistIds();
        $key = array_search($id, $wishlist);
        if (false !== $key) {
            unset($wishlist[$key]);
            if ($wishlist) {
                $wishlist = implode(',', $wishlist);
                setcookie('wishlist', $wishlist, time() + 3600*24*7*30, '/');
            } else {
                setcookie('wishlist', '', time()-3600, '/');
            }
            return true;
        }
        return false;
    }

}