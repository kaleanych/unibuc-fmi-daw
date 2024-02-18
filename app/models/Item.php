<?php


namespace app\models;


use RedBeanPHP\R;

class Item extends AppModel
{

    public function getItem($slug, $lang): array
    {
        return R::getRow("SELECT i.*, id.* FROM items i JOIN item_descriptions id on i.id = id.item_id WHERE i.status = 1 AND i.slug = ? AND id.language_id = ?", [$slug, $lang['id']]);
    }

    public function getGallery($item_id): array
    {
        return R::getAll("SELECT * FROM item_gallery WHERE item_id = ?", [$item_id]);
    }

}