<%@ Page Title="User List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="testApplic.Admin.Users" %>



<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

  <hgroup class="title">
        <h1><%: Title %></h1>
  </hgroup>
    <asp:Label ID="MessageLabel" runat="server" Visible="False" Text="Редактирование доступно только администратору" CssClass="messagelabel"></asp:Label>
    <section id="userlist">
  <asp:DataGrid id="UserGrid" runat="server"
                CellPadding="2" CellSpacing="1" AutoGenerateColumns="False">
      <Columns>
          <asp:BoundColumn DataField="IdValue" HeaderText="ID"></asp:BoundColumn>
          <asp:BoundColumn DataField="UserNameValue" HeaderText="UserName"></asp:BoundColumn>
          <asp:BoundColumn DataField="LoginValue" HeaderText="Login"></asp:BoundColumn>
          <asp:BoundColumn DataField="EmailValue" HeaderText="E-mail"></asp:BoundColumn>
          <asp:BoundColumn DataField="RoleValue" HeaderText="Role"></asp:BoundColumn>
          <asp:HyperLinkColumn Text="Edit" DataNavigateUrlField ="UrlValue"></asp:HyperLinkColumn>
      </Columns>
    
  </asp:DataGrid>

</section>

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
</asp:Content>
