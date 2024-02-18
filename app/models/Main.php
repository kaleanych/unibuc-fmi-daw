<?php

namespace app\models;


use RedBeanPHP\R;

class Main extends AppModel
{
    public function getHits($lang, $limit): array
    {
        return R::getAll("SELECT i.* , id.* FROM items i JOIN item_descriptions id on i.id = id.item_id WHERE i.status = 1 AND i.hit = 1 AND id.language_id = ? LIMIT $limit", [$lang['id']]);
    }

}