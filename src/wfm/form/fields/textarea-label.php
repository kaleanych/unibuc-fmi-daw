<label
        class="<?= ($field->isRequired() ? 'required' : ''); ?><?= display_form_field_valid($field->getName(), false) ?>"
        for="<?= $field->getId(); ?>"
><?= $field->getLabel(); ?></label>
