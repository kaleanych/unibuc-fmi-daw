CREATE TABLE users
(
    id       INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    email    VARCHAR(50)                         NOT NULL,
    password VARCHAR(255)                        NOT NULL,
    name     VARCHAR(255)                        NOT NULL,
    address  VARCHAR(255)                        NOT NULL,
    role     enum ('user', 'librarian', 'admin') NOT NULL DEFAULT 'user',
    status   TINYINT(4)                          NOT NULL DEFAULT 0,
    hash     VARCHAR(255),
    UNIQUE (email)
);

CREATE TABLE languages
(
    id    INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code  VARCHAR(4)          NOT NULL,
    title VARCHAR(20)         NOT NULL,
    base  TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    UNIQUE (code)
);

CREATE TABLE authors
(
    id   INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE author_descriptions
(
    author_id   INT UNSIGNED NOT NULL,
    language_id INT UNSIGNED NOT NULL,
    name        VARCHAR(100) NOT NULL,
    bio         TEXT,
    PRIMARY KEY (author_id, language_id),
    FOREIGN KEY (author_id) REFERENCES authors (id),
    FOREIGN KEY (language_id) REFERENCES languages (id)
);

CREATE TABLE categories
(
    id        INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    parent_id INT UNSIGNED,
    slug      VARCHAR(255) DEFAULT NULL,
    INDEX idx_slug (slug),
    FOREIGN KEY (parent_id) REFERENCES categories (id)
);

CREATE TABLE category_descriptions
(
    category_id INT UNSIGNED NOT NULL,
    language_id INT UNSIGNED NOT NULL,
    title       VARCHAR(255) NOT NULL,
    description VARCHAR(255) DEFAULT NULL,
    keywords    VARCHAR(255) DEFAULT NULL,
    content     TEXT,
    PRIMARY KEY (category_id, language_id),
    FOREIGN KEY (category_id) REFERENCES categories (id),
    FOREIGN KEY (language_id) REFERENCES languages (id)
);

CREATE TABLE downloads
(
    id            INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    filename      VARCHAR(255) NOT NULL,
    original_name VARCHAR(255) NOT NULL
);

CREATE TABLE download_descriptions
(
    download_id INT UNSIGNED NOT NULL,
    language_id INT UNSIGNED NOT NULL,
    name        VARCHAR(255) NOT NULL,
    PRIMARY KEY (download_id, language_id),
    FOREIGN KEY (download_id) REFERENCES downloads (id),
    FOREIGN KEY (language_id) REFERENCES languages (id)
);


CREATE TABLE items
(
    id          INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    author_id   INT UNSIGNED,
    category_id INT UNSIGNED,
    isbn        VARCHAR(13)           DEFAULT NULL,
    slug        VARCHAR(255)          DEFAULT NULL,
    type        ENUM ('book', 'article', 'CD', 'other'),
    price       DOUBLE       NOT NULL DEFAULT 0,
    old_price   DOUBLE       NOT NULL DEFAULT 0,
    status      TINYINT(4)   NOT NULL DEFAULT 1,
    hit         TINYINT(4)   NOT NULL DEFAULT 0,
    img         VARCHAR(255) NOT NULL DEFAULT 'uploads/no_image.jpg',
    is_download TINYINT(4)   NOT NULL DEFAULT 0,
    qty         INT UNSIGNED NOT NULL,

    created_at  TIMESTAMP             DEFAULT CURRENT_TIMESTAMP,
    created_by  INT,
    updated_at  TIMESTAMP             DEFAULT CURRENT_TIMESTAMP,
    updated_by  INT,

    INDEX idx_slug (slug),
    FOREIGN KEY (author_id) REFERENCES authors (id),
    FOREIGN KEY (category_id) REFERENCES categories (id)
);


CREATE TABLE item_descriptions
(
    item_id     INT UNSIGNED NOT NULL,
    language_id INT UNSIGNED NOT NULL,
    title       VARCHAR(255) NOT NULL,
    content     TEXT,
    excerpt     VARCHAR(255),
    keywords    VARCHAR(255) DEFAULT NULL,
    description VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (item_id, language_id),
    FOREIGN KEY (item_id) REFERENCES items (id),
    FOREIGN KEY (language_id) REFERENCES languages (id)
);

CREATE TABLE item_gallery
(
    id      INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    item_id INT UNSIGNED NOT NULL,
    img     VARCHAR(255) NOT NULL,
    FOREIGN KEY (item_id) REFERENCES items (id)
);

CREATE TABLE item_downloads
(
    item_id     INT UNSIGNED NOT NULL,
    download_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (item_id, download_id),
    FOREIGN KEY (item_id) REFERENCES items (id),
    FOREIGN KEY (download_id) REFERENCES downloads (id)
);

CREATE TABLE slider
(
    id  INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    img VARCHAR(255) NOT NULL
);

CREATE TABLE orders
(
    id         INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id    INT UNSIGNED,
    status     TINYINT(4) DEFAULT 0,
    note       TEXT,
    created_at TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    total      DOUBLE,
    qty        INT UNSIGNED        DEFAULT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE order_items
(
    id          INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    order_id    INT UNSIGNED NOT NULL,
    item_id     INT UNSIGNED NOT NULL,
    borrow_date TIMESTAMP,
    return_date TIMESTAMP,
    returned    TINYINT(1),
    returned_at TIMESTAMP,
    title       VARCHAR(255),
    slug        VARCHAR(255),
    qty         INT UNSIGNED,
    price       DOUBLE,
    sum         DOUBLE,
    FOREIGN KEY (order_id) REFERENCES orders (id),
    FOREIGN KEY (item_id) REFERENCES items (id)
);

CREATE TABLE order_downloads
(
    id          INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    order_id    INT UNSIGNED        NOT NULL,
    user_id     INT UNSIGNED        NOT NULL,
    item_id     INT UNSIGNED        NOT NULL,
    download_id INT UNSIGNED        NOT NULL,
    status      tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
    FOREIGN KEY (order_id) REFERENCES orders (id),
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (item_id) REFERENCES items (id),
    FOREIGN KEY (download_id) REFERENCES downloads (id)
);

CREATE TABLE payments
(
    id       INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    order_id INT UNSIGNED,
    method   VARCHAR(50),
    date     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES orders (id)
);

CREATE TABLE pages
(
    id   INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    slug VARCHAR(255) DEFAULT NULL,
    INDEX idx_slug (slug)
);

CREATE TABLE page_descriptions
(
    page_id     INT UNSIGNED NOT NULL,
    language_id INT UNSIGNED NOT NULL,
    title       VARCHAR(255) NOT NULL,
    content     TEXT         NOT NULL,
    keywords    VARCHAR(255) DEFAULT NULL,
    description VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (page_id, language_id),
    FOREIGN KEY (page_id) REFERENCES pages (id),
    FOREIGN KEY (language_id) REFERENCES languages (id)
);


CREATE TABLE contact
(
    id         INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    email      VARCHAR(50)  NOT NULL,
    title      VARCHAR(255) NOT NULL,
    message    TEXT         NOT NULL,
    user_id    INT UNSIGNED,
    created_at TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE analytics
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    ip_address VARCHAR(50),
    uri        TEXT,
    visit_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_id    INT UNSIGNED,
    FOREIGN KEY (user_id) REFERENCES users (id)
);