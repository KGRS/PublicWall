<%-- 
    Document   : index
    Created on : Apr 28, 2017, 2:08:46 PM
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
            width: 90%;
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
        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }

        /* Center the image and position the close button */
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
            position: relative;
        }

        img.avatar {
            width: 40%;
            border-radius: 50%;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }

        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            padding-top: 60px;
        }
        .modal1 {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            padding-top: 60px;
        }

        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
            border: 1px solid #888;
            width: 80%; /* Could be more or less, depending on screen size */
        }

        /* The Close Button (x) */
        .close {
            position: absolute;
            right: 25px;
            top: 0;
            color: #000;
            font-size: 35px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: red;
            cursor: pointer;
        }

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
        <script>
            var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
            var modal = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
            {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        </script>
    </head> 

    <body>

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
                        <ul id="tiny">


                            <li>
                                <div>
                                    <div class="nav navbar-nav">

                                        <button onclick="document.getElementById('id01').style.display = 'block'" style="width:auto;">Login</button>

                                    </div>
                                    <div id="id01" class="modal">
                                        <form class="modal-content animate" action="/action_page.php">

                                            <div class="imgcontainer">
                                                <span onclick="document.getElementById('id01').style.display = 'none'" class="close" title="Close Modal">&times;</span>
                                                <img src="img_avatar2.png" alt="Avatar" class="avatar">
                                            </div>
                                            <table style="width:100%">
                                                <tr><td>    						</td>

                                                    <th><label><b>        Username</b></label></th>
                                                    <th><div id="editor"><input type="text" placeholder="Enter Username" name="uname" required></div></th>
                                                <td><font color="#fff"> sda   						</td>

                                                </tr>	
                                                <tr><td><font color="#fff"> .   						</td>
                                                    <th><label><b>Password</b></label></th>
                                                    <th><input type="password" placeholder="Enter Password" name="psw" required></th>
                                                    <td><font color="#fff">    						</td>


                                                </tr>
                                                <tr>
                                                    <td>    						</td>
                                                    <td><label><b><div class="container1" style="background-color:#ffff">
                                                                    <button onclick="location.href = 'index.jsp';" type="submit" >Login</button>
                                                                </div></b></label>
                                                    </td>
                                                    <td>    						</td>

                                                </tr>
                                            </table>
                                        </form>
                                    </div>
                                </div>

                            </li>


                            <li>
                                <div>
                                    <div class="nav navbar-nav">
                                        <button onclick="location.href = 'UserRegisterForm.jsp';" style="width:auto;">Sign Up</button>



                                    </div>

                                </div>
                            </li>


                        </ul>
                    </div>
                </div>
                <div class="clear"></div>
                <!-- End Menu -->
            </div>
        </div>
        <!-- End Header -->
        <script>
            initSample();
        </script>
        <!-- Begin Wrapper -->
        <div class="wrapper"><!-- Begin Intro -->

            <ul class="social">
                <li><a class="rss" href="#"></a></li><li><a class="facebook" href="#"></a></li><li><a class="twitter" href="#"></a></li><li><a class="pinterest" href="#"></a></li><li><a class="dribbble" href="#"></a></li><li><a class="flickr" href="#"></a></li><li><a class="linkedin" href="#"></a></li></ul><!-- End Intro --> 

            <!-- Begin Blog Grid -->
            <div class="blog-wrap">
                <!-- Begin Blog -->
                <div class="blog-grid">
                    <!-- Begin Image Format -->
                    <div class="post format-image box"> 
                        <div class="frame">
                            <a href="post.html">
                                <img src="style/images/art/post1.jpg" alt="" />
                            </a>
                        </div>
                        <h2 class="title"><a href="post.html">Morning Glory</a></h2>
                        <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of autumn which I enjoy with my whole heart.</p>
                        <div class="details">
                            <span class="icon-image"><a href="#">September 26, 2012</a></span>
                            <span class="likes"><a href="#" class="likeThis">44</a></span>
                            <span class="comments"><a href="#">3</a></span>
                        </div>
                    </div>
                    <!-- End Image Format -->


                    <!-- Begin Quote Format -->
                    <div class="post format-quote box"> 
                        <blockquote>Scissors cuts paper, paper covers rock, rock crushes lizard, lizard poisons Spock, Spock smashes scissors, scissors decapitates lizard, lizard eats paper, paper disproves Spock, Spock vaporizes rock, and as it always has, rock crushes scissors.<cite>Sheldon Cooper</cite></blockquote>	
                        <div class="details">
                            <span class="icon-quote"><a href="#">September 21, 2012</a></span>
                            <span class="likes"><a href="#" class="likeThis">27</a></span>
                            <span class="comments"><a href="#">4</a></span>
                        </div>

                    </div>
                    <!-- End Quote Format --> 	


                    <!-- Begin Video Format -->
                    <div class="post format-video box"> 
                        <div class="video frame"><iframe src="http://player.vimeo.com/video/40558553?title=0&byline=0&portrait=0" width="500" height="281" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe></div>
                        <h2 class="title"><a href="post.html">Fragments of Iceland</a></h2>
                        <p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.</p>

                        <div class="details">
                            <span class="icon-video"><a href="#">September 13, 2012</a></span>
                            <span class="likes"><a href="#" class="likeThis">18</a></span>
                            <span class="comments"><a href="#">1</a></span>
                        </div>

                    </div>
                    <!-- End Video Format --> 					


                    <!-- Begin Audio Format -->
                    <div class="post format-audio box"> 
                        <div class="audio-wrapper">
                            <div class="vinyl">
                                <dl>
                                    <dt class="art"> 
                                    <img class="highlight" src="style/images/vinyl.png" />
                                    <img src="style/images/art/artwork.png" alt="" />
                                    </dt>
                                    <dd class="song"><div class="icon-song"></div> Om Du Möter Varg</dd>
                                    <dd class="artist"><div class="icon-artist"></div> Detektivbyrån</dd>
                                    <dd class="album"><div class="icon-album"></div> Wermland</dd>
                                </dl>
                            </div>
                            <div class="clear"></div>
                            <div class="audio">
                                <audio controls="" preload="none" src="http://elemisdesign.com/files/omdumotervarg.mp3"></audio>
                            </div>
                        </div>
                        <p><strong>Detektivbyrån</strong> (&#8220;The Detective Agency&#8221;) was a <a title="Sweden" href="http://en.wikipedia.org/wiki/Sweden">Swedish</a> <a title="Electronica" href="http://en.wikipedia.org/wiki/Electronica">electronica</a> and <a title="Folk music" href="http://en.wikipedia.org/wiki/Folk_music">folk music</a> trio from <a title="Gothenburg" href="http://en.wikipedia.org/wiki/Gothenburg">Gothenburg</a>. The group consisted of Anders &#8220;Flanders&#8221; Molin (<a title="Accordion" href="http://en.wikipedia.org/wiki/Accordion">accordion</a>, <a title="Music box" href="http://en.wikipedia.org/wiki/Music_box">music box</a>), Martin &#8220;MacGyver&#8221; Molin (<a title="Glockenspiel" href="http://en.wikipedia.org/wiki/Glockenspiel">glockenspiel</a>, traktofon, toy <a title="Piano" href="http://en.wikipedia.org/wiki/Piano">piano</a>, <a title="Theremin" href="http://en.wikipedia.org/wiki/Theremin">Theremin</a>) and Jon Nils Emanuel Ekström <a title="Drum kit" href="http://en.wikipedia.org/wiki/Drum_kit">drums</a>, <a title="Sound box" href="http://en.wikipedia.org/wiki/Sound_box">sound box</a>, <a title="Bell (instrument)" href="http://en.wikipedia.org/wiki/Bell_%28instrument%29">small bells</a>.</p>

                        <div class="details">
                            <span class="icon-audio"><a href="#">September 7, 2012</a></span>
                            <span class="likes"><a href="#" class="likeThis">20</a></span>
                            <span class="comments"><a href="#">1</a></span>
                        </div>

                    </div>
                    <!-- End Audio Format --> 					


                    <!-- Begin Standard Format -->
                    <div class="post format-standard box"> 

                        <h2 class="title"><a href="post.html">The Meridian Sun</a></h2>
                        <p>When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies.</p>
                        <p>Then I feel the presence of the Almighty, who formed us in his own image, and the breath of that universal love which bears and sustains us, as it floats around us in an eternity of bliss; and then, my friend, when darkness overspreads my eyes, and heaven and earth seem to dwell in my soul and absorb its power, like the form of a beloved mistress, then I often think with longing, Oh, would I could describe these conceptions, could impress upon paper all that is living so full and warm within me, that it might be the mirror of my soul, as my soul is the mirror of the infinite God!</p>

                        <div class="details">
                            <span class="icon-standard"><a href="#">August 13, 2012</a></span>
                            <span class="likes"><a href="#" class="likeThis">11</a></span>
                            <span class="comments"><a href="#">0</a></span>
                        </div>

                    </div>
                    <!-- End Standard Format --> 					


                    <!-- Begin Link Format -->
                    <div class="post format-link box"> 

                        <h2 class="title"><a href="http://elemisfreebies.com" target="_blank">The Italic Mountains<span class="arrow">&rarr;</span></a></h2>
                        <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way. On her way she met a copy.</p>

                        <div class="details">
                            <span class="icon-link"><a href="#">July 13, 2012</a></span>
                            <span class="likes"><a href="#" class="likeThis">10</a></span>
                            <span class="comments"><a href="#">0</a></span>
                        </div>

                    </div>
                    <!-- End Link Format --> 					


                    <!-- Begin Chat Format -->
                    <div class="post format-chat box"> 
                        <h2 class="title"><a href="post.html">Two Best Friends</a></h2>
                        <ul>
                            <li><strong>Barney:</strong> Stop pining over Marshall and Lily! Have some self respect. Now put this fiver in your mouth so that stripper with the lazy eye can vacuum it up with&#8230;</li>
                            <li><strong>Ted:</strong> Barney! I&#8217;m allowed to miss them alright? They&#8217;re my two best friends.</li>
                            <li><strong>Barney:</strong> I&#8217;m your two best friends!</li>
                        </ul>

                        <div class="details">
                            <span class="icon-chat"><a href="#">June 13, 2012</a></span>
                            <span class="likes"><a href="#" class="likeThis">5</a></span>
                            <span class="comments"><a href="#">0</a></span>
                        </div>

                    </div>
                    <!-- End Chat Format -->

                </div>
                <!-- End Blog -->
            </div>
            <!-- End Blog Grid -->

            <!-- Begin Page-navi -->
            <div id="navigation">
                <div class="nav-previous"><a href="#" ><span class="meta-nav-prev">&larr; Older posts</span></a></div>
                <!-- 
                                  <div class="nav-next"><a href="#" ><span class="meta-nav-next">Newer posts &rarr;</span></a></div>
                --> 
            </div>
            <!-- End Page-navi --> 

        </div>
        <!-- End Wrapper -->

        <!-- Begin Footer -->
        <div class="footer-wrapper">
            <div id="footer" class="four">
                <!-- #first .widget-area -->
                <!-- #second .widget-area -->

                <!-- #third .widget-area -->

                <!-- #fourth .widget-area -->
            </div>
        </div>

        <!-- End Footer --> 
        <script type="text/javascript" src="style/js/scripts.js"></script>

    </body>
</html>
