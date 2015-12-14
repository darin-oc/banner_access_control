<!DOCTYPE html>
<html dir="ltr" lang="en-US"><head><!-- Created by Artisteer v4.1.0.59861 -->
    <meta charset="utf-8">
    <title>New Page</title>
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
    <a href="#">BANNER_ACCESS_CONTROL</a>
</h1>




                        
                    
</header>
<nav class="art-nav">
    <div class="art-nav-inner">
    <ul class="art-hmenu"><li><a href="new-page.html" class="active">New Page</a></li><li><a href="home.html">Home</a></li><li><a href="contact-us.html">Contact Us</a></li></ul> 
        </div>
    </nav>
<div class="art-sheet clearfix">
            <div class="art-layout-wrapper">
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <div class="art-layout-cell art-content"><article class="art-post art-article">
                                <h2 class="art-postheader">FRONTEND FORMS</h2>
                                                
                <div class="art-postcontent art-postcontent-0 clearfix"><p><br></p></div>

<html>
<head>
<style>
table, th, td {
     border: 1px solid black;
}
</style>
</head>
<body>


 <?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "user_access";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
     die("Connection failed: " . $conn->connect_error);
} 

$sql =  "SELECT form, form_description FROM object";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
     echo "<table><tr><th>form</th><th>form_description</th></tr>";
     // output data of each row
     while($row = $result->fetch_assoc()) {
         echo "<tr><td>" . $row["form"]. "</td><td> " . $row["form_description"]. "</td></tr>";
     }
     echo "</table>";
} else {
     echo "0 results";
}

$conn->close();


?> 


</body>
</html>

</article></div>
                    </div>
                </div>
            </div>
    </div>
<footer class="art-footer">
  <div class="art-footer-inner">
<div class="art-content-layout">
    <div class="art-content-layout-row">
    <div class="art-layout-cell layout-item-0" style="width: 20%">
        <p style="font: bold 18px 'Arial Narrow';color: #777777;">INFO</p>
        <br>
        <ul>
        <li><a href="#">Welcome</a></li>
        <li><a href="#">Schedule</a></li>
        <li><a href="#">Team</a></li>
        <li><a href="#">Management</a></li>
        </ul>
    </div><div class="art-layout-cell layout-item-0" style="width: 20%">
        <p style="font: bold 18px 'Arial Narrow';color: #777777;">LOCATION</p>
        <br>
        <ul>
        <li><a href="#">Map</a></li>
        <li><a href="#">Address</a></li>
        <li><a href="#">Contact Us</a></li>
        </ul>
    </div><div class="art-layout-cell layout-item-0" style="width: 20%">
        <p style="font: bold 18px 'Arial Narrow';color: #777777;">CONNECTION</p>
        <br>
        <ul>
        <li><a href="#"><img width="32" height="32" alt="" src="images/rss_32.png"></a>&nbsp;<a href="#"><img width="32" height="32" alt="" src="images/facebook_32.png"></a>&nbsp;<a href="#"><img width="32" height="32" alt="" src="images/twitter_32.png"></a></li>
        </ul>
    </div><div class="art-layout-cell layout-item-0" style="width: 40%">
        <p style="text-align: right; padding-right: 20px"><br>
         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Copyright © 2011 All Rights Reserved.<br>
         Icons by <a href="http://www.IconEden.com">IconEden</a></p>
    </div>
    </div>
</div>

    <p class="art-page-footer">
        <span id="art-footnote-links"><a href="http://www.artisteer.com/" target="_blank">Web Template</a> created with Artisteer.</span>
    </p>
  </div>
</footer>

</div>


</body></html>