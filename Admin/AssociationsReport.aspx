<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AssociationsReport.aspx.cs" Inherits="MarriottLearningGuides.Admin.AssociationsReport" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Charting" tagprefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
    function OnClientSelectedIndexChanged(sender, eventArgs) {
        var item = eventArgs.get_item();

        if (item != null) {
            // update selected text to prevent xss error if desc contains links
            sender.set_text(item._element.innerText.trim());
        }
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding-bottom: 68px;">
        <div class="PageHeader">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/sysimages/grad_cpage_sub.jpg" Height="22" Width="100%" />
            <img src="../sysimages/copy.png" width="24" height="24" alt="Manage" style="margin-left:5px;" />
            <div style="margin-left: 30px; margin-top: -27px;">
                Associations Report
            </div>
            <asp:Image ID="imgLine2" runat="server" ImageUrl="~/sysimages/line_dotted_pg.jpg" style="margin-top:22px;margin-bottom:22px;" /><br />
        </div>
        <br /><br />
        <div style="margin-top:22px;padding-right:5px;">
         <telerik:RadPanelBar ID="rpbCounts" runat="server" ExpandMode="SingleExpandedItem" AllowCollapseAllItems="true" Width="900px">
                <Items> 
                    <telerik:RadPanelItem Text="Report Counts">
                        <Items>
                            <telerik:RadPanelItem>
                                <ItemTemplate>
                                <div style="line-height:20px; height:265px;">
                                    <div style="float:left;line-height:20px; padding:3px; margin-left:5px; margin-top:12px; font-size:16px;">
                                        Unique Courses:
                                        <br />
                                        <br />
                                        Unique Formal Associations:
                                        <br />
                                        <br />
                                        Unique Informal Associations:
                                        <br />
                                        <br />
                                        Unique Informal Association Bullets:
                                        <br />
                                        <br />
                                        Unique Courses Assigned To A Formal Association:
                                        <br />
                                        <br />
                                        Unique Courses Assigned To An Informal Association:
                                    </div>
                                    <div style="float:left;line-height:20px; padding:3px; margin-left:5px; margin-top:12px; font-size:16px;">
                                        <asp:Literal ID="CourseDistinctCount" runat="server"></asp:Literal>
                                        <br />
                                        <br />
                                        <asp:Literal ID="FormalCourseCount" runat="server"></asp:Literal>
                                        <br />
                                        <br />
                                        <asp:Literal ID="InformalCourseCount" runat="server"></asp:Literal>
                                        <br />
                                        <br />
                                        <asp:Literal ID="InformalBullets" runat="server"></asp:Literal>
                                        <br />
                                        <br />
                                        <asp:Literal ID="FormalCourseDistinctCount" runat="server"></asp:Literal>
                                        <br />
                                        <br />
                                        <asp:Literal ID="InformalCourseDistinctCount" runat="server"></asp:Literal>
                                        <br />
                                        <br />
                                    </div>
                                </div>
                                </ItemTemplate>
                            </telerik:RadPanelItem>
                        </Items>
                    </telerik:RadPanelItem>
                </Items>
            </telerik:RadPanelBar>
            <br />
            <telerik:RadPanelBar ID="rpbFilter" runat="server" ExpandMode="SingleExpandedItem" AllowCollapseAllItems="true" Width="900px">
                <Items> 
                    <telerik:RadPanelItem Text="Report Filters">
                        <Items>
                            <telerik:RadPanelItem>
                                <ItemTemplate>
                                    <div style="line-height:20px; height:380px;">
                                        <div style="width:200px;float:left; line-height:20px; padding:3px; margin-left:5px; margin-top:12px; font-size:16px;">
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
                                        <div style="float:left; line-height:18px; padding:3px; width:315px; margin-top:12px; margin-left:12px;">
                                            <telerik:RadComboBox ID="rcbPositionTypes" runat="server" CheckBoxes="true" Width="600px" EnableCheckAllItemsCheckBox="true"></telerik:RadComboBox>
                                            <br /><br />
                                            <telerik:RadComboBox ID="rcbLeadershipLevels" runat="server" CheckBoxes="true" Width="600px" EnableCheckAllItemsCheckBox="true"></telerik:RadComboBox>
                                            <br /><br />
                                            <telerik:RadComboBox ID="rcbBrandCategories" runat="server" CheckBoxes="true" Width="600px" EnableCheckAllItemsCheckBox="true"></telerik:RadComboBox>
                                            <br /><br />
                                            <telerik:RadComboBox ID="rcbContinents" runat="server" CheckBoxes="true" Width="600px" EnableCheckAllItemsCheckBox="true"></telerik:RadComboBox>
                                            <br /><br />
                                            <telerik:RadComboBox ID="rcbPerformanceContributions" runat="server" CheckBoxes="true" Width="600px" EnableCheckAllItemsCheckBox="true"></telerik:RadComboBox>
                                            <br /><br />
                                            <telerik:RadComboBox ID="rcbCompetencies" runat="server" CheckBoxes="true" Width="600px" EnableCheckAllItemsCheckBox="true"></telerik:RadComboBox>
                                            <br /><br />
                                            <telerik:RadComboBox ID="rcbCourseTypes" runat="server" CheckBoxes="true" Width="600px" EnableCheckAllItemsCheckBox="true"></telerik:RadComboBox>
                                            <br /><br />
                                            <telerik:RadComboBox ID="rcbCategories" runat="server" CheckBoxes="true" Width="600px" EnableCheckAllItemsCheckBox="true"></telerik:RadComboBox>
                                            <br /><br />
                                            <asp:Button ID="btnGenerate" runat="server" Text="Generate Report" 
                                                onclick="btnGenerate_Click" />
                                        </div>
                                    </div>
                                    <div style="line-height:20px; height:200px;">
                                        <div style="width:200px;float:left; line-height:20px; padding:3px; margin-left:5px; margin-top:12px; font-size:16px;">
                                            <span style="font-weight:bold;">OR</span>
                                            <br /><br />
                                            Starting Course Id:
                                            <br /><br />
                                            Ending Course Id:
                                        </div>
                                        <div style="float:left; line-height:18px; padding:3px; width:315px; margin-top:12px; margin-left:12px;">
                                            <br /><br />
                                            <telerik:RadComboBox ID="rcbStartingCourses" runat="server" Height="250px" Width="600px" AllowCustomText="True" EmptyMessage="Select a Starting Course" MarkFirstMatch="True"
                                                 Filter="Contains" EnableLoadOnDemand="True" EnableVirtualScrolling="True" EnableItemCaching="True" ItemRequestTimeout="1000" OnClientSelectedIndexChanged="OnClientSelectedIndexChanged">
                                                 <ItemTemplate>
                                                    <%#Eval("Description") %>
                                                 </ItemTemplate>
                                            </telerik:RadComboBox>
                                            <br /><br />
                                            <telerik:RadComboBox ID="rcbEndingCourses" runat="server" Height="250px" Width="600px" AllowCustomText="True" EmptyMessage="Select an Ending Course" MarkFirstMatch="True"
                                                 Filter="Contains" EnableLoadOnDemand="True" EnableVirtualScrolling="True" EnableItemCaching="True" ItemRequestTimeout="1000" OnClientSelectedIndexChanged="OnClientSelectedIndexChanged">
                                                 <ItemTemplate>
                                                    <%#Eval("Description") %>
                                                 </ItemTemplate>
                                            </telerik:RadComboBox>
                                            <br /><br />
                                            <asp:Button ID="btnGenerate2" runat="server" Text="Generate Report" 
                                                onclick="btnGenerate2_Click" />
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
                     <telerik:RadGrid ID="rgDetails" OnGroupsChanging="rgDetails_GroupsChanging" OnItemCreated="rgDetails_ItemCreated" OnItemCommand="rgDetails_ItemCommand" OnHTMLExporting="rgDetails_HTMLExporting" OnGridExporting="rgDetails_GridExporting" OnItemDataBound="rgDetails_ItemDataBound" OnPageSizeChanged="rgDetails_PageSizeChanged" runat="server" Width="900" PageSize="50" OnNeedDataSource="rgDetails_NeedDataSource" OnColumnCreated="rgDetails_ColumnCreated" OnDetailTableDataBind="rgDetails_DetailTableDataBind" OnPreRender="rgDetails_PreRender">
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
    <asp:HiddenField ID="SelectedStartCourseId" runat="server" />
    <asp:HiddenField ID="SelectedEndCourseId" runat="server" />
    <asp:HiddenField ID="SelectedSearchType" runat="server" />
</asp:Content>