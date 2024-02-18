<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Confirm Signup</title>
</head>
<body>

<p>
    Please confirm your registration at <b><?= \wfm\App::$app->getProperty('site_name') ?></b>,
    by following the <a target="_blank" href="<?=sprintf(base_url() . 'user/confirm?email=%s&hash=%s', $attrs['email'], $attrs['hash']);?>">link</a>.
</p>

</body>
</html>
