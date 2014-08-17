<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="testApplic.Admin.EditUser" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset>
                        <legend>Изменить сведения о пароле</legend>
                        <ol>
                            <li>
                                <asp:Label runat="server" ID="UserNameLabel" AssociatedControlID="UserName">User Name</asp:Label>
                                <asp:TextBox runat="server" ID="UserName" CssClass="" TextMode="SingleLine" Enabled="False" />
                            </li>
                            <li>
                                <asp:Label runat="server" ID="LoginLabel" AssociatedControlID="Login">Login</asp:Label>
                                <asp:TextBox runat="server" ID="Login" CssClass="" TextMode="SingleLine" Enabled="False" />
                            </li>
                            <li>
                                <asp:Label runat="server" ID="EmailLabel" AssociatedControlID="Email">E-mail</asp:Label>
                                <asp:TextBox runat="server" ID="Email" CssClass="" TextMode="Email" />
                            </li>
                            <li>
                                <asp:Label runat="server" ID="RoleLabel" AssociatedControlID="Role">Role</asp:Label>
                                <asp:DropDownList ID="Role" CssClass="dropdown" runat="server" BackColor="White" Font-Overline="False" Height="34px" Width="312px"></asp:DropDownList>
                                </li>
                        </ol>
        <asp:Button ID="SaveButton" runat="server" OnClick="saveChanges_Click" Text="Сохранить изменения" />
        <asp:Button ID="CancelButton" runat="server" OnClick="cancelChanges_Click" Text="Отменить изменения" />
    </fieldset>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
</asp:Content>

