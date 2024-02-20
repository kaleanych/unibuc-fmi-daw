<?php

namespace app\models;


use RedBeanPHP\R;

class Main extends AppModel
{
    public function getHits($lang, $limit): array
    {
        return R::getAll(Item::addAuthorSQL("SELECT i.* , id.*, %s FROM items i JOIN item_descriptions id on i.id = id.item_id %s WHERE i.status = 1 AND i.hit = 1 AND id.language_id = ? ORDER BY RAND() LIMIT $limit"), [$lang['id'], $lang['id']]);
    }

}