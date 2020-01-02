<?php

class FB_Dependencies {

    public static function load_dependencies(){
        require_once $_SERVER['DOCUMENT_ROOT'] . '/vendor/facebook/graph-sdk/src/Facebook/autoload.php';
        require_once "Class-FB_Keys.php";
        require_once "Class-FB_Url_Settup.php";
        require_once "Class-FB_Loop.php";
        require_once "Class-FB_Connect.php";
        require_once "Class-FB_Setting.php";
        include __DIR__ . "/../settings/settings.php";
    }
}