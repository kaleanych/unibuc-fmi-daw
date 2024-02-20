<?php

namespace app\models\admin;

use app\models\AppModel;
use RedBeanPHP\R;

class Config extends AppModel
{

    public array $attributes = [
        'email' => '',
        'address' => '',
        'working_hours' => '',
        'info' => '',
        'contact_info' => '',
        'phone_number' => '',
        'mobile_number' => '',
        'facebook' => '',
        'instagram' => '',
        'whatsapp' => '',
        'youtube' => '',
    ];

    public array $rules = [
        'required' => ['email', 'phone_number'],
        'email' => ['email',],
    ];

    public array $labels = [
        'email' => 'E-Mail',
        'address' => 'Address',
        'working_hours' => 'Working Hours',
        'info' => 'Info',
        'contact_info' => 'Contact Info',
        'phone_number' => 'Phone Number',
        'mobile_number' => 'Mobile Number',
        'facebook' => 'Facebook',
        'instagram' => 'Instagram',
        'whatsapp' => 'Whatsapp',
        'youtube' => 'Youtube',
    ];

    public function getConfig(): array
    {
        $config = R::getRow("SELECT * FROM config LIMIT 1");
        if (!$config) {
            $this->save('config');
            return $this->getConfig();
        }
        return $config;
    }
}