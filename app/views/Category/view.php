<?php
/** @var $this \wfm\View */
/** @var $category array */
/** @var $items array */
/** @var $total int */
/** @var $pagination object */
/** @var $breadcrumbs string */
?>
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb bg-light p-2">
            <?= $breadcrumbs ?>
        </ol>
    </nav>
</div>

<div class="container py-3">
    <div class="row">

        <div class="col-lg-12 category-content">
            <h3 class="section-title"><?= $category['title'] ?></h3>

            <?php if (!empty($category['content'])): ?>
                <div class="category-desc">
                    <?= $category['content'] ?>
                </div>
                <hr>
            <?php endif; ?>

            <?php if ($pagination->countPages > 1 || count($items) > 1): ?>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="input-group mb-3">
                            <label class="input-group-text" for="input-sort"><?php __('category_view_sort'); ?>:</label>
                            <select class="form-select" id="input-sort">
                                <option selected="" disabled><?php __('category_view_sort_by_default'); ?></option>

                                <option value="sort=title_asc" <?php if (isset($_GET['sort']) && $_GET['sort'] == 'title_asc') echo 'selected' ?>><?php __('category_view_sort_title_asc'); ?></option>

                                <option value="sort=title_desc" <?php if (isset($_GET['sort']) && $_GET['sort'] == 'title_desc') echo 'selected' ?>><?php __('category_view_sort_title_desc'); ?></option>
                                <?php if (0): ?>
                                    <option value="sort=price_asc" <?php if (isset($_GET['sort']) && $_GET['sort'] == 'price_asc') echo 'selected' ?>><?php __('category_view_sort_price_asc'); ?></option>

                                    <option value="sort=price_desc" <?php if (isset($_GET['sort']) && $_GET['sort'] == 'price_desc') echo 'selected' ?>><?php __('category_view_sort_price_desc'); ?></option>
                                <?php endif; ?>
                            </select>
                        </div>
                    </div>
                </div>
            <?php endif; ?>

            <div class="row">
                <?php if (!empty($items)): ?>
                    <?php $this->getPart('parts/items_loop', compact('items')); ?>

                    <div class="row">
                        <div class="col-md-12">
                            <p>
                                <?= count($items) ?>
                                <?php __('tpl_total_pagination'); ?>
                                <?= $total ?>
                            </p>
                            <?php if ($pagination->countPages > 1): ?>
                                <?= $pagination ?>
                            <?php endif; ?>
                        </div>
                    </div>

                <?php else: ?>
                    <p><?php __('category_view_no_items'); ?></p>
                <?php endif; ?>
            </div>
        </div>

    </div>
</div>
