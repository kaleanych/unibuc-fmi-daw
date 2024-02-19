<li class="px-1 nav-item <?php if (isset($category['children'])) echo 'dropdown' ?>">
    <a class="py-1 nav-link <?php if (isset($category['children'])) echo 'dropdown-toggle' ?>" href="category/<?= $category['slug'] ?>" <?php if (0 && isset($category['children'])) echo 'data-bs-toggle="dropdown" aria-expanded="false"' ?>><?= $category['title'] ?></a>
    <?php if (isset($category['children'])): ?>
        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <?= $this->getMenuHtml($category['children']);?>
        </ul>
    <?php endif; ?>
</li>
