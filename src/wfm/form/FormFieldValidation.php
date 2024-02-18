<?php


namespace wfm\form;


enum VALIDITY_TYPE: int
{
    case INVALID = -1;
    case NEUTRAL = 0;
    case VALID = 1;
}


class FormFieldValidation
{

    private ?string $name = null;
    private VALIDITY_TYPE $validity;
    private ?string $message = null;


    public function __construct($name = null, $validity = VALIDITY_TYPE::NEUTRAL, $message = null)
    {
        $this->name = $name;
        $this->validity = $validity;
        $this->message = $message;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(?string $name): void
    {
        $this->name = $name;
    }

    public function getValidity(): VALIDITY_TYPE
    {
        return $this->validity;
    }

    public function setValidity(VALIDITY_TYPE $validity): void
    {
        $this->validity = $validity;
    }

    public function getMessage(): string
    {
        return $this->message;
    }

    public function setMessage(?string $message): void
    {
        $this->message = $message;
    }
}