<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageCourses.aspx.cs" Inherits="MarriottLearningGuides.Admin.ManageCourses" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:954px; padding-bottom: 30px;">
        <div class="PageHeader">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/sysimages/grad_cpage_sub.jpg" Height="22" Width="100%" />
            <img src="../sysimages/user1_monitor.png" width="24" height="24" alt="Manage" />
            <div style="margin-left: 30px; margin-top: -27px;">
                Manage Courses
            </div>
            <asp:Image ID="imgLine2" runat="server" ImageUrl="~/sysimages/line_dotted_pg.jpg" style="margin-top:22px;margin-bottom:22px;" /><br />
        </div>
        <br />
        <br />
        <div style="margin-top:22px;">
        Use Filters to find a Course to Edit or Delete:
        <br />
        <br />
        <telerik:RadAjaxManagerProxy ID="AjaxManagerProxy1" runat="server">
            <AjaxSettings>
                <telerik:AjaxSetting AjaxControlID="rgMain">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="SelectedCourseType"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedPositionType"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedLeadershipLevel"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedBrandCategory"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedContinent"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedPerformanceContribution"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedCompetency"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedCourseId"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedTitle"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rgMain"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtName"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="hdnID"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnInsertUpdate"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rpbFilter"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlCourseTypes"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlPositionTypes"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlLeadershipLevels"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlBrandCategories"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlContinents"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlPerformanceContributions"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlCompetencies"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtTitle"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnSearch"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnAddNew"></telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                    <telerik:AjaxSetting AjaxControlID="rwAddEdit">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="SelectedCourseType"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedPositionType"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedLeadershipLevel"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedBrandCategory"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedContinent"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedPerformanceContribution"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedCompetency"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedCourseId"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedTitle"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessageWindow"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rgMain"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtName"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="hdnID"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnInsertUpdate"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rpbFilter"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlCourseTypes"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlPositionTypes"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlLeadershipLevels"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlBrandCategories"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlContinents"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlPerformanceContributions"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlCompetencies"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtTitle"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnSearch"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnAddNew"></telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                    <telerik:AjaxSetting AjaxControlID="btnInsertUpdate">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="SelectedCourseType"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedPositionType"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedLeadershipLevel"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedBrandCategory"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedContinent"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedPerformanceContribution"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedCompetency"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedCourseId"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedTitle"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessageWindow"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rgMain"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtName"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="hdnID"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnInsertUpdate"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rpbFilter"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlCourseTypes"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlPositionTypes"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlLeadershipLevels"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlBrandCategories"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlContinents"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlPerformanceContributions"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlCompetencies"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtTitle"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnSearch"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnAddNew"></telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                    <telerik:AjaxSetting AjaxControlID="btnAddNew">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="SelectedCourseType"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedPositionType"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedLeadershipLevel"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedBrandCategory"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedContinent"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedPerformanceContribution"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedCompetency"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedCourseId"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedTitle"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessageWindow"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rgMain"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtName"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="hdnID"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnInsertUpdate"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rpbFilter"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlCourseTypes"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlPositionTypes"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlLeadershipLevels"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlBrandCategories"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlContinents"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlPerformanceContributions"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlCompetencies"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtTitle"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnSearch"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnAddNew"></telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                    <telerik:AjaxSetting AjaxControlID="txtName">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="SelectedCourseType"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedPositionType"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedLeadershipLevel"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedBrandCategory"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedContinent"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedPerformanceContribution"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedCompetency"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedCourseId"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedTitle"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessageWindow"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rgMain"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtName"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="hdnID"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnInsertUpdate"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rpbFilter"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlCourseTypes"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlPositionTypes"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlLeadershipLevels"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlBrandCategories"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlContinents"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlPerformanceContributions"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlCompetencies"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtTitle"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnSearch"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnAddNew"></telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                    <telerik:AjaxSetting AjaxControlID="rpbFilter">
                    <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="SelectedCourseType"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedPositionType"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedLeadershipLevel"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedBrandCategory"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedContinent"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedPerformanceContribution"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedCompetency"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedCourseId"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="SelectedTitle"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessageWindow"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rgMain"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtName"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="hdnID"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnInsertUpdate"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rpbFilter"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlCourseTypes"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlPositionTypes"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlLeadershipLevels"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlBrandCategories"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlContinents"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlPerformanceContributions"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ddlCompetencies"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtTitle"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnSearch"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnAddNew"></telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="ddlCourseTypes">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlCourseTypes"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlPositionTypes"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlLeadershipLevels"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlBrandCategories"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlContinents"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlPerformanceContributions"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlCompetencies"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="txtTitle"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="btnSearch"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="ddlPositionTypes">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlPositionTypes"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlLeadershipLevels"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlBrandCategories"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlContinents"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlPerformanceContributions"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlCompetencies"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="txtTitle"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="btnSearch"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="ddlLeadershipLevels">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlLeadershipLevels"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlBrandCategories"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlContinents"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlPerformanceContributions"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlCompetencies"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="txtTitle"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="btnSearch"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="ddlBrandCategories">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlBrandCategories"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlContinents"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlPerformanceContributions"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlCompetencies"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="txtTitle"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="btnSearch"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="ddlContinents">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlContinents"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlPerformanceContributions"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlCompetencies"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="txtTitle"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="btnSearch"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="ddlPerformanceContributions">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlPerformanceContributions"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="ddlCompetencies"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="txtTitle"></telerik:AjaxUpdatedControl>
                        <telerik:AjaxUpdatedControl ControlID="btnSearch"></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
            </AjaxSettings>
        </telerik:RadAjaxManagerProxy>
        <telerik:RadPanelBar ID="rpbFilter" runat="server" ExpandMode="SingleExpandedItem" AllowCollapseAllItems="true" Width="100%">
            <Items> 
                <telerik:RadPanelItem Text="Filters">
                    <Items>
                        <telerik:RadPanelItem>
                            <ItemTemplate>
                                <div style="margin:0px auto;border:0px;padding:10px;width:auto;height:310px;line-height:20px;">
                                    <div style="float: left; padding:3px; font-weight:bold; text-align:left;line-height:20px;">
                                        Course Type:
                                        <br /><br />
                                        Position Type:
                                        <br /><br />
                                        Leadership Level:
                                        <br /><br />
                                        Brand Category:
                                        <br /><br />
                                        Continent:
                                        <br /><br />
                                        Perf. Contrib.:
                                        <br /><br />
                                        Competency:
                                        <br /><br />
                                        Name:
                                        <br /><br />
                                    </div>
                                    <div style="float: left; padding:3px; text-align:left; margin-left:11px;line-height:18px;">
                                        <asp:DropDownList ID="ddlCourseTypes" Width="400px" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCourseTypes_SelectedIndexChanged"></asp:DropDownList>
                                        <br />
                                        <asp:DropDownList ID="ddlPositionTypes" Width="400px" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPositionTypes_SelectedIndexChanged"></asp:DropDownList>
                                        <br />
                                        <asp:DropDownList ID="ddlLeadershipLevels" Width="400px" runat="server" Enabled="false" AutoPostBack="true" OnSelectedIndexChanged="ddlLeadershipLevels_SelectedIndexChanged"></asp:DropDownList>
                                        <br />
                                        <asp:DropDownList ID="ddlBrandCategories" Width="400px" runat="server" Enabled="false" AutoPostBack="true" OnSelectedIndexChanged="ddlBrandCategories_SelectedIndexChanged"></asp:DropDownList>
                                        <br />
                                        <asp:DropDownList ID="ddlContinents" Width="400px" runat="server" Enabled="false" AutoPostBack="true" OnSelectedIndexChanged="ddlContinents_SelectedIndexChanged"></asp:DropDownList>
                                        <br />
                                        <asp:DropDownList ID="ddlPerformanceContributions" Width="400px" runat="server" Enabled="false" AutoPostBack="true" OnSelectedIndexChanged="ddlPerformanceContributions_SelectedIndexChanged"></asp:DropDownList>
                                        <br />
                                        <asp:DropDownList ID="ddlCompetencies" Width="400px" runat="server" Enabled="false"></asp:DropDownList>
                                        <br />
                                        <telerik:RadTextBox Width="400px" ID="txtTitle" runat="server" MaxLength="100"></telerik:RadTextBox>
                                        <br />
                                        <asp:Button ID="btnSearch" runat="server" Text="Filter" Font-Bold="true" 
                                            Font-Size="Medium" onclick="btnSearch_Click" />
                                    </div>
                                </div>
                            </ItemTemplate>
                        </telerik:RadPanelItem>
                    </Items>
                </telerik:RadPanelItem>
            </Items>
        </telerik:RadPanelBar>
        <br /><br />
        <asp:Literal ID="ValidationMessage" runat="server"></asp:Literal>
        <div align="right" style="padding-bottom:12px;">
            <div style="padding-bottom:12px;">
                <asp:Button ID="btnAddNew" runat="server" Text="Add New Course" OnCommand="SetupAddEdit_Command" CommandName="SetupAddItem" />
            </div>
        </div>
        <telerik:RadGrid ID="rgMain" runat="server" OnHTMLExporting="rgMain_HTMLExporting" OnGridExporting="rgMain_GridExporting" OnItemCommand="rgMain_ItemCommand" OnPageSizeChanged="rgMain_PageSizeChanged" PageSize="50" OnNeedDataSource="rgMain_NeedDataSource">
            <PagerStyle Mode="NextPrevAndNumeric" />
            <MasterTableView DataKeyNames="CourseId">
                <Columns>
                    <telerik:GridBoundColumn HeaderStyle-Width="50%" UniqueName="Description" HeaderText="Description" DataField="Description" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left"></telerik:GridBoundColumn>
                    <telerik:GridTemplateColumn HeaderText="Edit" HeaderStyle-Width="10%" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:LinkButton ID="lbEdit" runat="server" Text="Edit" OnCommand="SetupAddEdit_Command" CommandName="SetupEditItem" CommandArgument='<%#Eval("CourseId") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn HeaderText="Manage Associations" HeaderStyle-Width="15%" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:LinkButton ID="lblAssociations" runat="server" Text="Manage Associations" OnCommand="SetupAddEdit_Command" CommandName="SetupAssocationItem" CommandArgument='<%#Eval("CourseId") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
                    <telerik:GridButtonColumn HeaderText="Delete" HeaderStyle-Width="10%" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" CommandName="Delete" Text="Delete" UniqueName="column" ConfirmText="Are you sure you want to delete this course?"></telerik:GridButtonColumn>
                </Columns>
            </MasterTableView>
        </telerik:RadGrid>
        <telerik:RadWindow ID="rwAddEdit" EnableShadow="true" IconUrl="../sysimages/id_card_16x16.png" OnClientShow="EditBulletWindowShow" CssClass="DialogWindow" runat="server" Title="Add Bullet"
            Width="700px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false"
            Modal="true" Behaviors="Close" VisibleStatusbar="false">
            <ContentTemplate>
                <asp:HiddenField ID="hdnID" runat="server" />
                <table id="Table1" cellspacing="1" cellpadding="3" width="456" border="0" style="margin-left:20px; margin-top: 12px;">
                    <tr>
                        <td>
                            <asp:Literal ID="ValidationMessageWindow" runat="server"></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size:12px;">
                            <span style="color:Red;">* indicates a required field</span>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size:12px;">
                            Name: <span style="color:Red;">*</span> 
                            <br />
                            <br />
                            <telerik:RadEditor CssClass="EditorWindow" runat="server" ID="txtName" Height="415" Width="600" OnClientSelectionChange="EditorOnClientSelectionChange">
                            </telerik:RadEditor>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnInsertUpdate" Text='Insert'
                                runat="server" CommandName='PerformInsert' OnCommand="AddEdit_Command">
                            </asp:Button>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </telerik:RadWindow>
    </div>
    <asp:HiddenField ID="SelectedCourseType" runat="server" />
    <asp:HiddenField ID="SelectedPositionType" runat="server" />
    <asp:HiddenField ID="SelectedLeadershipLevel" runat="server" />
    <asp:HiddenField ID="SelectedBrandCategory" runat="server" />
    <asp:HiddenField ID="SelectedContinent" runat="server" />
    <asp:HiddenField ID="SelectedPerformanceContribution" runat="server" />
    <asp:HiddenField ID="SelectedCompetency" runat="server" />
    <asp:HiddenField ID="SelectedCourseId" runat="server" />
    <asp:HiddenField ID="SelectedTitle" runat="server" />
</asp:Content>

