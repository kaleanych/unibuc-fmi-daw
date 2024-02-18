<?php


namespace app\models;


use RedBeanPHP\R;

class Search extends AppModel
{

    public function countFindItems($s, $lang): int
    {
        return R::getCell("SELECT COUNT(*) FROM items i JOIN item_descriptions id on i.id = id.item_id WHERE i.status = 1 AND id.language_id = ? AND id.title LIKE ?", [$lang['id'], "%{$s}%"]);
    }

    public function getFindItems($s, $lang, $start, $per_page): array
    {
        return R::getAll("SELECT i.*, id.* FROM items i JOIN item_descriptions id ON i.id = id.item_id WHERE i.status = 1 AND id.language_id = ? AND id.title LIKE ? LIMIT $start, $per_page", [$lang['id'], "%{$s}%"]);
    }

}