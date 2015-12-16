<!DOCTYPE html>
<html dir="ltr" lang="en-US"><head>
    <meta charset="utf-8">
    <title>Banner Login Page</title>
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
                                <h3 class="art-postheader">Please enter username and password below to login</h3>
                                                
                <div class="art-postcontent art-postcontent-0 clearfix"><p><br></p></div>
<div class="art-postcontent art-postcontent-0 clearfix"><div class="art-content-layout">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-0" style="width: 100%" >
        <div class="art-blockheader" style="margin-right: auto; margin-left: auto; background-repeat-x: no-repeat; background-repeat-y: no-repeat;">
            <h3 class="t" id="blockheader-sidebar1-login-2" contenteditable="true">Login Here!</h3>
        </div>
        <div class="art-blockcontent" style="margin-right: auto; margin-left: auto;">
            <form action="" method="POST" name="Login" id="form-login">
        <fieldset class="input" style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none;">
        <p <br><input type="text" name="staff_id" placeholder="Enter Staff ID" class="inputbox" alt="username" style="margin-right: auto; margin-left: auto; width: 200px;"></p>
        <p <br><input type="password" name="password" placeholder="Enter Password" class="inputbox" size="18" alt="password" style="margin-right: auto; margin-left: auto; width: 200px;"></p>
        <p><input type="submit" value="Login" name="submit" class="art-button">

<?php
if(isset($_POST["submit"])){

if(!empty($_POST['staff_id']) && !empty($_POST['password'])) {
    $staff_id=$_POST['staff_id'];
    $password=$_POST['password'];

    $con=mysql_connect('localhost','root','') or die(mysql_error());
    mysql_select_db('user_access') or die("cannot select DB");

    $query=mysql_query("SELECT * FROM user WHERE staff_id='".$staff_id."' AND password='".$password."'");
    $numrows=mysql_num_rows($query);
    if($numrows!=0)
    {
    while($row=mysql_fetch_assoc($query))
    {
    $dbusername=$row['staff_id'];
    $dbpassword=$row['password'];
    }

    if($staff_id == $dbusername && $password == $dbpassword)
    {  
    session_start(); 
    $sql = ("SELECT first_name FROM user WHERE staff_id ='".$_SESSION['staff_id']."'"); 
    $_SESSION['sess_user']= $first_name;

    /* Redirect browser */
    header("location: member.php");
    }
    } else {
    echo "Invalid username or password!";
    }

} else {
    echo "All fields are required!";
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