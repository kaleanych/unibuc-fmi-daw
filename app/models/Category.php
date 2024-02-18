<?php


namespace app\models;


use RedBeanPHP\R;
use wfm\App;

class Category extends AppModel
{

    public function get_category($slug, $lang): array
    {
        return R::getRow("SELECT c.*, cd.* FROM categories c JOIN category_descriptions cd on c.id = cd.category_id WHERE c.slug = ? AND cd.language_id = ?", [$slug, $lang['id']]);
    }

    public function getIds($id): string
    {
        $categories = App::$app->getProperty("categories");
        $ids = '';
        foreach ($categories as $k => $v) {
            if ($v['parent_id'] == $id) {
                $ids .= $k . ',';
                $ids .= $this->getIds($k);
            }
        }
        return $ids;
    }

    public function getItems($ids, $lang, $start, $per_page): array
    {
        $sort_values = [
            'title_asc' => 'ORDER BY title ASC',
            'title_desc' => 'ORDER BY title DESC',
            'price_asc' => 'ORDER BY price ASC',
            'price_desc' => 'ORDER BY price DESC',
        ];
        $order_by = '';
        if (isset($_GET['sort']) && array_key_exists($_GET['sort'], $sort_values)) {
            $order_by = $sort_values[$_GET['sort']];
        }
        return R::getAll("SELECT i.*, id.* FROM items i JOIN item_descriptions id on i.id = id.item_id WHERE i.status = 1 AND i.category_id IN ($ids) AND id.language_id = ? $order_by LIMIT $start, $per_page", [$lang['id']]);
    }

    public function countItems($ids): int
    {
        return R::count('items', "category_id IN ($ids) AND status = 1");
    }

    public static function getCategories()
    {
        $lang = App::$app->getProperty('language');
        $categories = R::getAssoc("SELECT c.*, cd.* FROM categories c 
                        JOIN category_descriptions cd
                        ON c.id = cd.category_id
                        WHERE cd.language_id = ?", [$lang['id']]);
        return $categories;
    }

}