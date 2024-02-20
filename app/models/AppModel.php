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
        if ($res && ($res['id'] != $id)) {
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

    public static function getAnalytics(): array
    {
        $data = [];

        $nb_users_overall = R::getCell("SELECT COUNT(DISTINCT ip_address) FROM analytics WHERE uri = ?", [
            $_SERVER['REQUEST_URI']
        ]);
        $nb_users_today = R::getCell("SELECT COUNT(DISTINCT ip_address) FROM analytics WHERE uri = ? AND date_format(visit_time, '%Y-%m-%d') = ?", [
            $_SERVER['REQUEST_URI'],
            date('Y-m-d')
        ]);
        $data['nb_users_overall'] = $nb_users_overall;
        $data['nb_users_today'] = $nb_users_today;
        return $data;
    }
}