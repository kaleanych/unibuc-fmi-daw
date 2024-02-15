<?php

define("ROOT", dirname(__DIR__));

require_once ROOT . '/vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(ROOT);
$dotenv->load();

define("DEBUG", getenv("DEBUG"));
define("WWW", ROOT . '/public');
define("APP", ROOT . '/app');
define("CORE", ROOT . '/src/wfm');
define("HELPERS", CORE . '/helpers');
define("CACHE", ROOT . '/tmp/cache');
define("LOGS", ROOT . '/tmp/logs');
define("CONFIG", ROOT . '/config');
define("LAYOUT", 'biblio');
define("PATH", getenv("PATH"));
define("ADMIN", getenv("ADMIN"));
define("NO_IMAGE", 'uploads/no_image.jpg');


