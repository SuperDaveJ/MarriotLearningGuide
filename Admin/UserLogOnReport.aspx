<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UserLogOnReport.aspx.cs" Inherits="MarriottLearningGuides.Admin.UserLogOnReport" MaintainScrollPositionOnPostback="true" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Charting" tagprefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding-bottom: 68px;">
        <div style="background-color:#eeeeee; margin:0px;">
            <div class="PageHeader" style="width:954px;">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/sysimages/gradient_uppermid.jpg" Height="22" Width="100%" />
                <img src="../sysimages/report_logon.png" width="24" height="24" alt="Manage" />
                <div style="margin-left: 30px; margin-top: -27px;">
                    User Log On Report
                </div>
                <asp:Image ID="imgLine2" runat="server" ImageUrl="~/sysimages/line_dotted_pg.jpg" style="margin-top:22px;margin-bottom:22px;" /><br />
            </div>
            <br /><br />
            <div style="margin-top:22px;height:105px;width:954px;margin-bottom:0px;padding-bottom:34px;">
                <div style="float:left; line-height:20px; padding:3px;">
                    Start Date:
                    <br /><br />
                    End Date:
                </div>
                <div style="float:left; line-height:17px; padding:3px;margin-left:12px;" align="left">
                    <telerik:RadDatePicker ID="StartDate" runat="server"></telerik:RadDatePicker>
                    <br />
                    <telerik:RadDatePicker ID="EndDate" runat="server"></telerik:RadDatePicker>
                    <br />
                    <asp:Button ID="btnGenerate" runat="server" Text="Generate Report" 
                        onclick="btnGenerate_Click" />
                </div>
            </div>
        </div>
        <div style="width:954px;">
            <asp:Image ID="Image4" runat="server" ImageUrl="~/sysimages/grad_cpage_sub.jpg" Height="22" Width="100%" />
        </div>
        <br />
        <br />
        <div style="width:954px;">
            <asp:Literal ID="ValidationMessage" runat="server"></asp:Literal>
            <div style="padding:5px;">
                <div>
                    <telerik:RadChart ID="rcDetails" OnItemDataBound="rcDetails_ItemDataBound" runat="server" Width="900" Height="600" AutoLayout="true"></telerik:RadChart>
                </div>
                <br /><br />
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
</asp:Content>