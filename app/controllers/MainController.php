<?php

namespace app\controllers;


use app\models\Main;
use DOMDocument;
use DOMXPath;
use RedBeanPHP\R;
use wfm\App;
use wfm\Cache;


/** @property Main $model */
class MainController extends AppController
{
    public function indexAction(): void
    {
        $lang = App::$app->getProperty('language');
        $slides = R::findAll('slider');

        $items = $this->model->getHits($lang, 6);

        $this->set(compact('slides', 'items'));
        $this->setMeta(___('main_index_meta_title'), ___('main_index_meta_description'), ___('main_index_meta_keywords'));
    }

    public function top100Action(): void
    {
        $cache = Cache::getInstance();
        $top = $cache->get("top_goodreads");

        if (!$top) {

            $base_site = 'https://www.goodreads.com';
            $url = $base_site . "/list/show/9440.100_Best_Books_of_All_Time_The_World_Library_List";
            $ch = curl_init();

            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

            $html = curl_exec($ch);

            curl_close($ch);
            libxml_use_internal_errors(true);

            $dom = new DOMDocument();

            libxml_clear_errors();


            $dom->loadHTML($html);
            $xpath = new DOMXPath($dom);

            $results = $xpath->query("//div[@id='all_votes']/table/tr[@itemscope]");

            $top = [];
            if ($results->length > 0) {
                foreach ($results as $row) {
                    $rank = $xpath->query("./td[@class='number']", $row)->item(0);
                    $img = $xpath->query(".//img[@itemprop='image']", $row)->item(0);
                    $url = $xpath->query(".//a[@itemprop='url'][@class='bookTitle']", $row)->item(0);
                    $name = $xpath->query(".//span[@itemprop='name']", $row)->item(0);
                    $author = $xpath->query(".//span[@itemprop='author']//span[@itemprop='name']", $row)->item(0);
                    $author_url = $xpath->query(".//span[@itemprop='author']//a[@itemprop='url']", $row)->item(0);
                    $rating = $xpath->query(".//span[@class='minirating']", $row)->item(0);
                    preg_match("/(\d+\.\d+)/", $rating->nodeValue, $matches);
                    $top[] = [
                        'rank' => $rank->nodeValue,
                        'img' => $img->getAttribute('src'),
                        'url' => $base_site . $url->getAttribute('href'),
                        'name' => $name->nodeValue,
                        'author' => $author->nodeValue,
                        'author_url' => $author_url->getAttribute('href'),
                        'rating' => $matches[1],
                    ];
                }
            }

            $cache->set("top_goodreads", $top, 3600);
        }

        $this->set(compact('top'));
    }

    public function error404Action(): void
    {

    }

}