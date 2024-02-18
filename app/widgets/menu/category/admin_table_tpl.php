<?php
$is_parent = isset($category['children']);
if (!$is_parent) {
    $delete = '<a class="btn btn-danger btn-sm delete" href="' . ADMIN_URL . '/category/delete?id=' . $id . '"><i class="far fa-trash-alt"></i></a>';
} else {
    $delete = '';
}

$edit = '<a class="btn btn-info btn-sm" href="' . ADMIN_URL . '/category/edit?id=' . $id . '"><i class="fas fa-pencil-alt"></i></a>';
?>
<tr>
    <td>
        <a href="<?= ADMIN_URL ?>/category/edit/?id=<?= $id ?>" style="padding-left: <?= strlen($tab)*3 ?>px"><?= $tab . $category['title'] ?></a>
    </td>
    <td style="width:50px"><?= $edit ?></td>
    <td style="width:50px"><?= $delete ?></td>
</tr>
<?php if ($is_parent): ?>
    <?= $this->getMenuHtml($category['children'], $tab . '&#8211; ');?>
<?php endif; ?>
