<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="LearningActivityReport.aspx.cs" Inherits="MarriottLearningGuides.Admin.LearningActivityReport" MaintainScrollPositionOnPostback="true" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Charting" tagprefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding-bottom: 68px;">
        <div class="PageHeader">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/sysimages/grad_cpage_sub.jpg" Height="22" Width="100%" />
            <img src="../sysimages/report_guide.png" width="24" height="24" alt="Manage" />
            <div style="margin-left: 30px; margin-top: -27px;">
                Learning Activity Report
            </div>
            <asp:Image ID="imgLine2" runat="server" ImageUrl="~/sysimages/line_dotted_pg.jpg" style="margin-top:22px;margin-bottom:22px;" /><br />
        </div>
        <br /><br />
        <div style="margin-top:22px;padding-right:5px;">
            <telerik:RadPanelBar ID="rpbFilter" runat="server" ExpandMode="SingleExpandedItem" AllowCollapseAllItems="true" Width="900px">
                <Items> 
                    <telerik:RadPanelItem Text="Report Filters">
                        <Items>
                            <telerik:RadPanelItem>
                                <ItemTemplate>
                                    <div style="line-height:20px; height:465px;">
                                        <div style="float:left; line-height:20px; padding:3px; margin-left:5px; margin-top:12px; font-size:16px;">
                                            Start Date:
                                            <br /><br />
                                            End Date:
                                            <br /><br />
                                            Position Types:
                                            <br /><br />
                                            Leadership Levels:
                                            <br /><br />
                                            Brand Categories:
                                            <br /><br />
                                            Continents:
                                            <br /><br />
                                            Performance Contributions:
                                            <br /><br />
                                            Competencies:
                                            <br /><br />
                                            Course Types:
                                            <br /><br />
                                            Categories:
                                        </div>
                                        <div style="float:left; line-height:18px; padding:3px; height:400px; width:315px; margin-top:12px; margin-left:12px;" align="left">
                                            <telerik:RadDatePicker ID="StartDate" runat="server"></telerik:RadDatePicker>
                                            <br />
                                            <telerik:RadDatePicker ID="EndDate" runat="server"></telerik:RadDatePicker>
                                            <br />
                                            <telerik:RadComboBox ID="rcbPositionTypes" runat="server" CheckBoxes="true" Width="500px" EnableCheckAllItemsCheckBox="true"></telerik:RadComboBox>
                                            <br /><br />
                                            <telerik:RadComboBox ID="rcbLeadershipLevels" runat="server" CheckBoxes="true" Width="500px" EnableCheckAllItemsCheckBox="true"></telerik:RadComboBox>
                                            <br /><br />
                                            <telerik:RadComboBox ID="rcbBrandCategories" runat="server" CheckBoxes="true" Width="500px" EnableCheckAllItemsCheckBox="true"></telerik:RadComboBox>
                                            <br /><br />
                                            <telerik:RadComboBox ID="rcbContinents" runat="server" CheckBoxes="true" Width="500px" EnableCheckAllItemsCheckBox="true"></telerik:RadComboBox>
                                            <br /><br />
                                            <telerik:RadComboBox ID="rcbPerformanceContributions" runat="server" CheckBoxes="true" Width="500px" EnableCheckAllItemsCheckBox="true"></telerik:RadComboBox>
                                            <br /><br />
                                            <telerik:RadComboBox ID="rcbCompetencies" runat="server" CheckBoxes="true" Width="500px" EnableCheckAllItemsCheckBox="true"></telerik:RadComboBox>
                                            <br /><br />
                                            <telerik:RadComboBox ID="rcbCourseTypes" runat="server" CheckBoxes="true" Width="500px" EnableCheckAllItemsCheckBox="true"></telerik:RadComboBox>
                                            <br /><br />
                                            <telerik:RadComboBox ID="rcbCategories" runat="server" CheckBoxes="true" Width="500px" EnableCheckAllItemsCheckBox="true"></telerik:RadComboBox>
                                            <br /><br />
                                            <asp:Button ID="btnGenerate" runat="server" Text="Generate Report" 
                                                onclick="btnGenerate_Click" />
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </telerik:RadPanelItem>
                        </Items>
                    </telerik:RadPanelItem>
                </Items>
            </telerik:RadPanelBar>
        </div>        
        <br />
        <br />
        <div style="width:954px;">
            <asp:Literal ID="ValidationMessage" runat="server"></asp:Literal>
            <div style="padding:5px;">
                <div>
                     <telerik:RadGrid ID="rgDetails" OnItemCreated="rgDetails_ItemCreated" OnItemCommand="rgDetails_ItemCommand" OnHTMLExporting="rgDetails_HTMLExporting" OnGridExporting="rgDetails_GridExporting" OnItemDataBound="rgDetails_ItemDataBound" OnPageSizeChanged="rgDetails_PageSizeChanged" runat="server" Width="900" PageSize="50" OnNeedDataSource="rgDetails_NeedDataSource">
                        <PagerStyle Mode="NextPrevAndNumeric" />
                    </telerik:RadGrid>
                </div>
            </div>
        </div>
    </div>
    <asp:HiddenField ID="SelectedStartDate" runat="server" />
    <asp:HiddenField ID="SelectedEndDate" runat="server" />
    <asp:HiddenField ID="SelectedPositionTypes" runat="server" />
    <asp:HiddenField ID="SelectedLeadershipLevels" runat="server" />
    <asp:HiddenField ID="SelectedBrandCategories" runat="server" />
    <asp:HiddenField ID="SelectedContinents" runat="server" />
    <asp:HiddenField ID="SelectedPerformanceContributions" runat="server" />
    <asp:HiddenField ID="SelectedCompetencies" runat="server" />
    <asp:HiddenField ID="SelectedCourseTypes" runat="server" />
    <asp:HiddenField ID="SelectedCategories" runat="server" />
</asp:Content>
