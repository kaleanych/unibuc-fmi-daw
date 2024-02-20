<?php
/** @var $this \wfm\View */
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
            <h3 class="section-title"><?php __('tpl_authors') ?></h3>

            <?php if ($pagination->countPages > 1 || count($authors) > 1): ?>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="input-group mb-3">
                            <label class="input-group-text" for="input-sort"><?php __('author_index_sort'); ?>:</label>
                            <select class="form-select" id="input-sort">
                                <option selected="" disabled><?php __('author_index_sort_by_default'); ?></option>

                                <option value="sort=name_asc" <?php if (isset($_GET['sort']) && $_GET['sort'] == 'name_asc') echo 'selected' ?>><?php __('author_index_sort_name_asc'); ?></option>
                                <option value="sort=name_desc" <?php if (isset($_GET['sort']) && $_GET['sort'] == 'name_desc') echo 'selected' ?>><?php __('author_index_sort_name_desc'); ?></option>

                                <option value="sort=count_books_asc" <?php if (isset($_GET['sort']) && $_GET['sort'] == 'count_books_asc') echo 'selected' ?>><?php __('author_index_sort_count_books_asc'); ?></option>
                                <option value="sort=count_books_desc" <?php if (isset($_GET['sort']) && $_GET['sort'] == 'count_books_desc') echo 'selected' ?>><?php __('author_index_sort_count_books_desc'); ?></option>
                            </select>
                        </div>
                    </div>
                </div>
            <?php endif; ?>

            <div class="row">
                <?php if (!empty($authors)): ?>
                    <?php $this->getPart('parts/authors_loop', compact('authors')); ?>

                    <div class="row">
                        <div class="col-md-12">
                            <p>
                                <?= count($authors) ?>
                                <?php __('tpl_total_pagination'); ?>
                                <?= $total ?>
                            </p>
                            <?php if ($pagination->countPages > 1): ?>
                                <?= $pagination ?>
                            <?php endif; ?>
                        </div>
                    </div>

                <?php else: ?>
                    <p><?php __('author_index_no_items'); ?></p>
                <?php endif; ?>
            </div>
        </div>

    </div>
</div>
