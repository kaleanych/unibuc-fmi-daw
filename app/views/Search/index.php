<?php
/** @var $this \wfm\View */
/** @var $items array */
/** @var $total int */
/** @var $pagination object */
?>
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb bg-light p-2">
            <li class="breadcrumb-item"><a href="<?= base_url() ?>"><i class="fas fa-home"></i></a></li>
            <li class="breadcrumb-item"><?php __('search_index_search_title'); ?></li>
        </ol>
    </nav>
</div>

<div class="container py-3">
    <div class="row">

        <div class="col-lg-12 category-content">
            <h1 class="section-title"><?php __('search_index_search_title'); ?></h1>

            <h4><?php echo ___('search_index_search_query') . h($s); ?></h4>
            <hr>
            <?php if ($pagination->countPages > 1 || count($items) > 1): ?>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="input-group mb-3">
                            <label class="input-group-text" for="input-sort"><?php __('search_index_sort'); ?>:</label>
                            <select class="form-select" id="input-sort">
                                <option selected="" disabled><?php __('search_index_sort_by_default'); ?></option>

                                <option value="sort=title_asc<?=(@$s ? '&s=' . $s : '');?>" <?php if (isset($_GET['sort']) && $_GET['sort'] == 'title_asc') echo 'selected' ?>><?php __('search_index_sort_title_asc'); ?></option>

                                <option value="sort=title_desc<?=(@$s ? '&s=' . $s : '');?>" <?php if (isset($_GET['sort']) && $_GET['sort'] == 'title_desc') echo 'selected' ?>><?php __('search_index_sort_title_desc'); ?></option>

                                <option value="sort=author_asc<?=(@$s ? '&s=' . $s : '');?>" <?php if (isset($_GET['sort']) && $_GET['sort'] == 'author_asc') echo 'selected' ?>><?php __('search_index_sort_author_asc'); ?></option>
                                <option value="sort=author_desc<?=(@$s ? '&s=' . $s : '');?>" <?php if (isset($_GET['sort']) && $_GET['sort'] == 'author_desc') echo 'selected' ?>><?php __('search_index_sort_author_desc'); ?></option>

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
                    <p><?php __('search_index_not_found'); ?></p>
                <?php endif; ?>
            </div>
        </div>

    </div>
</div>
