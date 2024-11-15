<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="MarriottLearningGuides.Results" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Marriott - Find Your World</title>
    <link href="styles/marriott.css" rel="stylesheet" type="text/css" />
</head>
<body style="font-family: Arial, Helvetica, sans-serif;">
    <form id="form1" runat="server">
        <div align="center">
            <p>
              <img src="sysimages/top-logo.png" runat="server" width="768" height="82" alt="Logo" />
            </p>
            <a href="LeadershipLearningGuide.aspx" target="_blank" runat="server" class="Link" id="ViewPDFLink" visible="false">View as PDF</a>
            <br />
            <br />
            <div id="ReturnButton">
                <a href="#" runat="server" id="ReturnLink" onserverclick="ReturnLink_Click"><img src="sysimages/return.png" width="110" height="38"></a>
            </div>
            <br />
            <p align="center" style="color:#c52c34; font-size:12px;width:768px;">
            <strong> &nbsp;&nbsp;Report Date : </strong><span style="color:#000000" id="Span1">
                <asp:Literal ID="ReportDate" runat="server"></asp:Literal>
            </span>   
            </p>     
            <p align="center" style="color:#c52c34; font-size:12px;width:768px;">
                <asp:Literal ID="PositionTypeLabel" runat="server"></asp:Literal>
                <span style="color:#000000" id="spPositionType">
                    <asp:Literal ID="PositionTypeText" runat="server"></asp:Literal>
                </span> 
                <asp:Literal ID="LeadershipLevelLabel" runat="server"></asp:Literal>
                <span style="color:#000000" id="spLeadershipLevel">
                    <asp:Literal ID="LeadershipLevelText" runat="server"></asp:Literal>
                </span>
                <asp:Literal ID="BrandCategoryLabel" runat="server"></asp:Literal>
                <span style="color:#000000" id="spCompetencyCategory">
                    <asp:Literal ID="BrandCategoryText" runat="server"></asp:Literal>
                </span>
                <asp:Literal ID="ContinentLabel" runat="server"></asp:Literal>
                <span style="color:#000000" id="spContinent">
                    <asp:Literal ID="ContinentText" runat="server"></asp:Literal>
                </span>
            </p>
            <br />
            <asp:Literal ID="CourseTableText" runat="server"></asp:Literal>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <img src="sysimages/footer-logo.png"  width="252" height="24" style="margin: 0 20px 0 0;"/>
        </div>
    </form>
</body>
</html>
