<?php

namespace app\models;

use app\models\AppModel;
use RedBeanPHP\R;

class Config extends AppModel
{

    public static function getConfig($name, $lang = null): string
    {
        $config = R::getRow("SELECT * FROM config LIMIT 1");
        return $config[$name];
    }
}