<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgot.aspx.cs" Inherits="forgot" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="mainCss.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="border:dotted medium whte; text-align:left ; margin-left:20px" >
<br />
<br />
    <asp:Label ID="Label1" runat="server" Text="in case you forgot your password. contact your upgraded person to reset your password." CssClass="text"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Thank you!" CssClass="text"></asp:Label>
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text">go back!</asp:LinkButton>
    <br />
    <br />
</div>
</asp:Content>

