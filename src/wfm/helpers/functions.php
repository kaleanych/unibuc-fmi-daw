<?php

use wfm\Router;

function debug($data, $die = false)
{
    echo '<pre>' . print_r($data, 1) . '</pre>';
    if ($die) {
        die;
    }
}

function h($str)
{
    return htmlspecialchars($str ?? '', ENT_QUOTES);
}

function redirect($http = false)
{
    if ($http) {
        $redirect = $http;
    } else {
        $redirect = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : SITE_URL;
    }
    header("Location: $redirect");
    die;
}

function base_url()
{
    return SITE_URL . '/' . (\wfm\App::$app->getProperty('lang') ? \wfm\App::$app->getProperty('lang') . '/' : '');
}

/**
 * @param string $key Key of GET array
 * @param string $type Values 'i', 'f', 's'
 * @return float|int|string
 */
function get($key, $type = 'i')
{
    $param = $key;
    $$param = $_GET[$param] ?? '';
    if ($type == 'i') {
        return (int)$$param;
    } elseif ($type == 'f') {
        return (float)$$param;
    } else {
        return trim($$param);
    }
}

/**
 * @param string $key Key of POST array
 * @param string $type Values 'i', 'f', 's'
 * @return float|int|string
 */
function post($key, $type = 's')
{
    $param = $key;
    $$param = $_POST[$param] ?? '';
    if ($type == 'i') {
        return (int)$$param;
    } elseif ($type == 'f') {
        return (float)$$param;
    } else {
        return trim($$param);
    }
}

function __($key)
{
    echo \wfm\Language::get($key);
}

function ___($key)
{
    return \wfm\Language::get($key);
}

function get_cart_icon($id)
{
    if (!empty($_SESSION['cart']) && array_key_exists($id, $_SESSION['cart'])) {
        $icon = '<i class="fas fa-luggage-cart"></i>';
    } else {
        $icon = '<i class="fas fa-book-reader"></i>';
    }
    return $icon;
}

function get_field_value($name)
{
    return isset($_SESSION['form_data'][$name]) ? h($_SESSION['form_data'][$name]) : '';
}

function get_field_array_value($name, $key, $index)
{
    return isset($_SESSION['form_data'][$name][$key][$index]) ? h($_SESSION['form_data'][$name][$key][$index]) : '';
}

function is_form_field_valid(\wfm\form\FormFieldValidation $field_validation): ?bool
{
    return $field_validation->getValidity() == \wfm\form\VALIDITY_TYPE::VALID;
}

function display_form_field_valid(string $field_name, bool $for_input = true, string $pre_spacing = ' '): void
{
    if (isset($_SESSION['form_validation'])) {
        if (
            isset($_SESSION['form_validation'][$field_name])
            && ($_SESSION['form_validation'][$field_name]->getValidity() !== \wfm\form\VALIDITY_TYPE::NEUTRAL)
        ) {
            $is_form_field_valid = is_form_field_valid($_SESSION['form_validation'][$field_name]);
            if ($for_input) {
                echo $pre_spacing . ($is_form_field_valid ? 'is-valid' : 'is-invalid');
            } else {
                echo $is_form_field_valid ? '' : $pre_spacing.'text-danger';
            }
        }
    }
}

function clear_form_session(): void
{
    if (isset($_SESSION['form_data'])) {
        unset($_SESSION['form_data']);
    }
    if (isset($_SESSION['form_validation'])) {
        unset($_SESSION['form_validation']);
    }
}


function is_current_route($controller = null): bool
{
    return Router::getRoute()['controller'] == $controller;
}
