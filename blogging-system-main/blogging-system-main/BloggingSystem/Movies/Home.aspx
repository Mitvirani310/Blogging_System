﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BloggingSystem.Movies.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Movies articles... Home page !</h3>
    <hr/>
    <asp:Repeater ID="RepBlogDetails" runat="server">
        <ItemTemplate>
            <h4><b style="color: darkorange"><%#Eval("Btitle") %></b></h4>
            <p class="card-text">
                <%#Eval("BDesc") %>
            </p>
            <a href="/Blog/Blog.aspx?id=<%#Eval("Bid") %>">Read the Complete Article....</a>
            <div class="card-footer text-muted">
                Posted On : <%#Eval("Bposteddate","{0: MMMM dd , yyyy}") %>
                <a href="/<%#Eval("Bcategory")%>/Home.aspx"><%#Eval("Bcategory") %></a>
            </div>
            <hr />
        </ItemTemplate>

    </asp:Repeater>
</asp:Content>
