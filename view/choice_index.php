<?php if(!isset($_SESSION)){session_start();} if(isset($_SESSION['uid'])):?>
<!--last bit of profile-->
<br>
<div class="container">
    <?php endif;?>
    <?php if(!isset($_SESSION['uid'])):?>
        <h1>Access Denied!</h1>
<?php endif;?>

