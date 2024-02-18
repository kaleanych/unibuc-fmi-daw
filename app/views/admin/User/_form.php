<!-- Default box -->
<div class="card">

    <div class="card-body">

        <form action="" method="post" class="row">

            <div class="col-md-6">
                <div class="form-group">
                    <label class="required" for="email">Email</label>
                    <input type="email" name="email" class="form-control" id="email" value="<?= h($user['email']) ?>">
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" class="form-control" id="password">
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label class="required" for="name">Name</label>
                    <input type="text" name="name" class="form-control" id="name" value="<?= h($user['name']) ?>">
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <label class="required" for="address">Address</label>
                    <input type="text" name="address" class="form-control" id="address" value="<?= h($user['address']) ?>">
                </div>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label class="required" for="role">Role</label>
                    <select name="role" id="role" class="form-control">
                        <option value="user" <?php if ($user['role'] == 'user') echo 'selected' ?>>User</option>
                        <option value="librarian" <?php if ($user['role'] == 'librarian') echo 'selected' ?>>Librarian</option>
                        <option value="admin" <?php if ($user['role'] == 'admin') echo 'selected' ?>>Administrator</option>
                    </select>
                </div>
            </div>

            <div class="col">
                <button type="submit" class="btn btn-primary" name="submit" value="save">Save</button>
                <button type="submit" class="btn btn-warning" name="submit" value="save_add">Save & Add</button>
            </div>

        </form>
        <?php clear_form_session(); ?>
    </div>


</div>
<!-- /.card -->
