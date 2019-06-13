<?php if (!isset($_SESSION)) {
    session_start();
}
if (isset($_SESSION['uid'])): ?>
<!--last bit of profile-->
<br>
<div class="container">

    <div class="input-field col s12">
        <input id="sysopt" type="text" class="validate">
        <a onclick="callsysopt()" class="btn-floating waves-effect waves-light btn-large">
            <i class="material-icons left">send</i> </a>
        <label for="sysopt">Systemkommando</label>
    </div>
    <div id="output">
        <?php if (isset($output)): ?>
            <pre><?= $output ?></pre>
        <?php endif; ?>

    </div>

    <?php endif; ?>
    <?php if (!isset($_SESSION['uid'])): ?>
        <h1>Access Denied!</h1>
    <?php endif; ?>

</div>


