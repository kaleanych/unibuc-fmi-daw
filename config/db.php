<?php

return [
    'dsn' => sprintf(
        'mysql:host=%s;dbname=%s;charset=utf8',
        $_ENV["DB_HOST"],
        $_ENV["DB_NAME"]
    ),
    'user' => $_ENV["DB_USER"],
    'password' => $_ENV["DB_PASSWORD"],
];
