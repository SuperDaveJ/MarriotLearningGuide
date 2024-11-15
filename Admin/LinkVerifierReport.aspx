<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="LinkVerifierReport.aspx.cs" Inherits="MarriottLearningGuides.Admin.LinkVerifierReport" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding-bottom: 68px;">
        <div class="PageHeader">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/sysimages/grad_cpage_sub.jpg" Height="22" Width="100%" />
            <img src="../sysimages/data_replace.png" width="24" height="24" alt="Manage" style="margin-left:5px;" />
            <div style="margin-left: 30px; margin-top: -27px;">
                Link Verifier Report
            </div>
            <asp:Image ID="imgLine2" runat="server" ImageUrl="~/sysimages/line_dotted_pg.jpg" style="margin-top:22px;margin-bottom:22px;" /><br />
        </div>
        <br /><br />
        <div style="margin-top:22px;">
            <div>
                <asp:Literal ID="ReportSelectionText" runat="server" />
                <span id="LoadingDiv" runat="server" visible="false" >
                    <span style="vertical-align: middle;">
                        <img src="../sysimages/loading.gif" alt="loading" />
                    </span>
                    <span runat="server" style="width: 700px; float:right; position: absolute;">
                        <asp:Button ID="CancelButton" runat="server" Text="Cancel" OnClick="btnCancel_Click"  />
                    </span>
                </span>
            </div>
            <div style="margin-top:22px;padding-right:5px;">
                <telerik:RadPanelBar ID="rpbFilter" runat="server" ExpandMode="SingleExpandedItem" AllowCollapseAllItems="true" Width="900px">
                    <Items> 
                        <telerik:RadPanelItem Text="Report Filters">
                            <Items>
                                <telerik:RadPanelItem>
                                    <ItemTemplate>
                                        <div style="line-height:20px;">
                                            <div style="line-height:20px; padding:3px; margin: 12px 0px 0px 5px;">
                                                <div style="width: 220px; line-height: 20px; font-size: 16px; margin-top: 12px; float: left; font-size:16px;">
                                                    Verify external websites:
                                                    <br /><br />
                                                    Verify internal websites:
                                                    <br /><br />
                                                    Report only invalid websites:
                                                    <br /><br />
                                                    <%--Limit results for testing:
                                                    <br /><br />--%>
                                                </div>
                                                <div style="float:left; line-height:18px; padding:3px; margin-top:10px; margin-left:12px;">
                                                    <asp:CheckBox ID="CheckExternal" runat="server" TextAlign="Left" Checked="true" />
                                                    <asp:Label ID="ExternalUrl" runat="server" Text="(Examples:  www.mindtools.com, managementhelp.org)" />
                                                </div>
                                                <br /><br />
                                                <div style="float:left; line-height:18px; padding:3px; margin-top:10px; margin-left:12px;">
                                                    <asp:CheckBox ID="CheckInternal" runat="server" TextAlign="Left" Checked="true" />
                                                    <asp:Label ID="InternalUrl" runat="server" Text="(Examples:  performancemanager8.successfactors.com, marriott.plateau.com)" />
                                                    <br /><br />
                                                    <asp:CheckBox ID="CheckInvalidOnly" runat="server" TextAlign="Left" Checked="true" />
                                                    <br /><br />
                                                    <asp:CheckBox ID="CheckLimitResults" runat="server" TextAlign="Left" Checked="false" Visible="false"/>
                                                    <%--<br /><br />--%>
                                                    <asp:Button ID="btnGenerate" runat="server" Text="Generate Report" OnClick="btnGenerate_Click" />
                                                    <br /><br />
                                                </div>
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
            <div style="width:954px;">
                <div id="ValidationMessage" runat="server" style="margin-left: 25px;" visible="false">
                    <%--<div style="float:left; padding: 2px; vertical-align: middle">
                        <img src="../sysimages/error.png" alt="error" />
                    </div>--%>
                    <div style="float:left;">
                        <asp:Label ID="ValidationText" runat="server" Text="" style="font-weight:bold; color:Maroon;" />
                    </div>
                    <br /><br />
                </div>
                <div style="padding:5px;">
                    <div id="GridDiv" runat="server">
                        <telerik:RadGrid ID="DetailsGrid" runat="server" Width="900" PageSize="50" OnNeedDataSource="DetailsGrid_NeedDataSource" OnItemCommand="DetailsGrid_ItemCommand"
                            OnHTMLExporting="DetailsGrid_HTMLExporting" OnGridExporting="DetailsGrid_GridExporting" OnItemDataBound="DetailsGrid_ItemDataBound" OnPageSizeChanged="DetailsGrid_PageSizeChanged">
                            <PagerStyle Mode="NextPrevAndNumeric" />
                        </telerik:RadGrid>
                    </div>
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Tick" Enabled="false" />
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
    <asp:HiddenField ID="GridLoadingHidden" runat="server" />
</asp:Content>