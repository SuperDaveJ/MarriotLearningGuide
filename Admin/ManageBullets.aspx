<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageBullets.aspx.cs" Inherits="MarriottLearningGuides.Admin.ManageBullets" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:954px; padding-bottom: 30px;">
        <div class="PageHeader">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/sysimages/grad_cpage_sub.jpg" Height="22" Width="100%" />
            <img src="../sysimages/user1_monitor.png" width="24" height="24" alt="Manage" />
            <div style="margin-left: 30px; margin-top: -27px;">
                Manage Bullets
            </div>
            <asp:Image ID="imgLine2" runat="server" ImageUrl="~/sysimages/line_dotted_pg.jpg" style="margin-top:22px;margin-bottom:22px;" /><br />
        </div>
        <br />
        <br />
        <div style="margin-top:22px;">
            <div style="text-align:left;">
                 <asp:Literal ID="CourseTitle" runat="server"></asp:Literal>
                 <br />
                 <asp:Literal ID="AssociationTitle" runat="server"></asp:Literal>
            </div>
            <asp:Literal ID="ValidationMessage" runat="server"></asp:Literal>
            <telerik:RadAjaxManagerProxy ID="AjaxManagerProxy1" runat="server">
                <AjaxSettings> 
                    <telerik:AjaxSetting AjaxControlID="rgMain">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="rgMain"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtName"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="hdnID"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnInsertUpdate"></telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                    <telerik:AjaxSetting AjaxControlID="rwAddEdit">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rgMain"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtName"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="hdnID"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnInsertUpdate"></telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                    <telerik:AjaxSetting AjaxControlID="btnInsertUpdate">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="btnInsertUpdate"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessageWindow"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rgMain"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtName"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="hdnID"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                    <telerik:AjaxSetting AjaxControlID="btnAddNew">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="btnInsertUpdate"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnAddNew"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                    <telerik:AjaxSetting AjaxControlID="txtName">
                        <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="txtName"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnInsertUpdate"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnAddNew"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                </AjaxSettings> 
            </telerik:RadAjaxManagerProxy>
            <div style="height:40px;">
                <div style="float:left;padding-bottom:12px;">
                    <asp:Button ID="btnReturn" runat="server" Text="Return To Course Listing" 
                        onclick="btnReturn_Click" />
                        &nbsp;
                        <asp:Button ID="btnReturnAssoc" runat="server" Text="Return To Association Listing" 
                        onclick="btnReturnAssoc_Click" />
                </div>
                <div style="float:right;padding-bottom:12px;">
                    <asp:Button ID="btnAddNew" runat="server" Text="Add New Bullet" OnCommand="SetupAddEdit_Command" CommandName="SetupAddItem" />
                </div>
            </div>
            <telerik:RadGrid ID="rgMain" runat="server" OnHTMLExporting="rgMain_HTMLExporting" OnGridExporting="rgMain_GridExporting" OnItemCommand="rgMain_ItemCommand" OnPageSizeChanged="rgMain_PageSizeChanged" PageSize="50" OnNeedDataSource="rgMain_NeedDataSource">
                <PagerStyle Mode="NextPrevAndNumeric" />
                <MasterTableView DataKeyNames="ID">
                    <Columns>
                        <telerik:GridBoundColumn  HeaderStyle-Width="60%" ItemStyle-HorizontalAlign="Left" UniqueName="Name" HeaderText="Name" DataField="Name" HeaderStyle-HorizontalAlign="Left">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn  HeaderStyle-Width="20%" ItemStyle-HorizontalAlign="Center" UniqueName="SortOrder" HeaderText="Sort Order" DataField="SortOrder" HeaderStyle-HorizontalAlign="Center">
                        </telerik:GridBoundColumn>
                         <telerik:GridTemplateColumn HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="10%" HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbEdit" runat="server" Text="Edit" OnCommand="SetupAddEdit_Command" CommandName="SetupEditItem" CommandArgument='<%#Eval("ID") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridButtonColumn HeaderStyle-HorizontalAlign="Center" HeaderText="Delete" HeaderStyle-Width="10%" CommandName="Delete" Text="Delete" UniqueName="column" ConfirmText="Are you sure you want to delete this Bullet?"></telerik:GridButtonColumn>
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
                            <td colspan="2">
                                <asp:Literal ID="ValidationMessageWindow" runat="server"></asp:Literal>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size:12px;" colspan="2">
                                <span style="color:Red;">* indicates a required field</span>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size:12px;" colspan="2">
                                Name: <span style="color:Red;">*</span> 
                                <br />
                                <br />
                                <telerik:RadEditor CssClass="EditorWindow" runat="server" ID="txtName" Height="380" Width="600" OnClientSelectionChange="EditorOnClientSelectionChange">
                                </telerik:RadEditor>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size:12px; width: 80px;">
                                Sort Order:  <span style="color:Red;">*</span> 
                            </td>
                            <td align="left">
                                <telerik:RadNumericTextBox Width="40px" MaxLength="4" MinValue="1" MaxValue="1000" ID="txtSortOrder" runat="server" NumberFormat-DecimalDigits="0" Type="Number" Value="1"></telerik:RadNumericTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="btnInsertUpdate" Text='Insert'
                                    runat="server" CommandName='PerformInsert' OnCommand="AddEdit_Command">
                                </asp:Button>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </telerik:RadWindow>
        </div>
    </div>
</asp:Content>