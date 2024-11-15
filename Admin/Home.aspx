<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MarriottLearningGuides.Admin.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .aLink a:link { color:#000000; text-decoration:none; font-size:15px; }
        .aLink a:visited { color:#000000; text-decoration:none; font-size:15px; }
        .aLink a:hover { color:#0078df; text-decoration:none; font-size:15px; }
        .aLink a:active { color:#000000; text-decoration:none; font-size:15px; }
    </style>
    <div align="center" style="width:100%; font-family: Segoe UI; height: 600px;">
        <div style="height:33px; background: url('../sysimages/reportbarbg.jpg'); background-repeat: repeat;">
            <asp:Image ID="imgGradient" runat="server" ImageUrl="~/sysimages/gradient_uppermid.jpg" />
        </div>
        <div style="height:92px; background: url('../sysimages/reportbarbg.jpg'); background-repeat: repeat;">
            <div style="width: 954px;">
                <div style="float:left; margin-left:40px; width: 278px;">
                    <asp:ImageButton ID="ibUsageReport" runat="server" OnMouseOver="src='../sysimages/butt_usagerep_hov.jpg';"
                        OnMouseOut="src='../sysimages/butt_usagerep_reg.jpg';"
                        OnMouseDown="src='../sysimages/butt_usagerep_down.jpg';"
                        ImageUrl="~/sysimages/butt_usagerep_reg.jpg" 
                        onclick="ibUsageReport_Click" />
                </div>
                <div style="float:left; margin-left:30px; width: 272px;">
                    <asp:ImageButton ID="ibGuideReport" runat="server" OnMouseOver="src='../sysimages/butt_guiderep_hov.jpg';"
                        OnMouseOut="src='../sysimages/butt_guiderep_reg.jpg';"
                        OnMouseDown="src='../sysimages/butt_guiderep_down.jpg';"
                        ImageUrl="~/sysimages/butt_guiderep_reg.jpg" 
                        onclick="ibGuideReport_Click" />
                </div>
                <div style="float:left; margin-left:30px; width: 272px;">
                    <asp:ImageButton ID="ibLogOnReport" runat="server" OnMouseOver="src='../sysimages/butt_logonrep_hov.jpg';"
                        OnMouseOut="src='../sysimages/butt_logonrep_reg.jpg';"
                        OnMouseDown="src='../sysimages/butt_logonrep_down.jpg';"
                        ImageUrl="~/sysimages/butt_logonrep_reg.jpg" 
                        onclick="ibLogOnReport_Click" />
                </div>
            </div>
        </div>
        <div style="height:33px; background: url('../sysimages/middlebarbg.jpg'); background-repeat: repeat;">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/sysimages/gradient_page.jpg" />
        </div>
        <div style="height:171px; width:954px;background:url('../sysimages/row1_blank.jpg'); background-position:center; background-repeat:no-repeat;">
            <div style="position:relative; top:115px; float:left; margin-left: 0px; width:150px;">
                <%--<div style="float:left;">
                    <asp:Image ID="imgAddPositionType" runat="server" ImageUrl="~/sysimages/index_add.png" />
                </div>
                <div style="float:left;padding-top:1px; font-weight:bold;">
                    &nbsp;<span class="aLink"><a href="AddEditPositionType.aspx">Add</a></span>
                </div>--%>
                <div style="float:right;padding-top:1px; font-weight:bold;">
                    &nbsp;<span class="aLink"><a href="ManagePositionTypes.aspx">Manage</a></span>
                </div>
                <div style="float:right;">
                    <a href="ManagePositionTypes.aspx"><asp:Image ID="imgManagePositionTypes" runat="server" ImageUrl="~/sysimages/index_view.png" /></a>
                </div>
            </div>
            <div style="position:relative; top:115px; float:left; margin-left: 87px; width:155px;">
                <%--<div style="float:left;">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/sysimages/index_add.png" />
                </div>
                <div style="float:left;padding-top:1px; font-weight:bold;">
                    &nbsp;<span class="aLink"><a href="AddEditLeadershipLevel.aspx">Add</a></span>
                </div>--%>
                <div style="float:right;padding-top:1px; font-weight:bold;">
                    &nbsp;<span class="aLink"><a href="ManageLeadershipLevels.aspx">Manage</a></span>
                </div>
                <div style="float:right;">
                    <a href="ManageLeadershipLevels.aspx"><asp:Image ID="Image3" runat="server" ImageUrl="~/sysimages/index_view.png" /></a>
                </div>
            </div>
            <div style="position:relative; top:115px; float:left; margin-left: 87px; width:155px;">
                <%--<div style="float:left;">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/sysimages/index_add.png" />
                </div>
                <div style="float:left;padding-top:1px; font-weight:bold;">
                    &nbsp;<span class="aLink"><a href="AddEditBrandCategory.aspx">Add</a></span>
                </div>--%>
                <div style="float:right;padding-top:1px; font-weight:bold;">
                    &nbsp;<span class="aLink"><a href="ManageBrandCategories.aspx">Manage</a></span>
                </div>
                <div style="float:right;">
                    <a href="ManageBrandCategories.aspx"><asp:Image ID="Image5" runat="server" ImageUrl="~/sysimages/index_view.png" /></a>
                </div>
            </div>
            <div style="position:relative; top:115px; float:left; margin-left: 87px; width:155px;">
                <%--<div style="float:left;">
                    <asp:Image ID="Image6" runat="server" ImageUrl="~/sysimages/index_add.png" />
                </div>
                <div style="float:left;padding-top:1px; font-weight:bold;">
                    &nbsp;<span class="aLink"><a href="AddEditContinent.aspx">Add</a></span>
                </div>--%>
                <div style="float:right;padding-top:1px; font-weight:bold;">
                    &nbsp;<span class="aLink"><a href="ManageContinents.aspx">Manage</a></span>
                </div>
                <div style="float:right;">
                    <a href="ManageContinents.aspx"><asp:Image ID="Image7" runat="server" ImageUrl="~/sysimages/index_view.png" /></a>
                </div>
            </div>
        </div>
        <asp:Image ID="imgLine1" runat="server" ImageUrl="~/sysimages/line_dotted_pg.jpg" style="margin-top:34px;margin-bottom:34px;" />
        <div style="height:171px; width:954px;background:url('../sysimages/row2_blank.png'); background-position:center; background-repeat:no-repeat;">
            <div style="position:relative; top:115px; float:left; margin-left: 0px; width:150px;">
                <%--<div style="float:left;">
                    <asp:Image ID="Image8" runat="server" ImageUrl="~/sysimages/index_add.png" />
                </div>
                <div style="float:left;padding-top:1px; font-weight:bold;">
                    &nbsp;<span class="aLink"><a href="AddEditPerformanceContribution.aspx">Add</a></span>
                </div>--%>
                <div style="float:right;padding-top:1px; font-weight:bold;">
                    &nbsp;<span class="aLink"><a href="ManagePerformanceContributions.aspx">Manage</a></span>
                </div>
                <div style="float:right;">
                    <a href="ManagePerformanceContributions.aspx"><asp:Image ID="Image9" runat="server" ImageUrl="~/sysimages/index_view.png" /></a>
                </div>
            </div>
            <div style="position:relative; top:115px; float:left; margin-left: 87px; width:155px;">
                <%--<div style="float:left;">
                    <asp:Image ID="Image10" runat="server" ImageUrl="~/sysimages/index_add.png" />
                </div>
                <div style="float:left;padding-top:1px; font-weight:bold;">
                    &nbsp;<span class="aLink"><a href="AddEditCompetency.aspx">Add</a></span>
                </div>--%>
                <div style="float:right;padding-top:1px; font-weight:bold;">
                    &nbsp;<span class="aLink"><a href="ManageCompetencies.aspx">Manage</a></span>
                </div>
                <div style="float:right;">
                    <a href="ManageCompetencies.aspx"><asp:Image ID="Image11" runat="server" ImageUrl="~/sysimages/index_view.png" /></a>
                </div>
            </div>
            <div style="position:relative; top:115px; float:left; margin-left: 87px; width:155px;">
                <%--<div style="float:left;">
                    <asp:Image ID="Image12" runat="server" ImageUrl="~/sysimages/index_add.png" />
                </div>
                <div style="float:left;padding-top:1px; font-weight:bold;">
                    &nbsp;<span class="aLink"><a href="AddEditCourse.aspx?CT=1">Add</a></span>
                </div>--%>
                <div style="float:right;padding-top:1px; font-weight:bold;">
                    &nbsp;<span class="aLink"><a href="ManageCourses.aspx">Manage</a></span>
                </div>
                <div style="float:right;">
                    <a href="ManageCourses.aspx?ct=1"><asp:Image ID="Image13" runat="server" ImageUrl="~/sysimages/index_view.png" /></a>
                </div>
            </div>
            <div style="position:relative; top:115px; float:left; margin-left: 87px; width:155px;">
                <%--<div style="float:left;">
                    <asp:Image ID="Image14" runat="server" ImageUrl="~/sysimages/index_add.png" />
                </div>
                <div style="float:left;padding-top:1px; font-weight:bold;">
                    &nbsp;<span class="aLink"><a href="AddEditCourse.aspx?CT=2">Add</a></span>
                </div>--%>
                <div style="float:right;padding-top:1px; font-weight:bold;">
                    &nbsp;<span class="aLink"><a href="ManageInformalCourseHeaders.aspx">Manage</a></span>
                </div>
                <div style="float:right;">
                    <a href="ManageCourses.aspx?ct=2"><asp:Image ID="Image15" runat="server" ImageUrl="~/sysimages/index_view.png" /></a>
                </div>
            </div>
        </div>
        <asp:Image ID="imgLine2" runat="server" ImageUrl="~/sysimages/line_dotted_pg.jpg" style="margin-top:34px;margin-bottom:64px;" />
    </div>
</asp:Content>
