<?php
/**
 * Created by IntelliJ IDEA.
 * User: vmadmin
 * Date: 16.08.2018
 * Time: 09:55
 */
require_once '../repository/UserRepository.php';
require_once '../repository/MuChoRepository.php';
require_once '../repository/FiPaRepository.php';
require_once '../repository/FiBlRepository.php';

class ChoiceController
{
    private $err = array();
    private $commands = ['dir','hostname','whoami'];
    public function index()
    {
        $view = new View('choice_index');
        $view->title = 'Choice';
        $view->heading = 'Choice';
        $userRepository = new UserRepository();
        if (!isset($_SESSION)) {
            session_start();
        }
        if (isset($_SESSION['uid'])) {
            $user = $userRepository->readById($_SESSION['uid']);
            $view->uname = $user->uname;
            $view->options = $this->commands;

            if(isset($_GET['name'])){
                $view->output =  $this->syscommand(htmlspecialchars($_GET['name']),$user->uname);
            }
        }
        $_SESSION['points'] = 0;
        $view->display();
    }
    private function getClientIP(){
        $ip = "unknown";
        if(!empty($_SERVER['HTTP_CLIENT_IP'])){
            //ip from share internet
            $ip = $_SERVER['HTTP_CLIENT_IP'];
        }elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
            //ip pass from proxy
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        }else{
            $ip = $_SERVER['REMOTE_ADDR'];
        }
        return $ip;
    }
    private function syscommand($sysopt){
        $out = "";
        foreach ($this->commands as $cmd){
            if($sysopt == $cmd){
                $out = shell_exec($cmd);
                break;
            }
        }
//        switch ($sysopt){
//            case 'dir': $out= shell_exec('dir');
//            break;
//            case 'hostname': $out = shell_exec('hostname');
//            break;
//            case 'whoami': $out = shell_exec('whoami');
//            break;
//        }
        return $out;
    }

    public function doError($error){
        $this->err = array_fill(0,1,$error);
       if(!isset($_SESSION)) {session_start();}
        $_SESSION['err'] = $this->err;
    }

}