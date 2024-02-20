<?php


namespace app\models;


use RedBeanPHP\R;

class User extends AppModel
{

    public array $attributes = [
        'email' => '',
        'password' => '',
        'name' => '',
        'address' => '',
    ];

    public array $rules = [
        'required' => ['email', 'password', 'name', 'address',],
        'email' => ['email',],
        'lengthMin' => [
            ['password', 6],
        ],
        'optional' => ['email', 'password'],
    ];

    public array $labels = [
        'email' => 'tpl_signup_email_input',
        'password' => 'tpl_signup_password_input',
        'name' => 'tpl_signup_name_input',
        'address' => 'tpl_signup_address_input',
    ];

    public static function checkAuth(): bool
    {
        return isset($_SESSION['user']);
    }

    public function checkUnique($text_error = ''): bool
    {
        $user = R::findOne('users', 'email = ?', [$this->attributes['email']]);
        if ($user) {
            $this->errors['unique'][] = $text_error ?: ___('user_signup_error_email_unique');
            return false;
        }
        return true;
    }

    public function login($can_admin = false): bool
    {
        $email = post('email');
        $password = post('password');
        if ($email && $password) {
            if ($can_admin) {
                $user = R::findOne('users', "email = ? AND role IN ('admin', 'librarian') AND status=1", [$email]);
            } else {
                $user = R::findOne('users', "email = ? AND status=1", [$email]);
            }

            if ($user) {
                if (password_verify($password, $user->password)) {
                    foreach ($user as $k => $v) {
                        if (!$k != 'password') {
                            $_SESSION['user'][$k] = $v;
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public function countOrders($user_id): int
    {
        return R::count('orders', 'user_id = ?', [$user_id]);
    }

    public function getUserOrders($start, $per_page, $user_id): array
    {
        return R::getAll("SELECT * FROM orders WHERE user_id = ? ORDER BY id DESC LIMIT $start, $per_page", [$user_id]);
    }

    public function getUserOrder($id): array
    {
        return R::getAll("SELECT o.*, op.* FROM orders o JOIN order_items op on o.id = op.order_id WHERE o.id = ?", [$id]);
    }

    public function countFiles(): int
    {
        return R::count('order_downloads', 'user_id = ? AND status = 1', [$_SESSION['user']['id']]);
    }

    public function getUserFiles($start, $per_page, $lang): array
    {
        return R::getAll("SELECT od.*, d.*, dd.* FROM order_downloads od JOIN downloads d on d.id = od.download_id JOIN download_descriptions dd on d.id = dd.download_id WHERE od.user_id = ? AND od.status = 1 AND  dd.language_id = ? LIMIT $start, $per_page", [$_SESSION['user']['id'], $lang['id']]);
    }

    public function getUserFile($id, $lang): array
    {
        return R::getRow("SELECT od.*, d.*, dd.* FROM order_downloads od JOIN downloads d on d.id = od.download_id JOIN download_descriptions dd on d.id = dd.download_id WHERE od.user_id = ? AND od.status = 1 AND od.download_id = ? AND dd.language_id = ?", [$_SESSION['user']['id'], $id, $lang['id']]);
    }

    public static function confirm($email, $hash): bool
    {
        if ($email && $hash) {
            $user = R::findOne('users', "email = ? AND status=0 AND hash=?", [$email, $hash]);
            if ($user) {
                R::exec("UPDATE users SET status = 1 WHERE id = ?", [$user['id']]);
                return true;
            }
        }
        return false;
    }
}