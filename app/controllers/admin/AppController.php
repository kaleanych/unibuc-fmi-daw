<?php


namespace app\controllers\admin;


use app\models\admin\User;
use app\models\AppModel;
use app\widgets\language\Language;
use RedBeanPHP\R;
use wfm\App;
use wfm\Controller;

class AppController extends Controller
{

    public false|string $layout = 'admin';

    public function __construct($route)
    {
        parent::__construct($route);

        if (!User::isAdmin() && $route['action'] != 'login-admin') {
            redirect(ADMIN_URL . '/user/login-admin');
        }

        new AppModel();
        App::$app->setProperty('languages', Language::getLanguages());
        App::$app->setProperty('lang_codes', Language::getLangCodes());
        App::$app->setProperty('language', Language::getLanguage(App::$app->getProperty('languages')));
    }

}