<?php


namespace app\models;


use RedBeanPHP\R;

class Item extends AppModel
{

    public function getItem($slug, $lang): array
    {
        return R::getRow(self::addAuthorSQL("SELECT i.*, id.*, %s FROM items i JOIN item_descriptions id on i.id = id.item_id %s WHERE i.status = 1 AND i.slug = ? AND id.language_id = ?"), [$lang['id'], $slug, $lang['id']]);
    }

    public function getGallery($item_id): array
    {
        return R::getAll("SELECT * FROM item_gallery WHERE item_id = ?", [$item_id]);
    }

    public static function addAuthorSQL($fsql): string
    {
        return sprintf($fsql, "ad.name AS author_name, a.slug AS author_slug", "LEFT JOIN authors a ON i.author_id=a.id LEFT JOIN author_descriptions ad ON (a.id=ad.author_id AND ad.language_id=?)");
    }

}