<?php

namespace app\models\admin;

use RedBeanPHP\R;

class User extends \app\models\User
{

    public array $attributes = [
        'email' => '',
        'password' => '',
        'name' => '',
        'address' => '',
        'phone_number' => '',
        'role' => '',
        'status' => 0,
    ];

    public array $rules = [
        'required' => ['email', 'password', 'name', 'address', 'phone_number', 'role',],
        'email' => ['email',],
        'lengthMin' => [
            ['password', 6],
        ],

        'optional' => ['password'],
    ];

    public array $labels = [
        'email' => 'E-mail',
        'password' => 'Password',
        'name' => 'Name',
        'address' => 'Address',
        'phone_number' => 'Phone',
        'role' => 'Role',
        'status' => 'Status',
    ];

    public static function isAdmin(): bool
    {
        return (isset($_SESSION['user']) && $_SESSION['user']['role'] == 'admin');
    }

    public static function canAdmin(): bool
    {
        return (isset($_SESSION['user']) && in_array($_SESSION['user']['role'],  ['admin', 'librarian']));
    }

    public function getUsers($start, $per_page): array
    {
        return R::findAll('users', "LIMIT $start, $per_page");
    }

    public function getEmptyUser(): array
    {
        return [
            'email' => '',
            'name' => '',
            'address' => '',
            'phone_number' => '',
            'role' => 'user',
            'status' => 0,
        ];
    }

    public function getUser($id): array
    {
        return R::getRow("SELECT * FROM users WHERE id = ?", [$id]);
    }

    public function checkEmail($user_data): bool
    {
        if ($user_data['email'] == $this->attributes['email']) {
            return true;
        }
        $user = R::findOne('users', 'email = ?', [$this->attributes['email']]);
        if ($user) {
            $this->errors['unique'][] = 'This email address is already taken';
            return false;
        }
        return true;
    }

}