<?php

/*
 * Die index.php Datei ist der Einstiegspunkt des MVC. Hier werden zuerst alle
 * vom Framework benötigten Klassen geladen und danach wird die Anfrage dem
 * Dispatcher weitergegeben.
 *
 * Wie in der .htaccess Datei beschrieben, werden alle Anfragen, welche nicht
 * auf eine bestehende Datei zeigen hierhin umgeleitet.
 */

require_once '../lib/Dispatcher.php';
require_once '../lib/View.php';
require_once '../lib/SessionExpiryHandler.php';
session_start();
!defined('TIME') && define('TIME', $_SERVER['REQUEST_TIME']);
$dispatcher = new Dispatcher();
$dispatcher->dispatch();
$sessionHandler = new SessionExpiryHandler();
$sessionHandler->checkSession();

