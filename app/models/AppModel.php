<?php


namespace app\models;

use RedBeanPHP\R;
use wfm\Model;

class AppModel extends Model
{

    public static function createSlug($table, $field, $str, $id): string
    {
        $str = self::str2url($str);
        $res = R::findOne($table, "$field = ?", [$str]);
        if ($res) {
            $str = "{$str}-{$id}";
            $res = R::count($table, "$field = ?", [$str]);
            if ($res) {
                $str = self::createSlug($table, $field, $str, $id);
            }
        }
        return $str;
    }

    public static function str2url($str): string
    {
        $str = strtolower($str);
        $str = preg_replace('~[^-a-z0-9]+~u', '-', $str);
        $str = trim($str, "-");
        return $str;
    }

    public static function addAnalytics($data = []): bool
    {
        $uri = $_SERVER['REQUEST_URI'];
        if (($_SERVER['REQUEST_METHOD'] == 'GET') && !empty($uri)) {
            R::exec("INSERT INTO analytics (user_id, ip_address, uri) VALUES (?,?,?)", [
                $_SESSION['user']['id'] ?? null,
                $_SERVER['REMOTE_ADDR'],
                $uri
            ]);
            return true;
        }
        return false;
    }
}