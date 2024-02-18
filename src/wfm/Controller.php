<?php


namespace wfm;


abstract class Controller
{

    public array $data = [];
    public array $meta = ['title' => '', 'keywords' => '', 'description' => ''];
    public false|string $layout = '';
    public string $view = '';
    public object $model;


    public function __construct(public $route = [])
    {

    }

    public function getModel(): void
    {
        $model = 'app\models\\' . $this->route['admin_prefix'] . $this->route['controller'];
        if (class_exists($model)) {
            $this->model = new $model();
        }
    }

    /**
     * @throws \Exception
     */
    public function getView(): void
    {
        $this->view = $this->view ?: $this->route['action'];
        (new View($this->route, $this->layout, $this->view, $this->meta))->render($this->data);
    }

    public function set($data): void
    {
        $this->data = $data;
    }

    public function setMeta($title = '', $description = '', $keywords = '')
    {
       $this->meta = [
           'title' => $title,
           'description' => $description,
           'keywords' => $keywords,
       ];
    }

    public function isAjax(): bool
    {
        return isset($_SERVER['HTTP_X_REQUESTED_WITH']) && $_SERVER['HTTP_X_REQUESTED_WITH'] === 'XMLHttpRequest';
    }

    public function loadView($view, $vars = [])
    {
        extract($vars);
        $prefix = str_replace('\\', '/', $this->route['admin_prefix']);
        require APP . "/views/{$prefix}{$this->route['controller']}/{$view}.php";
        die;
    }

    public function error404($folder = 'Error', $view = 404, $response = 404): void
    {
        http_response_code($response);
        $this->setMeta(___('tpl_error_404'));
        $this->route['controller'] = $folder;
        $this->view = $view;
    }
}