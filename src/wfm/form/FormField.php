<?php


namespace wfm\form;


class FormField
{

    private ?string $name = null;
    private ?string $id = null;
    private ?string $label = null;

    private bool $required = false;

    private ?string $value = null;

    private string $tpl_path_prefix = CORE . '/form/fields/';


    public function __construct($name = null, $value = null)
    {
        $this->name = $name;
        $this->value = $value;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(?string $name): void
    {
        $this->name = $name;
    }

    public function getId(): ?string
    {
        return $this->id;
    }

    public function setId(?string $id): void
    {
        $this->id = $id;
    }

    public function getLabel(): ?string
    {
        return $this->label;
    }

    public function setLabel(?string $label): void
    {
        $this->label = $label;
    }

    public function getValid(): VALID_TYPE
    {
        return $this->valid;
    }

    public function setValid(VALID_TYPE $valid): void
    {
        $this->valid = $valid;
    }

    public function getMessage(): string
    {
        return $this->message;
    }

    public function setMessage(?string $message): void
    {
        $this->message = $message;
    }

    public function getValue(): ?string
    {
        return $this->value;
    }

    public function setValue($value): void
    {
        $this->value = $value;
    }

    public function isRequired(): bool
    {
        return $this->required;
    }

    public function setRequired(bool $required): void
    {
        $this->required = $required;
    }

    public static function build($name, $id, $value = null, $label = null, $required = false)
    {
        $form_field = new FormField($name, $value ?? get_field_value($name));
        $form_field->setId($id);
        $form_field->setLabel($label);
        $form_field->setRequired($required);

        return $form_field;

    }

    public static function buildI18N($fields, $label = null, $required = false, $value = null)
    {
        $parent_name = $fields[0];
        $name = $parent_name;
        $id = $parent_name;
        foreach ($fields as $key => $field) {
            if ($key == 0) continue;
            $name .= "[$field]";
            $id .= "_$field";
        }
        return FormField::build(
            $name,
            $id,
            $value ?? get_field_array_value($fields[0], $fields[1], $fields[2]),
            $label,
            $required
        );
    }

    public function renderAsField($tpl, $attrs = []): string
    {
        ob_start();
        extract(['field' => $this], EXTR_SKIP);

        include $this->tpl_path_prefix . "{$tpl}.php";
        return ob_get_clean();
    }

    public function renderAsTextField($floating = false, $attrs = []): string
    {
        return $this->renderAsField('text' . ($floating ? '-floating' : ''), $attrs);
    }

    public function renderAsTextareaField($floating = false, $attrs = []): string
    {
        return $this->renderAsField('textarea' . ($floating ? '-floating' : ''), $attrs);
    }
}