<!DOCTYPE html>
<html dir="ltr" lang="en-US"><head>
    <meta charset="utf-8">
    <title>Banner Register Page</title>
    <meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = no, width = device-width">

    <!--[if lt IE 9]><script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <link rel="stylesheet" href="style.css" media="screen">
    <!--[if lte IE 7]><link rel="stylesheet" href="style.ie7.css" media="screen" /><![endif]-->
    <link rel="stylesheet" href="style.responsive.css" media="all">


    <script src="jquery.js"></script>
    <script src="script.js"></script>
    <script src="script.responsive.js"></script>


</head>
<body>
<div id="art-main">
<header class="art-header">


    <div class="art-shapes">
<div class="art-object1142538220" data-left="0.38%"></div>

            </div>
<h1 class="art-headline" data-left="22.54%">
    <a href="http://www.google.com" '_parent'>BANNER_ACCESS_CONTROL</a>
</h1>




                        
                    
</header>
<nav class="art-nav">
    <div class="art-nav-inner">
    <ul class="art-hmenu"><li><a href="new-page.php" class="active">Login</a></li>
                          <li><a href="register.php" class="active">Register</a></li>
    </ul> 
        </div>
    </nav>
<div class="art-sheet clearfix">
            <div class="art-layout-wrapper">
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <div class="art-layout-cell art-content">
                            <article class="art-post art-article">
                                <h3 class="art-postheader">Please enter the relevant information below to sign up for Banner Access Contorl</h3>
                                                
                <div class="art-postcontent art-postcontent-0 clearfix"><p><br></p></div>
<div class="art-postcontent art-postcontent-0 clearfix"><div class="art-content-layout">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-0" style="width: 100%" >
        <div class="art-blockheader" style="margin-right: auto; margin-left: auto; background-repeat-x: no-repeat; background-repeat-y: no-repeat;">
            <h3 class="t" id="blockheader-sidebar1-login-2" contenteditable="true">Register Here!</h3>
        </div>
        <div class="art-blockcontent" style="margin-right: auto; margin-left: auto;">
            <form action="" method="POST" name="Login" id="form-register">
        <fieldset class="input" style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none;">
        <p <br><input type="text" name="staff_id" placeholder="Enter Staff ID" class="inputbox" alt="staff_id" style="margin-right: auto; margin-left: auto; width: 200px;"></p>
        <p <br><input type="text" name="first_name" placeholder="Enter First Name" class="inputbox" alt="first_name" style="margin-right: auto; margin-left: auto; width: 200px;"></p>
        <p <br><input type="text" name="last_name" placeholder="Enter Last Name" class="inputbox" alt="last_name" style="margin-right: auto; margin-left: auto; width: 200px;"></p>
        <p <br><input type="password" name="password" placeholder="Enter Password" class="inputbox" size="18" alt="password" style="margin-right: auto; margin-left: auto; width: 200px;"></p>
        <p><input type="submit" value="Register" name="submit" class="art-button">

<?php

$con=mysql_connect('localhost','root','') or die(mysql_error());
mysql_select_db('user_access') or die("cannot select DB");

If(isset($_REQUEST['submit'])!='')
{
If($_REQUEST['staff_id']=='' || $_REQUEST['first_name']=='' || $_REQUEST['last_name']==''|| $_REQUEST['password']=='')
{
Echo "please fill the empty field.";
}
Else
{
$sql="insert into user(staff_id,first_name,last_name,password) values('".$_REQUEST['staff_id']."', '".$_REQUEST['first_name']."', '".$_REQUEST['last_name']."', '".$_REQUEST['password']."')";
$res=mysql_query($sql);
If($res)
{
Echo "Record successfully inserted! Please click Login in the menu above to access Banner.";
}
Else
{
Echo "There is some problem in inserting record";
}

}
}
?>

        </fieldset></p>
    </form>
</div>

    <div class="clearfix"><div class="image-caption-wrapper" style="width: 50%; float: left">&nbsp; &nbsp;&nbsp;</div>
        <div class="image-caption-wrapper" style="width: 50%; float: left">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
        </div>
    </div>
    </div>
</div>
</div>
                                
                

</article></div>
                    </div>
                </div>
            </div>

    </div>
</div>


<footer class="art-footer">
    <p class="art-page-footer">
        <span id="art-footnote-links">UWI Open Campus Banner</span>
    </p>
</footer>

</div>


</body></html>