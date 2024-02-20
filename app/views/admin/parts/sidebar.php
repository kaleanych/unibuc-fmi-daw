<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="<?= SITE_URL ?>" class="brand-link" target="_blank">
        <img src="<?= SITE_URL ?>/adminlte/logo.png" alt="LiBRY" class="brand-image" style="opacity: .8">
        <span class="brand-text font-weight-light">LiBRY</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="<?= SITE_URL ?>/adminlte/dist/img/user2-160x160.jpg" class="img-circle elevation-2"
                     alt="User Image">
            </div>
            <div class="info">
                <a href="<?= ADMIN_URL ?>/user/edit?id=<?= $_SESSION['user']['id'] ?>"
                   class="d-block"><?= h($_SESSION['user']['name']); ?></a>
                <a href="<?= ADMIN_URL ?>/user/logout" class="d-block">Logout</a>
            </div>
        </div>

        <!-- SidebarSearch Form -->
        <div class="form-inline">
            <div class="input-group" data-widget="sidebar-search">
                <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                    </button>
                </div>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

                <li class="nav-item">
                    <a href="<?= ADMIN_URL ?>" class="nav-link<?=is_current_route('Main') ? ' active' : ''; ?>">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Dashboard</p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="<?= ADMIN_URL ?>/page" class="nav-link<?=is_current_route('Page') ? ' active' : ''; ?>">
                        <i class="nav-icon far fa-file-alt"></i>
                        <p>Pages</p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="<?= ADMIN_URL ?>/category" class="nav-link<?=is_current_route('Category') ? ' active' : ''; ?>">
                        <i class="nav-icon fas fa-th"></i>
                        <p>Categories</p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="<?= ADMIN_URL ?>/author" class="nav-link<?=is_current_route('Author') ? ' active' : ''; ?>">
                        <i class="nav-icon fas fa-users-cog"></i>
                        <p>Authors</p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="<?= ADMIN_URL ?>/item" class="nav-link<?=is_current_route('Item') ? ' active' : ''; ?>">
                        <i class="nav-icon fas fa-barcode"></i>
                        <p>Items</p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="<?= ADMIN_URL ?>/user" class="nav-link<?=is_current_route('User') ? ' active' : ''; ?>">
                        <i class="nav-icon fas fa-user-friends"></i>
                        <p>Users</p>
                    </a>
                </li>

                <?php if (0):?>
                <li class="nav-item">
                    <a href="<?= ADMIN_URL ?>/download" class="nav-link">
                        <i class="nav-icon fas fa-file-upload"></i>
                        <p>Files</p>
                    </a>
                </li>
                <?php endif;?>

                <li class="nav-item">
                    <a href="<?= ADMIN_URL ?>/order" class="nav-link">
                        <i class="nav-icon fas fa-shopping-bag"></i>
                        <p>Orders</p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="<?= ADMIN_URL ?>/cache" class="nav-link">
                        <i class="nav-icon fas fa-database"></i>
                        <p>Cache</p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="<?= ADMIN_URL ?>/slider" class="nav-link">
                        <i class="nav-icon far fa-image"></i>
                        <p>Slider</p>
                    </a>
                </li>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
