<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />   
    <title>Map</title>
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
    <!-- GOOGLE MAPS -->
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
                    <li><a href="Team.aspx">TEAM</a>
                    </li>
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
                    <h1>ARTIFACTS THROUGHOUT CHINA</h1>
                   

                    <div id="map" style="width:750px;height:500px;">
                    </div>

                </div>

            </div>


            <div class="row text-center">
                <div class="col-md-12">
                    <p></p>

                    <input type="button" id="found_button" value="Found" />
                    <input type="button" id="created_button" value="Created" />
                    <input type="button" id="curated_button" value="Curated" />


                   <%-- <asp:Button ID="found_button" onclientclick="foundPins();" runat="server" Text="Found" />
                    <asp:Button ID="created_button" runat="server" Text="Created" />
                    <asp:Button ID="curated_button" runat="server" Text="Curated" />--%>
                    
                    <p>
                        Click on any marker to see a small image of the artifact and click the title to see more information.
                    </p>
                </div>

            </div>
        </div>


    </section>

    <section class="for-full-back " id="Parallax-one">
        <div class="container">

            <div class="row text-center for-parallax-one">
                <div class="col-md-6 ">
                    <h3></h3>
                    <h4>
                        <strong>
                        </strong>
                    </h4>
                </div>
                <div class="col-md-6 ">
                    <h3></h3>
                    <h4>
                        <strong>
                        </strong>
                    </h4>
                </div>
            </div>


        </div>
    </section>
    <!--./parallax one-->
    <!--End words Section-->




    <!-- Pricing Section -->

   

    <section class="for-full-back for-parallax-two" id="Parallax-two">
        <div class="container">

            <div class="row text-center">
                <div class="col-md-8 col-md-offset-2 ">
                    <h1></h1>
                    <h4>
                        <strong>
                        </strong>
                    </h4>
                </div>

            </div>


        </div>
         <div>
            <img src="assets/img/china-institute-of-orientalism-logo-version4.png" style="margin-left:44%; max-height:200px; padding-top:20px; width:auto;" />
        </div>
    </section>
    <!--./parallax two-->
    <!--End Pricing Section -->

    <!-- Contact Section -->
    <section class="for-full-back color-white " id="contact-sec">
        <div class="container">
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
