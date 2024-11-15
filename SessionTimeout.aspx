<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionTimeout.aspx.cs" Inherits="MarriottLearningGuides.SessionTimeout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
    <meta name="format-detection" content="telephone=no"/> 
    <meta name="apple-mobile-web-app-capable" content="yes" /> 
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" /> 
    <link href="icon.png" rel="apple-touch-icon" />
    <title>Marriott - Find Your World</title>
    <link rel="stylesheet" href="styles/marriott.css" />
    <script src="scripts/marriott.js"></script>
    <script src="scripts/redirection_mobile.js" type="text/javascript"></script>
    <script type="text/javascript">
        SA.redirection_mobile({
            mobile_url: "c2mm.net/MILearningGuides/Default.aspx?Mobile=true",
            mobile_prefix: "http"
        });
    </script>
</head>
<body bgcolor="#e6e4e5">
    <div id="main" class="externalMainDiv">
        <div id="background" class="externalBackground" />
        <div id="header">
             <img src="sysimages/marriott-header-logo.png" alt="Marriott" class="externalHeader1" />
            <img src="sysimages/find_your_world_490_48.png" alt="Find Your World" class="externalHeader2" />
        </div>
        <div id="message" class="externalMessage">
            <b>Your Learning Guides session has timed out. &nbsp;Please close your browser.</b>
        </div>
        <div id="guide" class="externalLearningGuide">
            <img src="sysimages/learning_guide.png" alt="Learning Guide" />
        </div>
    </div>
</body>
</html>
