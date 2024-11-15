<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ChangeLogOnIdOrPassword.aspx.cs" Inherits="MarriottLearningGuides.Admin.ChangeLogOnIdOrPassword" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:954px; height: 864px;">
       <div class="PageHeader">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/sysimages/grad_cpage_sub.jpg" Height="22" Width="100%" />
            <img src="../sysimages/key1.png" width="24" height="24" alt="Manage" />
            <div style="margin-left: 30px; margin-top: -27px;">
                Change Log On ID or Password
            </div>
            <asp:Image ID="imgLine2" runat="server" ImageUrl="~/sysimages/line_dotted_pg.jpg" style="margin-top:22px;margin-bottom:22px;" /><br />
        </div>
        <br /><br />
        <div align="center" style="margin-top:22px;">
        <asp:Literal ID="ValidationMessage" runat="server"></asp:Literal>
            <div style="padding:5px; height:195px; width:437px;">
                <span style="color:Red;">* indicates a required field</span>
                <br />
                <br />
                <div style="float:left; line-height:23px; text-align:right; font-weight:bold; padding:3px; margin-left: 12px; margin-top: 12px;">
                    Log On ID: <span style="color:Red;">*</span> 
                    <br /><br />
                    Password:
                    <br /><br />
                    Re-Type Password:
                </div>
                <div style="float:left; line-height:27px; text-align:left; margin-left: 12px; margin-top: 12px;">
                    <telerik:RadTextBox ID="LogOnId" runat="server" Width="244px" MaxLength="15"></telerik:RadTextBox>
                    <br />
                    <br />
                    <telerik:RadTextBox ID="Password" runat="server" Width="244px" MaxLength="15" TextMode="Password"></telerik:RadTextBox>
                    <br />
                    <br />
                    <telerik:RadTextBox ID="Password2" runat="server" Width="244px" MaxLength="15" TextMode="Password"></telerik:RadTextBox>
                    <br />
                    <br />
                    <asp:Button ID="btnUpdate" runat="server" Text="Update Information" Font-Bold="true" 
                        Font-Size="Medium" onclick="btnUpdate_Click" />
                    
                </div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <span style="font-weight:bold;">Log on id must be between 6 and 15 characters in length.</span>
                <br />
                <br />
                <span style="font-weight:bold;">Password must be between 6 and 15 characters in length.</span>
                <br />
            </div>
        </div>
    </div>
</asp:Content>
