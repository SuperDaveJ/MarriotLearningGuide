<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageLeadershipLevels.aspx.cs" Inherits="MarriottLearningGuides.Admin.ManageLeadershipLevels" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:954px; padding-bottom: 30px;">
        <div class="PageHeader">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/sysimages/grad_cpage_sub.jpg" Height="22" Width="100%" />
            <img src="../sysimages/businessman.png" width="24" height="24" alt="Manage" />
            <div style="margin-left: 30px; margin-top: -27px;">
                Manage Leadership Levels
            </div>
            <asp:Image ID="imgLine2" runat="server" ImageUrl="~/sysimages/line_dotted_pg.jpg" style="margin-top:22px;margin-bottom:22px;" /><br />
        </div>
        <br /><br />
        <div style="margin-top:22px;">
            <asp:Literal ID="ValidationMessage" runat="server"></asp:Literal>
            <telerik:RadAjaxManagerProxy ID="AjaxManagerProxy1" runat="server">
                <AjaxSettings> 
                    <telerik:AjaxSetting AjaxControlID="rgMain">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="rgMain"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtName"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="cbEnabled"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtSortOrder"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="hdnID"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnInsertUpdate"></telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                    <telerik:AjaxSetting AjaxControlID="rwAddEdit">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="ValidationMessage"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rgMain"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtName"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="cbEnabled"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtSortOrder"></telerik:AjaxUpdatedControl>
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
                            <telerik:AjaxUpdatedControl ControlID="cbEnabled"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="txtSortOrder"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="hdnID"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                    <telerik:AjaxSetting AjaxControlID="btnAddNew">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="btnInsertUpdate"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="btnAddNew"></telerik:AjaxUpdatedControl>
                            <telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl><telerik:AjaxUpdatedControl ControlID="rwAddEdit"></telerik:AjaxUpdatedControl>
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                </AjaxSettings> 
            </telerik:RadAjaxManagerProxy>
            <div align="right" style="padding-bottom:12px;">
                <asp:Button ID="btnAddNew" runat="server" Text="Add New Leadership Level" OnCommand="SetupAddEdit_Command" CommandName="SetupAddItem" />
            </div>
            <telerik:RadGrid ID="rgMain" runat="server" OnHTMLExporting="rgMain_HTMLExporting" OnGridExporting="rgMain_GridExporting" OnItemCommand="rgMain_ItemCommand" OnPageSizeChanged="rgMain_PageSizeChanged" PageSize="50" OnNeedDataSource="rgMain_NeedDataSource">
                <PagerStyle Mode="NextPrevAndNumeric" />
                <MasterTableView DataKeyNames="ID">
                    <Columns>
                        <telerik:GridBoundColumn  HeaderStyle-Width="60%" ItemStyle-HorizontalAlign="Left" UniqueName="Name" HeaderText="Name" DataField="Name" HeaderStyle-HorizontalAlign="Left">
                        </telerik:GridBoundColumn>
                        <telerik:GridCheckBoxColumn HeaderStyle-Width="10%" UniqueName="Enabled" HeaderText="Enabled" DataField="Enabled" HeaderStyle-HorizontalAlign="Center"></telerik:GridCheckBoxColumn>
                        <telerik:GridNumericColumn HeaderStyle-Width="10%" UniqueName="SortOrder" HeaderText="Sort Order" DataField="SortOrder" DecimalDigits="0" NumericType="Number" HeaderStyle-HorizontalAlign="Center"></telerik:GridNumericColumn>
                         <telerik:GridTemplateColumn HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="10%" HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbEdit" runat="server" Text="Edit" OnCommand="SetupAddEdit_Command" CommandName="SetupEditItem" CommandArgument='<%#Eval("ID") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridButtonColumn HeaderStyle-HorizontalAlign="Center" HeaderText="Delete" HeaderStyle-Width="10%" CommandName="Delete" Text="Delete" UniqueName="column" ConfirmText="*** DELETING THIS ITEM WILL RESULT IN ANY ASSOCIATED COURSEWARE ALSO BEING DELETED *** \r\n\r\nAre you sure you want to delete this Position Type?"></telerik:GridButtonColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
            <telerik:RadWindowManager ID="RadWindowManager1" runat="server" EnableShadow="true" IconUrl="../sysimages/businessman_16x16.png">
                <Windows>
                    <telerik:RadWindow ID="rwAddEdit" runat="server" Title="Add Leadership Level"
                        Width="515px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false"
                        Modal="true"  Behaviors="Close" VisibleStatusbar="false">
                        <ContentTemplate>
                            <asp:HiddenField ID="hdnID" runat="server" />
                            <table id="Table1" cellspacing="1" cellpadding="3" width="456" border="0" style="margin-left:20px; margin-top: 12px;">
                                <tr>
                                    <td colspan="2">
                                        <asp:Literal ID="ValidationMessageWindow" runat="server"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="font-size:12px;">
                                        <span style="color:Red;">* indicates a required field</span>
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size:12px;">
                                        Name: <span style="color:Red;">*</span> 
                                    </td>
                                    <td align="left">
                                        <telerik:RadTextBox Width="360px" ID="txtName" runat="server" MaxLength="100"></telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size:12px;">
                                        Enabled: <span style="color:Red;">*</span> 
                                    </td>
                                    <td align="left">
                                        <asp:CheckBox ID="cbEnabled" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size:12px;">
                                        Sort Order: <span style="color:Red;">*</span> 
                                    </td>
                                    <td align="left">
                                        <telerik:RadNumericTextBox Width="40px" MaxLength="4"  MinValue="1" MaxValue="1000" ID="txtSortOrder" runat="server" NumberFormat-DecimalDigits="0" Type="Number" Value="1"></telerik:RadNumericTextBox>
                                    </td>
                                </tr>
                            </table>
                            <table width="456">
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button ID="btnInsertUpdate" Text='Insert'
                                            runat="server" CommandName='PerformInsert' OnCommand="AddEdit_Command">
                                        </asp:Button>
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </telerik:RadWindow>
                </Windows>
            </telerik:RadWindowManager>
        </div>
    </div>
</asp:Content>
