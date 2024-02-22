<%@ Page Title="Seiha Global Academy/News" Language="C#" MasterPageFile="~/Site.Master"AutoEventWireup="true" MaintainScrollPositionOnPostBack="true" CodeBehind="News.aspx.cs" Inherits="WebApplication1.Bulletin.News" %>
<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../AdminAssets/pages/extra-pages/comming-soon/css/style-minimal-flat.css"/>
    <script type="text/javascript" src="../AdminAssets/pages/extra-pages/comming-soon/js/modernizr.custom.js"></script>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div id="loading" class="dark-back">
		<div class="loading-bar"></div>
		<span class="loading-text opacity-0"></span>
	</div>
     <section class="top-banner" id="banner" style="padding-top: 255px; padding-bottom:50px;">
         <%--<div class="container">
             <div class="col-lg-12" style="text-align: center;">
                 <div class="title-container">
                    <h2 class="line-title" style="font-size:60px;font-weight:bold;color:#007d00;">
                        Comming Soon
                    </h2>
                 </div>  
             </div>
            <div id="particles-js"></div>
             
         </div>--%>
         <div id="particles-js"></div>
         <div id="slider" class="sl-slider-wrapper">
			<div class="sl-slider" style="width: 100%; height: 100%;">
				<!-- SLIDE 1 / Home -->
				<div class="sl-slides-wrapper">
                    <div class="sl-slide bg-1 sl-slide-horizontal" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2" style="display: block;">
					    <div class="sl-content-wrapper" style="width: auto; height: auto;">
                            <div class="sl-content">
                                <div class="sl-slide-inner">
						           <div class="content-slide mCustomScrollbar _mCS_1">
                                            <div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 547px;" tabindex="0">
                                                <div id="mCSB_1_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr">
							                        <div class="container">

								                        <img src="../Images/SGAlogoNew.png" alt="Seiha Logo" class="brand-logo text-intro mCS_img_loaded">
							
								                        <h1 class="text-intro">Coming Soon!</h1>
							                        </div>
						                        </div>
                                                <div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: block;">
                                                    <div class="mCSB_draggerContainer">
                                                        <div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: block; height: 268px; max-height: 287px;" oncontextmenu="return false;">
                                                            <div class="mCSB_dragger_bar" style="line-height: 30px;">
                                                            </div>
                                                        </div>
                                                        <div class="mCSB_draggerRail">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
					                    </div>
					                </div>
				                </div>
			                </div>
                        </div>
                    </div>
                </div>
		    </div>
				<!-- END - SLIDE 1 / Home -->
			<!-- END - sl-slider -->
     </section>
</asp:Content>
<asp:Content ID="jscript" ContentPlaceHolderID="forJScript" runat="server">
    <script type="text/javascript" src="../AdminAssets/js/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="../AdminAssets/pages/extra-pages/comming-soon/js/jquery.min.js"></script>
    <script type="text/javascript" src="../AdminAssets/pages/extra-pages/comming-soon/js/jquery.easings.min.js"></script>
    <script type="text/javascript" src="../AdminAssets/pages/extra-pages/comming-soon/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../AdminAssets/pages/extra-pages/comming-soon/js/particles.js"></script>
    <script type="text/javascript" src="../AdminAssets/pages/extra-pages/comming-soon/js/jquery.slitslider.js"></script>
    <script type="text/javascript" src="../AdminAssets/pages/extra-pages/comming-soon/js/main-flat.js"></script>
</asp:Content>