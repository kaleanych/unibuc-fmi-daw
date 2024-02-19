<?php


namespace app\models;


use RedBeanPHP\R;

class Search extends AppModel
{

    public function countFindItems($s, $lang): int
    {
        return R::getCell(Item::addAuthorSQL("SELECT COUNT(*), %s FROM items i JOIN item_descriptions id on i.id = id.item_id %s WHERE i.status = 1 AND id.language_id = ? AND (id.title LIKE ? OR ad.name LIKE ?)"), [$lang['id'], $lang['id'], "%{$s}%", "%{$s}%"]);
    }

    public function getFindItems($s, $lang, $start, $per_page): array
    {
        $sort_values = [
            'title_asc' => 'ORDER BY title ASC',
            'title_desc' => 'ORDER BY title DESC',
            'author_asc' => 'ORDER BY author_name ASC',
            'author_desc' => 'ORDER BY author_name DESC',
        ];
        $order_by = '';
        if (isset($_GET['sort']) && array_key_exists($_GET['sort'], $sort_values)) {
            $order_by = $sort_values[$_GET['sort']];
        }
        return R::getAll(Item::addAuthorSQL("SELECT i.*, id.*, %s FROM items i JOIN item_descriptions id ON i.id = id.item_id %s WHERE i.status = 1 AND id.language_id = ? AND (id.title LIKE ? OR ad.name LIKE ?) $order_by LIMIT $start, $per_page"), [$lang['id'], $lang['id'], "%{$s}%", "%{$s}%"]);
    }

}