<?php

use wfm\Router;

Router::add('^admin/?$', ['controller' => 'Main', 'action' => 'index', 'admin_prefix' => 'admin']);
Router::add('^admin/(?P<controller>[a-z-]+)/?(?P<action>[a-z-]+)?$', ['admin_prefix' => 'admin']);

Router::add('^(?P<lang>[a-z]+)?/?item/(?P<slug>[a-z0-9-]+)/?$', ['controller' => 'Item', 'action' => 'view']);
Router::add('^(?P<lang>[a-z]+)?/?category/(?P<slug>[a-z0-9-]+)/?$', ['controller' => 'Category', 'action' => 'view']);
Router::add('^(?P<lang>[a-z]+)?/?search/?$', ['controller' => 'Search', 'action' => 'index']);
Router::add('^(?P<lang>[a-z]+)?/?wishlist/?$', ['controller' => 'Wishlist', 'action' => 'index']);
Router::add('^(?P<lang>[a-z]+)?/?page/(?P<slug>[a-z0-9-]+)/?$', ['controller' => 'Page', 'action' => 'view']);

Router::add('^(?P<lang>[a-z]+)?/?authors/?$', ['controller' => 'Author', 'action' => 'index']);
Router::add('^(?P<lang>[a-z]+)?/?author/(?P<slug>[a-z0-9-]+)/?$', ['controller' => 'Author', 'action' => 'view']);

Router::add('^(?P<lang>[a-z]+)?/?$', ['controller' => 'Main', 'action' => 'index']);

Router::add('^(?P<controller>[a-z-]+)/(?P<action>[a-z-_0-9]+)/?$');
Router::add('^(?P<lang>[a-z]+)/(?P<controller>[a-z-]+)/(?P<action>[a-z-_0-9]+)/?$');
