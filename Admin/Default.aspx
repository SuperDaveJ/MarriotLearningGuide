<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MarriottLearningGuides.Admin.Default" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding:5px; width:954px; margin-top:134px;">
        <br /><br />
        <div align="center">
        <asp:Literal ID="ValidationMessage" runat="server"></asp:Literal>
            <asp:Login ID="LoginForm" runat="server" Width="355" EnableViewState="false">
                <LayoutTemplate>
                    <div style="padding:5px; height:115px; width: 360px;">
                        <div style="float:left; line-height:20px; text-align:right; font-weight:bold; padding:3px;">
                            Log On Id:
                            <br /><br />
                            Password:
                        </div>
                        <div style="margin-left: 5px; float:left; line-height:20px; text-align:left; width: 260px;">
                            <telerik:RadTextBox ID="Username" runat="server" Width="250px"></telerik:RadTextBox>
                            <br /><br />
                            <telerik:RadTextBox ID="Password" runat="server" Width="250px" TextMode="Password"></telerik:RadTextBox>
                            <br /><br />
                            <div style="float:right;">
                                <asp:Button ID="LoginButton" runat="server" Text="Log On" Font-Bold="true" 
                                    Font-Size="Medium" onclick="btnLogOn_Click" />
                            </div>
                        </div>
                    </div>
                </LayoutTemplate>
            </asp:Login>
        </div>
    </div>
</asp:Content>
