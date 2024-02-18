<?php

define("ROOT", dirname(__DIR__));

require_once ROOT . '/vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(ROOT);
$dotenv->load();

define("DEBUG", $_ENV["DEBUG"]);
define("WWW", ROOT . '/public');
define("APP", ROOT . '/app');
define("CORE", ROOT . '/src/wfm');
define("HELPERS", CORE . '/helpers');
define("CACHE", ROOT . '/tmp/cache');
define("LOGS", ROOT . '/tmp/logs');
define("CONFIG", ROOT . '/config');
define("LAYOUT", 'libry');
define("SITE_URL", $_ENV["SITE_URL"]);
define("ADMIN_URL", $_ENV["ADMIN_URL"]);
define("NO_IMAGE", 'uploads/no_image.jpg');


