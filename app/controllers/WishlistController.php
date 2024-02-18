<?php


namespace app\controllers;

use app\models\Wishlist;
use wfm\App;

/** @property Wishlist $model */
class WishlistController extends AppController
{

    public function indexAction()
    {
        $lang = App::$app->getProperty('language');
        $items = $this->model->getWishlistItems($lang);
        $this->setMeta(___('wishlist_index_title'));
        $this->set(compact('items'));
    }

    public function addAction()
    {
        $id = get('id');
        if (!$id) {
            $answer = ['result' => 'error', 'text' => ___('tpl_wishlist_add_error')];
            exit(json_encode($answer));
        }

        $item = $this->model->getItem($id);
        if ($item) {
            $this->model->addToWishlist($id);
            $answer = ['result' => 'success', 'text' => ___('tpl_wishlist_add_success')];
        } else {
            $answer = ['result' => 'error', 'text' => ___('tpl_wishlist_add_error')];
        }
        exit(json_encode($answer));
    }

    public function deleteAction()
    {
        $id = get('id');

        if ($this->model->deleteFromWishlist($id)) {
            $answer = ['result' => 'success', 'text' => ___('tpl_wishlist_delete_success')];
        } else {
            $answer = ['result' => 'error', 'text' => ___('tpl_wishlist_delete_error')];
        }
        exit(json_encode($answer));
    }

}