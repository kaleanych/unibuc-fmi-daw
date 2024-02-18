<?php
$object_id = get('id');
?>

<option value="<?= $id ?>" <?php if ($id == $value) echo ' selected'; ?> <?php if ($for_model == 'Category' && $object_id == $id) echo ' disabled'; ?>>
    <?= $tab . $category['title'] ?>
</option>
<?php if(isset($category['children']) && ($for_model != 'Category' || $object_id != $id)): ?>
    <?= $this->getMenuHtml($category['children'], '&nbsp;' . $tab. '- ') ?>
<?php endif; ?>
