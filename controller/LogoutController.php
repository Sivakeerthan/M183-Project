<?php
/**
 * Created by IntelliJ IDEA.
 * User: vmadmin
 * Date: 17.09.2018
 * Time: 14:20
 */
class LogoutController
{
    public function index(){

            session_start();
            session_destroy();
            session_unset($_SESSION);
            header('Location: /');
            $this->doError("Logged out succesfully");
    }

    public function doError($error){
        $this->err = array_fill(0,1,$error);
        session_start();
        $_SESSION['err'] = $this->err;
    }

}