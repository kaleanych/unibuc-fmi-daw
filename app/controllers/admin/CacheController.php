<?php


namespace app\controllers\admin;


use wfm\App;
use wfm\Cache;

class CacheController extends AppController
{

    public function indexAction()
    {
        $title = 'Cache management';
        $this->setMeta("Admin :: {$title}");
        $this->set(compact('title'));
    }

    public function deleteAction()
    {
        $langs = App::$app->getProperty('languages');
        $cache_key = get('cache', 's');
        $cache = Cache::getInstance();
        if ($cache_key == 'category') {
            foreach ($langs as $lang => $lang_item) {
                $cache->delete("libry_menu_{$lang}");
            }
        } else if ($cache_key == 'page') {
            foreach ($langs as $lang => $lang_item) {
                $cache->delete("libry_page_menu_{$lang}");
            }
        } else {
            $cache->delete($cache_key);
        }
        $_SESSION['success'] = 'Selected cache deleted';
        redirect();
    }

}