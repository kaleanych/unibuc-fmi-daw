<?php

return [
    'admin_email' => $_ENV['ADMIN_EMAIL'],
    'site_name' => 'LiBRY',
    'pagination' => 3,
    'lang' => 'en',

    'smtp_host' => $_ENV['smtp_host'],
    'smtp_auth' => $_ENV['smtp_auth'],
    'smtp_port' => $_ENV['smtp_port'],
    'smtp_username' => $_ENV['smtp_username'],
    'smtp_password' => $_ENV['smtp_password'],
    'smtp_secure' => $_ENV['smtp_secure'],
    'smtp_from_email' => $_ENV['smtp_from_email'],
    'captcha_secret_key' => $_ENV['CAPTCHA_SECRET_KEY'],
];
