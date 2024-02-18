<?php


namespace app\models;


use RedBeanPHP\R;

class Page extends AppModel
{

    public function getPage($slug, $lang): array
    {
        return R::getRow("SELECT p.*, pd.* FROM pages p JOIN page_descriptions pd on p.id = pd.page_id WHERE p.slug = ? AND pd.language_id = ?", [$slug, $lang['id']]);
    }

}