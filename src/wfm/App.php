<?php


namespace wfm;


use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\PHPMailer;
use app\widgets\language\Language;

class App
{

    public static $app;

    /**
     * @throws \Exception
     */
    public function __construct()
    {
        $query = trim(urldecode($_SERVER['QUERY_STRING']), '/');
        new ErrorHandler();
        session_start();
        self::$app = Registry::getInstance();
        $this->getParams();
        Router::dispatch($query);
    }

    /**
     * @throws Exception
     */
    protected function getParams(): void
    {
        $params = require_once CONFIG . '/params.php';
        if (!empty($params)) {
            foreach ($params as $k => $v) {
                self::$app->setProperty($k, $v);
            }
        }

        self::$app->setProperty('mailer', $this->getMailer());
    }

    /**
     * @throws Exception
     */
    public function getMailer(): PHPMailer
    {
        $mail = new PHPMailer(true);

        $mail->isSMTP();
        $mail->SMTPDebug = 2;
        $mail->CharSet = 'UTF-8';
        $mail->Host = App::$app->getProperty('smtp_host');
        $mail->SMTPAuth = boolval(App::$app->getProperty('smtp_auth'));
        $mail->Username = App::$app->getProperty('smtp_username');
        $mail->Password = App::$app->getProperty('smtp_password');
        $mail->SMTPSecure = App::$app->getProperty('smtp_secure');
        $mail->Port = App::$app->getProperty('smtp_port');
        $mail->isHTML(true);

        $mail->setFrom(App::$app->getProperty('smtp_from_email'), App::$app->getProperty('site_name'));

        return $mail;
    }

}