<?php

/**
 * @var $errno \wfm\ErrorHandler
 * @var $errstr \wfm\ErrorHandler
 * @var $errfile \wfm\ErrorHandler
 * @var $errline \wfm\ErrorHandler
 */

?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ERROR</title>
</head>
<body>

<h1>Something went wrong...</h1>
<p><b>Error code:</b> <?= $errno ?></p>
<p><b>Error text:</b> <?= $errstr ?></p>
<p><b>File:</b> <?= $errfile ?></p>
<p><b>Line:</b> <?= $errline ?></p>

</body>
</html>
