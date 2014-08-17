<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="testApplic._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Стартовая страница приложения.</h2>
            </hgroup>
            <p> </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>В приложении реализован такой функционал:</h3>
    <ol class="round">
        <li class="one">
            <h5>Авторизация и регистрация</h5>
            Реализована возможность авторизации существующих пользователей и регистрации новых.</li>
        <li class="two">
            <h5>Список пользователей</h5>
            На странице <a href="~/Admin/Users">&quot;Список пользователей&quot;</a> можно просмотреть всех зарегистрированных на сайте пользователей, с указанием их e-mail.
        </li>
        <li class="three">
            <h5>Редактирование учетных данных пользователей</h5>
            Данные любого из зарегистрированных пользователей могут быть отредактированы. Переход на страницу редактирования осуществляется нажатием на ссылку "Edit" в списке пользователей.
        </li>
    </ol>
</asp:Content>
