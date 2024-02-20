<?php


namespace app\controllers;


use app\models\Contact;
use wfm\App;

/** @property Contact $model */
class ContactController extends AppController
{
    public function feedbackAction(): void
    {
        if (!empty($_POST)) {
            $this->model->load();

            $captcha = '';
            if (isset($_POST['g-recaptcha-response'])) {
                $captcha = $_POST['g-recaptcha-response'];
            }
            $secretKey = App::$app->getProperty("captcha_secret_key");
            $url = 'https://www.google.com/recaptcha/api/siteverify?secret=' . urlencode($secretKey) .  '&response=' . urlencode($captcha);
            $response = file_get_contents($url);

            $responseKeys = json_decode($response,true);

            if (!$this->model->validate($this->model->attributes) || !$responseKeys["success"]) {
                $this->model->getErrors();
                if (!$responseKeys["success"]) {
                    $_SESSION['errors'] .= '<ul class="m-0"><li>You are not a human!</li></ul>';
                }
                $_SESSION['form_data'] = $this->model->attributes;
            } else {
                if (isset($_SESSION['user'])) {
                    $this->model->attributes['user_id'] = $_SESSION['user']['id'];
                }
                if ($this->model->save('contact') && self::sendEmail($this->model->attributes)) {
                    $_SESSION['success'] = ___('contact_success_feedback');
                } else {
                    $_SESSION['errors'] = ___('contact_error_feedback');
                }
            }
            redirect();
        }

        $lang = App::$app->getProperty('language');
        $page = $this->model->getPage($lang);

        if (!$page) {
            $this->error404();
            return;
        }
        $contact = $this->model->attributes;
        if (isset($_SESSION['user'])) {
            $contact['email'] = $_SESSION['user']['email'];
        }
        $this->setMeta($page['title'], $page['description'], $page['keywords']);
        $this->set(compact('page', 'contact'));
    }

    static function sendEmail($attrs): bool
    {
        try {
            $mail = App::$app->getProperty('mailer');
            $mail->addAddress(App::$app->getProperty('admin_email'));
            $mail->Subject = sprintf(___('contact_feedback'), App::$app->getProperty('site_name'), $attrs['title']);
            ob_start();
            require \APP . "/views/mail/mail_feedback.php";
            $body = ob_get_clean();
            $mail->Body = $body;
            return $mail->send();
        } catch (\Exception $e) {
            return false;
        }
    }

}