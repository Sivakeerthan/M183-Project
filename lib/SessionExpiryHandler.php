<?php
/**
 * Created by IntelliJ IDEA.
 * User: vmadmin
 * Date: 17.06.2019
 * Time: 13:07
 */

class SessionExpiryHandler
{
    private $sess_duration = 1800;
    private $err = array();

    /**
     * SessionHandler constructor.
     */
    public function __construct()
    {
    }
    public function checkSession(){
        if(isset($_SESSION)){
            $this->sessionExpiration();
        }
    }
    private function sessionExpiration(){
        $time = TIME;
        if(isset($_SESSION['LAST_ACTIVITY']) && ($time-$_SESSION['LAST_ACTIVITY'])>$this->sess_duration){
            session_unset();
            session_destroy();
            session_start();
            header("Location: /user/login");
            $this->doError("Sitzung abgelaufen \n Melden Sie sich bitte erneut an!");
        }
        $_SESSION['LAST_ACTIVITY'] = $time;
    }
    public function doError($error){
        $this->err = array_fill(0,1,$error);
        session_start();
        $_SESSION['err'] = $this->err;
    }
}