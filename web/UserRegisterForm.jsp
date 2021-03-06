<%-- 
    Document   : UserRegisterForm
    Created on : Apr 30, 2017, 12:00:21 PM
    Author     : KGRS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        /* Full-width input fields */
        .container1 {
            padding: 16px;
        }
        input[type=text], input[type=password] {

            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        /* Set a style for all buttons */
        table, th, td {
            border: 1px pxsolid black;
            padding: 5px;
        }
        table {
            border-spacing: 150px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 1px 20px;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            opacity: 0.8;
        }

        /* Extra styles for the cancel button */




        /* Add Zoom Animation */

    </style>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
        <title>Obscura</title>
        <link rel="stylesheet" type="text/css" media="all" href="style.css" />
        <link rel="stylesheet" type="text/css" href="style/css/media-queries.css" />
        <link rel="stylesheet" type="text/css" href="style/js/player/mediaelementplayer.css" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,400italic,300italic,300,700,700italic|Open+Sans+Condensed:300,700' rel="stylesheet" type='text/css'>
        <!--[if IE 8]>
        <link rel="stylesheet" type="text/css" href="style/css/ie8.css" media="all" />
        <![endif]-->
        <!--[if IE 9]>
        <link rel="stylesheet" type="text/css" href="style/css/ie9.css" media="all" />
        <![endif]-->
        <script type="text/javascript" src="style/js/jquery-1.7.2.min.js"></script>
        <script type="text/javascript" src="style/js/ddsmoothmenu.js"></script>
        <script type="text/javascript" src="style/js/retina.js"></script>
        <script type="text/javascript" src="style/js/selectnav.js"></script>
        <script type="text/javascript" src="style/js/jquery.masonry.min.js"></script>
        <script type="text/javascript" src="style/js/jquery.fitvids.js"></script>
        <script type="text/javascript" src="style/js/jquery.backstretch.min.js"></script>
        <script type="text/javascript" src="style/js/mediaelement.min.js"></script>
        <script type="text/javascript" src="style/js/mediaelementplayer.min.js"></script>
        <script type="text/javascript" src="style/js/jquery.dcflickr.1.0.js"></script>
        <script type="text/javascript" src="style/js/twitter.min.js"></script>
        <script type="text/javascript">
            $.backstretch("style/images/bg/1.jpg");
        </script>
    </head>
    <body class="single">
        <div class="scanlines"></div>

        <!-- Begin Header -->
        <div class="header-wrapper opacity">
            <div class="header">
                <!-- Begin Logo -->
                <div class="logo">
                    <a href="index.html">
                        <img src="style/images/logo.png" alt="" />
                    </a>
                </div>
                <!-- End Logo -->
                <!-- Begin Menu -->
                <div id="menu-wrapper">
                    <div id="menu" class="menu">

                    </div>
                    <div class="clear"></div>
                    <!-- End Menu -->
                </div>
            </div>
            <!-- End Header -->

            <!-- Begin Wrapper -->
            <div class="wrapper"><!-- Begin Intro -->
                <!-- Begin Main Image -->
                <!--d Main Image --> 


                <!-- Begin Container -->
                <div class="content">

                    <!-- Begin Post -->

                    <!-- End Post --> 	

                    <!-- Begin Comment Wrapper -->
                    <div id="comment-wrapper" class="box">

                        <!-- Begin Comments -->
                        <div id="comments">

                            <h3 id="comments-title">Enter Following Details To Register...</h3>

                            <ol id="singlecomments" class="commentlist">


                            </ol>
                        </div>
                        <!-- End Comments -->

                        <!-- Begin Form -->  

                        <div id="id02" class="modal1">
                            <span onclick="document.getElementById('id02').style.display = 'none'" class="close" title="Close Modal"></span>
                            <form class="modal-content animate" action="AddUser">
                                <div class="container1">


                                    <label><b><h4>User Name         </h4></b></label>
                                    <input type="text" placeholder="Enter User Name" name="uname" required></td>
                                    <label><b><h4>Password         </h4></b></label>
                                    <input type="password" placeholder="Enter Password" name="password" required></td>
                                    <label><b><h4>Re Enter Password         </h4></b></label>
                                    <input type="password" placeholder="Re Enter Password" name="repassword" required></td>
                                    <label><b><h4>Birthday         </h4></b></label>
                                    <input type="date" placeholder="Enter Birthday" name="birthday" required></td>									
                                    <label><b><h4>Gender         </h4></b></label>  
                                    <select name="gender">
                                        <option value="1"> Male</option>
                                        <option value="2"> Female</option>                                    
                                    </select>    
                                </td>
                                    <label><b><h4>Email         </h4></b></label>
                                    <input type="text" placeholder="Enter Email" name="email" required></td>								
                                    <label><b><h4>Address         </h4></b></label>
                                    <input type="text" placeholder="Enter Address" name="address" required></td>								
                                    <label><b><h4>Country         </h4></b></label>
                                   
                                    <select name="country">
                                        <option value="1"> Sri Lanka</option>
                                        <option value="2"> Australier</option>
                                        <option value="3"> Canada</option>
                                        <option value="4"> USA</option>
                                        <option value="5"> UK</option>
                                        <option value="6"> Nethalands</option>                                        
                                    </select>

                                </div>
                        </div>
                        
                          <div id="comment-form" class="comment-form">

                        <div id="respond">

                                 <td>    						</td>
                                <td><label><b><div class="container1" style="background-color:#ffff">
                                                <button type="submit" >Submit</button>
                                            </div></b></label>
                                </td>
                                <td><label><b><div class="container1" style="background-color:#ffff">
                                                <button type="reset" >Clear</button>
                                            </div></b></label>
                                </td>
                                <td>    						</td>


                                </table> 
                        </div><!-- #respond -->	

                    </div>
                        </form>
                    </div>



                  





                    <!-- End Form -->	


                </div>	
                <!-- End Comment Wrapper -->

            </div>
            <!-- End Container -->

            <!-- Begin Sidebar -->

            <!--End Sidebar -->
            <div class="clear"></div>

        </div>
        <!-- End Wrapper -->

        <!-- Begin Footer -->
        <div class="footer-wrapper">
            <div id="footer" class="four">
                <div id="first" class="widget-area">

                </div><!-- #first .widget-area -->

                <div id="second" class="widget-area">

                </div><!-- #second .widget-area -->

                <div id="third" class="widget-area">

                </div><!-- #third .widget-area -->

                <div id="fourth" class="widget-area">

                </div><!-- #fourth .widget-area -->
            </div>
        </div>

        <!-- End Footer --> 
        <script type="text/javascript" src="style/js/scripts.js"></script>
    </body>
</html>
