<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MarriottLearningGuides.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="format-detection" content="telephone=no"/> 
    <meta name="apple-mobile-web-app-capable" content="yes" /> 
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" /> 
    <link href="icon.png" rel="apple-touch-icon" />
    <meta name="viewport" content="width=1024" />
    <title>Marriott - Find Your World</title>
	<link rel="stylesheet" href="jq/jquery.mobile-1.1.0.min.css" />
	<script src="jq/jquery-1.7.1.min.js"></script>
	<script src="jq/jquery.mobile-1.1.0.min.js"></script>
    <link rel="stylesheet" href="styles/marriott.css" />
    <script src="scripts/marriott.js" ></script> 
    <style type="text/css">
        body {
            overflow:hidden;
            /* exclusive for default page */
        }        
    </style> 
</head>
<body bgcolor="#e6e4e5">
    <form id="form1" runat="server">
        <div data-role="page" style="background-color: #e6e4e5; height:100%; width:100%; z-index:1;">
        
            <div data-role="content" style="padding-top:15px;padding-bottom:200px; margin:0px auto; height:768px; width:1024px;">     
            <!-- Top Right Navigations -->              
            <div  class="nav" >
                <ul>
                    <li><a id="HomeLink" runat="server" onserverclick="HomeLink_Click">Home</a> | </li>
                    <li><a href="https://extranet.marriott.com/mgs/marrdocs/mgs/nalo+associate/Training/LearningResources/ToolsResources/AboutLearningGuide.pdf" target="_blank">Help</a> | </li>
                    <li><a href="https://extranet.marriott.com/mgs/marrdocs/mgs/nalo+associate/Training/LearningResources/ToolsResources/LeadershipLearningGuideFAQs.pdf" target="_blank">FAQ</a> | </li>
                    <li><a id="LogOffLink" runat="server" onserverclick="LogOffLink_Click">LogOut</a></li>
                </ul>
            </div> 
            <div id="header">
                <!-- Marriott Logo -->
                <img src="sysimages/marriott-header-logo.png" alt="Marriott" title="Marriott" style="margin: 0 0 25px 48px;">
                <!-- Find Your World heading -->
                <img src="sysimages/find_your_world_490_48.png" alt="Find Your World" title="Find Your World" style="margin: 0 0 25px 440px; height: 36px; width: 368px;" />
            </div>
            
            <!-- Shide Show -->   
                <div id="slideshow" style="text-align:center;">
                    
                    <object id="FlashID" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="928" height="360" title="Learn, Grow, Develop, Formal-Learning, and Informal-Learning">
                        <param name="movie" value="sysimages/marriott_slideshow.swf" />
                        <param name="quality" value="high" />
                        <param name="bgcolor" value="#ffffff" />
                        <param name="play" value="true" />
                        <param name="loop" value="true" />
                        <param name="wmode" value="transparent" />
                        <param name="scale" value="showall" />
                        <param name="menu" value="true" />
                        <param name="devicefont" value="false" />
                        <param name="salign" value="" />
                        <param name="allowScriptAccess" value="sameDomain" />
                        <param name="swfversion" value="9.0.45.0" />
                        
                        <!-- Next object tag is for non-IE browsers. So hide it from IE using IECC. -->
                            <!--[if !IE]>-->
                            <object type="application/x-shockwave-flash" data="sysimages/marriott_slideshow.swf" width="928" height="360">
                                <!--<![endif]-->
                                <param name="movie" value="sysimages/marriott_slideshow.swf" />
                                <param name="quality" value="high" />
                                <param name="bgcolor" value="#ffffff" />
                                <param name="play" value="true" />
                                <param name="loop" value="true" />
                                <param name="wmode" value="transparent" />
                                <param name="scale" value="showall" />
                                <param name="menu" value="true" />
                                <param name="devicefont" value="false" />
                                <param name="salign" value="" />
                                <param name="allowScriptAccess" value="sameDomain" />
                                <param name="swfversion" value="9.0.45.0" />                                
                                <!-- The browser displays the following alternative content for users with Flash Player 6.0 and older. -->
                                <div>
                                    <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>
                                    <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" width="112" height="33" /></a></p>
                                </div>
                            <!--[if !IE]>-->
                            </object>
                            <!--<![endif]-->
                    </object>
                
                    <!--Learning Guide image placed here -->
                    <img src="sysimages/learning_guide.png" id="ImgLearningGuide" style="margin: 30px 0 10px 0;" alt="Learning Guide" title="Learning Guide" />
                    <br />
                    <!--Continue Button placed here -->
                    <span id="continueBtn" runat="server">
                       <asp:LinkButton ID="ContinueButton" data-transition="fade" runat="server" onclick="ContinueButton_Click">
                        <img src="sysimages/continue.png" id="Image5"/ alt="Continue" title="Continue" />
                       </asp:LinkButton>
                    </span> 
                                
                </div>
                
                <!--Intructions div to be left aligned (45px) with the Marriott logo - Instruction content removed per new request -->
                <div style="margin: auto auto 10px 45px; text-align:left; font-family: Arial; font-size:14px;">                                                 
                    <div style="border: 1px solid #000000;padding: 5px;font-size:13px;">
                        <div id="divDisclaimer" runat="server"></div>                        
                    </div>                                 
                </div>

                <div style="text-align:right;padding-top:5px; margin: 0 auto;">
                    <a style="font-size: 12px;" target="_blank" href="http://www.marriott.com/marriott/termsofuse-us.mi" class="LinkTermsofUse">Marriott Terms Of Use</a>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
