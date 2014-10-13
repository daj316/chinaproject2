<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />   
    <title>Collections</title>
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
    <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script src="Map.js"></script>
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
                <a class="navbar-brand" href="Default.aspx">China Institute of Orientalism</a>
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
                    <li><a href="TechSpecs.aspx">TECH SPECS</a>
                    </li>
                    <li><a href="Contact.aspx">CONTACT</a> 
                    </li>
                    <li><a href="Search.aspx">SEARCH</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!--End Navigation -->



    <!--words Section-->
  
         <section class="for-full-back color-white" id="about">
            <div class="container">

                <div class="row text-center">
                    <div class="col-md-8 col-md-offset-2">
                        <h1>Collections</h1>
                        
                    </div>

                </div>


    
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP CORE SCRIPT   -->
    <script src="assets/plugins/bootstrap.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>

    </form>

    <!-- it works the same with all jquery version from 1.x to 2.x -->
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <!-- use jssor.slider.mini.js (40KB) or jssor.sliderc.mini.js (32KB, with caption, no slideshow) or jssor.sliders.mini.js (28KB, no caption, no slideshow) instead for release -->
    <!-- jssor.slider.mini.js = jssor.sliderc.mini.js = jssor.sliders.mini.js = (jssor.js + jssor.slider.js) -->
    <script type="text/javascript" src="js/jssor.js"></script>
    <script type="text/javascript" src="js/jssor.slider.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            var options = {
                $AutoPlay: false,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                $AutoPlayInterval: 4000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                $SlideDuration: 500,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
                $DragOrientation: 3,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)
                $UISearchMode: 0,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, arrow navigator container, thumbnail navigator container etc).

                $ThumbnailNavigatorOptions: {
                    $Class: $JssorThumbnailNavigator$,              //[Required] Class to create thumbnail navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always

                    $Loop: 2,                                       //[Optional] Enable loop(circular) of carousel or not, 0: stop, 1: loop, 2 rewind, default value is 1
                    $SpacingX: 3,                                   //[Optional] Horizontal space between each thumbnail in pixel, default value is 0
                    $SpacingY: 3,                                   //[Optional] Vertical space between each thumbnail in pixel, default value is 0
                    $DisplayPieces: 6,                              //[Optional] Number of pieces to display, default value is 1
                    $ParkingPosition: 204,                          //[Optional] The offset position to park thumbnail,

                    $ArrowNavigatorOptions: {
                        $Class: $JssorArrowNavigator$,              //[Requried] Class to create arrow navigator instance
                        $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                        $AutoCenter: 2,                                 //[Optional] Auto center arrows in parent container, 0 No, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                        $Steps: 1                                       //[Optional] Steps to go for each navigation request, default value is 1
                    }
                }
            };

            var jssor_slider1 = new $JssorSlider$("slider1_container", options);

            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizes
            function ScaleSlider() {
                var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
                if (parentWidth)
                    jssor_slider1.$ScaleWidth(Math.min(parentWidth, 720));
                else
                    window.setTimeout(ScaleSlider, 30);
            }

            ScaleSlider();

            if (!navigator.userAgent.match(/(iPhone|iPod|iPad|BlackBerry|IEMobile)/)) {
                $(window).bind('resize', ScaleSlider);
            }


            //if (navigator.userAgent.match(/(iPhone|iPod|iPad)/)) {
            //    $(window).bind("orientationchange", ScaleSlider);
            //}
            //responsive code end
        });
    </script>
    <!-- Jssor Slider Begin -->
    <!-- You can move inline styles to css file or css block. -->
    <div id="slider1_container" style="position: relative; width: 720px;
        height: 480px; overflow: hidden; margin-top:10px; margin-left:auto; margin-right:auto;">

        <!-- Loading Screen -->
        <div u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity:0.7; position: absolute; display: block;
                background-color: #000; top: 0px; left: 0px;width: 100%;height:100%;">
            </div>
            <div style="position: absolute; display: block; background: url(assets/img/ChinaImages/loading.gif) no-repeat center center;
                top: 0px; left: 0px;width: 100%;height:100%;">
            </div>
        </div>

        <!-- Slides Container -->
        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 720px; height:480px;
            overflow: hidden;">
            <div>
                <img u="image" src="assets/img/ChinaImages/Warrior03.png" onclick="location.href='Warrior Figurine.aspx'"/>
                <img u="thumb" src="assets/img/ChinaImages/Warrior03.png" />
            </div>
            <div>
                <img u="image" src="assets/img/ChinaImages/ClothBox00.png" onclick="location.href='Cloth Box.aspx'"/>
                <img u="thumb" src="assets/img/ChinaImages/ClothBox00.png" />
                
            </div>
            <div>
                <img u="image" src="assets/img/ChinaImages/pittedBuddha00.png" onclick="location.href='pittedBuddha.aspx'"/>
                <img u="thumb" src="assets/img/ChinaImages/pittedBuddha00.png" />
            </div>
            <div>
                <img u="image" src="assets/img/ChinaImages/Stamp100.png" onclick="location.href='Unfinished Stamp.aspx'" />
                <img u="thumb" src="assets/img/ChinaImages/Stamp100.png" />
            </div>
            <div>
                <img u="image" src="assets/img/ChinaImages/Warrior00.png" onclick="location.href='Warrior Figurine.aspx'"/>
                <img u="thumb" src="assets/img/ChinaImages/Warrior00.png" />
            </div>
            <div>
                <img u="image" src="assets/img/ChinaImages/ClothBox01.png" onclick="location.href='Cloth Box.aspx'"/>
                <img u="thumb" src="assets/img/ChinaImages/ClothBox01.png" />
            </div>
            <div>
                <img u="image" src="assets/img/ChinaImages/pittedBuddha03.png" onclick="location.href='pittedBuddha.aspx'"/>
                <img u="thumb" src="assets/img/ChinaImages/pittedBuddha03.png" />
            </div>
            <div>
                <img u="image" src="assets/img/ChinaImages/Stamp201.png" onclick="location.href='Unfinished Stamp.aspx'" />
                <img u="thumb" src="assets/img/ChinaImages/Stamp201.png" />
            </div>
            <div>
                
                <img u="image" src="assets/img/ChinaImages/08.jpg" onclick="location.href='Warrior Figurine.aspx'"/>
                <img u="thumb" src="assets/img/ChinaImages/08.jpg" />
            </div>
            <div>
                <img u="image" src="assets/img/ChinaImages/pittedBuddha05.png" onclick="location.href='pittedBuddha.aspx'"/>
                <img u="thumb" src="assets/img/ChinaImages/pittedBuddha05.png" />
            </div>
             <div>
                
                <img u="image" src="assets/img/ChinaImages/ClothBox02.png" onclick="location.href='Cloth Box.aspx'"/>
                <img u="thumb" src="assets/img/ChinaImages/ClothBox02.png" />
            </div>
             <div>
                
                <img u="image" src="assets/img/ChinaImages/Stamp302.png" onclick="location.href='Unfinished Stamp.aspx'"/>
                <img u="thumb" src="assets/img/ChinaImages/Stamp302.png" />
            </div>
            <div>
                <img u="image" src="assets/img/ChinaImages/Warrior05.png" onclick="location.href='Warrior Figurine.aspx'"/>
                <img u="thumb" src="assets/img/ChinaImages/Warrior05.png" />
            </div>
            <div>
                
                <img u="image" src="assets/img/ChinaImages/ClothBox04.png" onclick="location.href='Cloth Box.aspx'"/>
                <img u="thumb" src="assets/img/ChinaImages/ClothBox04.png" />
            </div>
            <div>
                <img u="image" src="assets/img/ChinaImages/pittedBuddha07.png" onclick="location.href='pittedBuddha.aspx'"/>
                <img u="thumb" src="assets/img/ChinaImages/pittedBuddha07.png" />
            </div>
             <div>
                
                <img u="image" src="assets/img/ChinaImages/Stamp305.png" onclick="location.href='Unfinished Stamp.aspx'"/>
                <img u="thumb" src="assets/img/ChinaImages/Stamp305.png" />
            </div>
             <div>
                
                <img u="image" src="assets/img/ChinaImages/Stamp306.png" onclick="location.href='Unfinished Stamp.aspx'"/>
                <img u="thumb" src="assets/img/ChinaImages/Stamp306.png" />
            </div>
              
        </div>
        
        <!-- Thumbnail Navigator Skin Begin -->
        <div u="thumbnavigator" class="jssort07" style="position: absolute; width: 720px; height: 100px; left: 0px; bottom: 0px; overflow: hidden; ">
            <div style=" background-color: #000; filter:alpha(opacity=30); opacity:.3; width: 100%; height:100%;"></div>
            <!-- Thumbnail Item Skin Begin -->
            <style>
                /* jssor slider thumbnail navigator skin 07 css */
                /*
                .jssort07 .p            (normal)
                .jssort07 .p:hover      (normal mouseover)
                .jssort07 .pav          (active)
                .jssort07 .pav:hover    (active mouseover)
                .jssort07 .pdn          (mousedown)
                */
                .jssort07 .i {
                    position: absolute;
                    top: 0px;
                    left: 0px;
                    width: 99px;
                    height: 66px;
                    filter: alpha(opacity=80);
                    opacity: .8;
                }

                .jssort07 .p:hover .i, .jssort07 .pav .i {
                    filter: alpha(opacity=100);
                    opacity: 1;
                }

                .jssort07 .o {
                    position: absolute;
                    top: 0px;
                    left: 0px;
                    width: 97px;
                    height: 64px;
                    border: 1px solid #000;
                    transition: border-color .6s;
                    -moz-transition: border-color .6s;
                    -webkit-transition: border-color .6s;
                    -o-transition: border-color .6s;
                }

                * html .jssort07 .o {
                    /* ie quirks mode adjust */
                    width /**/: 99px;
                    height /**/: 66px;
                }

                .jssort07 .pav .o, .jssort07 .p:hover .o {
                    border-color: #fff;
                }

                .jssort07 .pav:hover .o {
                    border-color: #0099FF;
                }

                .jssort07 .p:hover .o {
                    transition: none;
                    -moz-transition: none;
                    -webkit-transition: none;
                    -o-transition: none;
                }
            </style>
            <div u="slides" style="cursor: move;">
                <div u="prototype" class="p" style="POSITION: absolute; WIDTH: 99px; HEIGHT: 66px; TOP: 0; LEFT: 0;">
                    <thumbnailtemplate class="i" style="position:absolute;"></thumbnailtemplate>
                    <div class="o">
                    </div>
                </div>
            </div>
            <!-- Thumbnail Item Skin End -->
            <!-- Arrow Navigator Skin Begin -->
            <style>
                    /* jssor slider arrow navigator skin 11 css */
                    /*
                .jssora11l              (normal)
                .jssora11r              (normal)
                .jssora11l:hover        (normal mouseover)
                .jssora11r:hover        (normal mouseover)
                .jssora11ldn            (mousedown)
                .jssora11rdn            (mousedown)
                */
                    .jssora11l, .jssora11r, .jssora11ldn, .jssora11rdn {
                        position: absolute;
                        cursor: pointer;
                        display: block;
                        background: url(assets/img/ChinaImages/a11.png) no-repeat;
                        overflow: hidden;
                    }

                    .jssora11l {
                        background-position: -11px -41px;
                    }

                    .jssora11r {
                        background-position: -71px -41px;
                    }

                    .jssora11l:hover {
                        background-position: -131px -41px;
                    }

                    .jssora11r:hover {
                        background-position: -191px -41px;
                    }

                    .jssora11ldn {
                        background-position: -251px -41px;
                    }

                    .jssora11rdn {
                        background-position: -311px -41px;
                    }
            </style>
            <!-- Arrow Left -->
            <span u="arrowleft" class="jssora11l" style="width: 37px; height: 37px; top: 123px; left: 8px;">
            </span>
            <!-- Arrow Right -->
            <span u="arrowright" class="jssora11r" style="width: 37px; height: 37px; top: 123px; right: 8px">
            </span>
            <!-- Arrow Navigator Skin End -->
        </div>
        <!-- ThumbnailNavigator Skin End -->
        <a style="display: none" href="http://www.jssor.com">javascript</a>
        <!-- Trigger -->
    </div>
    <!-- Jssor Slider End -->


        <div class="row text-center">
                <div class="col-md-12">
                    <p></p>
                    <p>
                        The artifacts found on this page can be viewed in greater detail by clicking the link.
                        A map indicates where the artifact was found.
                    </p>
                </div>

            </div>
                <div align="center">

                    <div class="about-div">
                        <h3>Artifacts Throughout China</h3>
                        <div id="map" style="width:100%;height:650px;">
                    </div>


                        
                        

                    </div>

                </div>
                <div align= "center">

                    <div class="about-div">

                        


                        <h3>View Artifacts by Date</h3>

                        <iframe src='http://cdn.knightlab.com/libs/timeline/latest/embed/index.html?source=0Aijkx_SQp5XddDBTbVltUU1uVzV4MUlkZDNoNlpoSEE&font=Bevan-PotanoSans&maptype=toner&lang=en&height=650' width='100%'  height='650' frameborder='0'></iframe>
                       

                    </div>

                </div>
                <div class="row text-center">
                    <img src="assets/img/china-institute-of-orientalism-logo-version4.png"  style ="max-height:200px; width:auto;"  />
                </div>
                </section>
    <!--footer Section -->
    <div class="for-full-back " id="footer">
        2014 www.yourdomain.com | All Right Reserved
         
    </div>

    <!--End footer Section -->

</body>
</html>
<style type="text/css" ></style>

