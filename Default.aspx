<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <video  autoplay="autoplay" loop poster="/assets/Video/index.files/html5video/pitted_buddhaBEST.jpg" id="bgvid">
        <source src="assets/Video/index.files/html5video/pitted_buddhaBEST.webm" type="video/webm" />
        <source src="assets/Video/index.files/html5video/pitted_buddhaBEST.m4v" type="video/mp4" />
        <source src="assets/Video/index.files/html5video/pitted_buddhaBEST.ogv" type="video/ogg" />
       

    </video>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />   
    <title>China Institute of Orientalism</title>
    <!--REQUIRED STYLE SHEETS-->
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLE CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!-- VEGAS STYLE CSS -->
    <link href="assets/scripts/vegas/jquery.vegas.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Ruluko' rel='stylesheet' type='text/css' />
    <script type="text/javascript" src="jquery.min.js"></script>
    <script type="text/javascript" src="video.js"></script>

    <script type="text/javascript" src="jquery.simplyscroll.js"></script>

        <link rel="stylesheet" href="jquery.simplyscroll.css" media="all" type="text/css">

    <script type="text/javascript">
    (function ($) {
        $(function () {
            $("#scroller").simplyScroll({
                pauseOnTouch: true,
                pauseOnHover: true
            });
        });
    })(jQuery);
</script>
 </head>
<body>
    <form id="form1" runat="server">
     <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="">China Institute of Orientalism</a>
            </div>
            <!-- Collect the nav links for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="About.aspx">ABOUT THE INSTITUTE</a>
                    </li>

                    <li><a href="Collections.aspx">COLLECTIONS</a>
                    </li>

                    <li><a href="Researchers.aspx">RESEARCHERS</a>
                    </li>
                    <li><a href="Team.aspx">TEAM</a></li>
                    <li><a href="TechSpecs.aspx">TECH SPECS</a></li>
                    <li><a href="Contact.aspx">CONTACT</a>
                    </li>
                    <li><a> <i class="fa fa-search fa-1x main-color-white"></i></a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!--End Navigation -->


    <!--Header section  -->
    <div class="container" id="home">
        <div class="row text-center">
            <div class="col-md-12">
                <h1 class="head-main">China Institute</h1>
                <h2 class="head-sub-main">of Orientalism</h2>
                
               
                <div class="head-last"></div>

            </div>
             <div id="arrowNav">
                    <a href="#about"><i class="fa fa-arrow-down fa-4x"></i></a>
             </div>

        </div>
    </div>
    <!--End Header section  -->


    <!--words Section-->
    <section class="for-full-back color-white" id="about">
        <div class="container">

            <div class="row text-center">
                <div class="col-md-8 col-md-offset-2">
                    <h1>ABOUT THE INSTITUTE</h1>
                    <h4>
                        <strong>In 2012 and 2013, a Chinese scholar and member of an elite family unveiled 
                        approximately  250,000 Oriental artifacts dating back more than 8,000 
                        years ago. <a href="/About.aspx">Read more...</a>
                        </strong>
                    </h4>
                </div>

            </div>
            <br />

            <div class="row text-center space-pad">
                <div class="col-md-3 ">
                    <div class="about-div" >
                        <a href="Collections.aspx"><i class="fa fa-picture-o fa-4x" style="color:green;"></i></a>
                        <h3>See the Collections </h3>
                       
                    </div>
                </div>
                <div class="col-md-3 ">
                    <div class="about-div">
                       <a href="About.aspx" <i class="fa fa-pencil fa-4x" style="color:green;"></i></a>
                        <h3>Researchers </h3>
                        
                    </div>
                </div>
                <div class="col-md-3 ">
                    <div class="about-div">
                        <a href="Team.aspx"><i class="fa fa-users fa-4x main-color-green" style="color:green;"></i></a>
                        <h3>Meet the Team </h3>
                        
                    </div>
                </div>
                <div class="col-md-3 " href="url=TechSpecs.aspx">
                    <div class="about-div">
                        <a href="TechSpecs.aspx"><i class="fa fa-bar-chart-o fa-4x" style="color:green;"></i></a>
                        <h3>Technical </h3>
                       
                    </div>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-md-12">
                    <h2>Featured Artifacts</h2>
                    
                        <div style="padding-top:5%">
                             <ul id="scroller">
                                <li><a href="Cloth Box.aspx"><img src="assets/img/ChinaImages/ClothBox00.png" width="auto" height="200"/></a></li>
                                <li><a href="pittedBuddha.aspx"><img src="assets/img/ChinaImages/pittedBuddha00.png" width="auto" height="200" /> </a></li>
                                <li><a href="Unfinished Stamp.aspx"><img src="assets/img/ChinaImages/Stamp100.png" width="auto" height="200" /> </a></li>
                                <li><a href="pittedBuddha.aspx"><img src="assets/img/ChinaImages/pittedBuddha07.png" width="auto" height="200"/></a></li>
                                <li><a href="Warrior Figurine.aspx"><img src="assets/img/ChinaImages/Warrior00.png" width="auto" height="200"/></a></li>
                                <li><a href="Unfinished Stamp.aspx"><img src="assets/img/ChinaImages/Stamp06.png" width="auto" height="200" /> </a></li>

                            </ul>
                            </div>
            <div>
                <h3></h3>
            </div> </div>

            </div>
        </div>

    </section>
    <section>

    </section>

    <section class="for-full-back " id="Parallax-one">
        <div class="container">

            <div class="row text-center for-parallax-one">
                <div class="col-md-6 ">
                    <h3>China Institute</h3>
                    <h4>
                        <strong>of Orientalism
                        </strong>
                    </h4>
                </div>
                <div class="col-md-6 ">
                    <h3>Minnesota State University</h3>
                    <h4>
                        <strong>Mankato, Minnesota
                        </strong>
                    </h4>
                </div>
            </div>


        </div>
    </section>
    <!--./parallax one-->
    <!--End words Section-->






   
    <!--./parallax two-->
    <!--End Pricing Section -->

    <!-- Contact Section -->
    <section class="for-full-back color-white " id="contact-sec">
        <div class="BottomRow">
                    <div id="bottom-menu">
                        <a href="Default.aspx">Top</a>
                        <a href="Collections.aspx">Collections</a>
                        <a href="About.aspx">About</a>
                        <a href="Researchers.aspx">Researchers</a>
                        <a href="Team.aspx">Team</a>
                        <a href="Contact.aspx">Contact</a>
                    </div>
            </div>
                <div class="row text-center">
                    <img src="assets/img/china-institute-of-orientalism-logo-current.png"  style ="max-height:25em; width:auto;"  />
                </div>

    </section>

    <!--End Contact Section -->
    <!--footer Section -->
    <div class="for-full-back " id="footer">
        2014 www.yourdomain.com | All Right Reserved
         
    </div>
    <!--End footer Section -->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP CORE SCRIPT   -->
    <script src="assets/plugins/bootstrap.js"></script>
    <!-- VEGAS SLIDESHOW SCRIPTS -->
    <script src="assets/plugins/vegas/jquery.vegas.min.js"></script>
    <script src="assets/plugins/jquery.parallax-1.1.3.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>

    </form>
</body>
</html>
