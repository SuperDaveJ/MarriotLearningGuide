<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditInstructions.aspx.cs" Inherits="MarriottLearningGuides.Admin.EditInstructions" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:954px; padding-bottom:34px;">
        <div class="PageHeader">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/sysimages/grad_cpage_sub.jpg" Height="22" Width="100%" />
            <img src="../sysimages/document_info.png" width="24" height="24" alt="Manage" />
            <div style="margin-left: 30px; margin-top: -27px;">
                Edit Instructions & Disclaimer
            </div>
            <asp:Image ID="imgLine2" runat="server" ImageUrl="~/sysimages/line_dotted_pg.jpg" style="margin-top:22px;margin-bottom:22px;" /><br />
        </div>
        <br /><br />
        <div style="margin-top:22px;">
        <asp:Literal ID="ValidationMessage" runat="server"></asp:Literal>
            <div>
                <div style="text-align:left;">
                    <span style="color:Red;">* indicates a required field</span>
                    <br />
                    <br />
                </div>
                <div style="font-weight:bold; padding:3px; font-size:18px; text-align:left;">
                    <span style="text-decoration: underline;">Instructions</span> <span style="color:Red;">*</span> 
                </div>
                <div style="margin-top: 10px;text-align:left;">
                    <telerik:RadEditor runat="server" ID="raInstructions" Height="515" Width="954" OnClientSelectionChange="EditorOnClientSelectionChange">
                    </telerik:RadEditor>
                </div>
                <div style="font-weight:bold; padding:3px; font-size:18px; margin-top: 34px; text-align:left;">
                    <span style="text-decoration: underline;">Disclaimer</span> <span style="color:Red;">*</span> 
                </div>
                <div style="margin-top: 10px;text-align:left;">
                    <telerik:RadEditor runat="server" ID="raDisclaimer" Height="300" Width="954" OnClientSelectionChange="EditorOnClientSelectionChange">
                    </telerik:RadEditor>
                </div>
                <br /><br />
                <div align="right">
                    <asp:Button ID="btnSave" runat="server" Text="Save Instructions & Disclaimer" 
                        Font-Bold="true" Font-Size="Medium" onclick="btnSave_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
