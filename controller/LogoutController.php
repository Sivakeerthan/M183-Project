<?php
require_once '../repository/UserRepository.php';
/**
 * Created by IntelliJ IDEA.
 * User: vmadmin
 * Date: 17.09.2018
 * Time: 14:20
 */
class LogoutController
{
    public function index(){
            $userRepository = new UserRepository();
            $user = $userRepository->readById($_SESSION['uid']);
            $myFile = fopen("../data/Logfile.txt","a") or die("Unable to open file!");
            $today = date("M,d,Y h:i:s A");
            $txt = $user->uname ." hat sich ausgeloggt! Uhrzeit: ".$today ."\r\n";
            fwrite($myFile,$txt);
            fclose($myFile);
            session_start();
            session_destroy();
            session_unset($_SESSION);
            header('Location: /');

    }

}