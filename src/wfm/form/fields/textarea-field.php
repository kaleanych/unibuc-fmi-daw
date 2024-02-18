<textarea name="<?= $field->getName(); ?>"
          class="form-control editor<?= display_form_field_valid($field->getName()) ?>"
          id="<?=$field->getId();?>" rows="<?=($attrs['rows'] ?? 3);?>" style="<?=($attrs['style'] ?? '');?>"
          placeholder="<?= $field->getLabel(); ?>"><?= $field->getValue() ?></textarea>