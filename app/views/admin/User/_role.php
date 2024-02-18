<?php
switch ($user['role']) {
    case 'librarian':
        echo 'Librarian';
        break;
    case 'admin':
        echo 'Administrator';
        break;
    case 'user':
        echo 'User';
        break;
    default:
        break;
}
?>