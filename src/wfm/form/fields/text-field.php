<input
    type="text" name="<?= $field->getName(); ?>"
    class="form-control<?= display_form_field_valid($field->getName()) ?>"
    id="<?= $field->getId(); ?>"
    placeholder="<?= $field->getLabel(); ?>"
    value="<?= $field->getValue() ?>"
    <?php echo isset($attrs['disabled']) && $attrs['disabled'] ? 'disabled' : '';?>
    <?php echo isset($attrs['readonly']) && $attrs['readonly'] ? 'readonly' : '';?>
>