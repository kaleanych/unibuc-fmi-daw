<?php

namespace app\models;


use RedBeanPHP\R;

class Author extends AppModel
{
    public static function getFeatured($lang, $limit): array
    {
        return R::getAll(self::addCountBooksSQL("SELECT a.* , ad.*, %s FROM authors a JOIN author_descriptions ad on a.id = ad.author_id %s WHERE a.status = 1 AND a.featured = 1 AND ad.language_id = ? ORDER BY RAND() LIMIT $limit"), [$lang['id']]);
    }

    private static function addCountBooksSQL($fsql): string
    {
        return sprintf($fsql, "IFNULL(b.count_books, 0) AS count_books", "LEFT JOIN (SELECT author_id, COUNT(id) as count_books FROM items GROUP BY author_id) b ON b.author_id=ad.author_id");
    }

    public function getAuthors($lang, $start, $per_page, $sort = null): array
    {
        $sort_values = [
            'name_asc' => 'ORDER BY author_name ASC',
            'name_desc' => 'ORDER BY author_name DESC',
            'count_books_asc' => 'ORDER BY count_books ASC, author_name ASC',
            'count_books_desc' => 'ORDER BY count_books DESC, author_name ASC',
        ];
        $order_by = '';
        if (isset($_GET['sort']) && array_key_exists($_GET['sort'], $sort_values)) {
            $sort = $_GET['sort'];
        }
        if ($sort) {
            $order_by = $sort_values[$sort];
        }

        return R::getAll(self::addCountBooksSQL("SELECT a.*, ad.name AS author_name, %s FROM authors a JOIN author_descriptions ad on a.id = ad.author_id %s WHERE ad.language_id = ? AND a.status = 1 $order_by LIMIT $start, $per_page"), [$lang['id']]);
    }

    public function getIds($id): string
    {
        return $id;
    }

    public function getItems($ids, $lang, $start, $per_page): array
    {
        $sort_values = [
            'title_asc' => 'ORDER BY title ASC',
            'title_desc' => 'ORDER BY title DESC',
//            'price_asc' => 'ORDER BY price ASC',
//            'price_desc' => 'ORDER BY price DESC',
        ];
        $order_by = '';
        if (isset($_GET['sort']) && array_key_exists($_GET['sort'], $sort_values)) {
            $order_by = $sort_values[$_GET['sort']];
        }
        return R::getAll(Item::addAuthorSQL("SELECT i.*, id.*, %s FROM items i JOIN item_descriptions id on i.id = id.item_id %s WHERE i.status = 1 AND i.author_id IN ($ids) AND id.language_id = ? $order_by LIMIT $start, $per_page"), [$lang['id'], $lang['id']]);
    }

    public function countItems($ids): int
    {
        return R::count('items', "author_id IN ($ids) AND status = 1");
    }

    public function getAuthor($slug, $lang): array
    {
        return R::getRow("SELECT a.*, ad.* FROM authors a JOIN author_descriptions ad on a.id = ad.author_id WHERE a.slug = ? AND ad.language_id = ? AND a.status=1", [$slug, $lang['id']]);
    }
}