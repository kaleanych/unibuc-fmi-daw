<?php

namespace app\models;

use app\models\AppModel;
use RedBeanPHP\R;
use wfm\App;

class Config extends AppModel
{

    public static function getAppConfig(): array
    {
        return R::getRow("SELECT * FROM config LIMIT 1");
    }

    public static function getConfig($name, $lang = null): ?string
    {
        $config = App::$app->getProperty('config');
        return $config[$name] ?? null;
    }
}