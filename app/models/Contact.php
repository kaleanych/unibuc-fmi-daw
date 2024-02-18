<?php


namespace app\models;


use RedBeanPHP\R;

class Contact extends AppModel
{
    public array $attributes = [
        'email' => '',
        'title' => '',
        'message' => '',
        'user_id' => null,
    ];

    public array $rules = [
        'required' => ['email', 'title', 'message'],
        'email' => ['email',],
        'lengthMin' => [
            ['message', 10],
        ],
    ];

    public array $labels = [
        'email' => 'tpl_email_input',
        'title' => 'tpl_title_input',
        'message' => 'tpl_message_input',
    ];

    public function getPage($lang): array
    {
        return R::getRow("SELECT p.*, pd.* FROM pages p JOIN page_descriptions pd on p.id = pd.page_id WHERE p.slug = ? AND pd.language_id = ?", ['contact', $lang['id']]);
    }

}