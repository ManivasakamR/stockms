<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="In_stock.aspx.cs" Inherits="In_stock" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="mainCss.css" rel="Stylesheet" type="text/css" />
    <style type="text/css">
        #Button1
        {
            width: 87px;
            height: 31px;
        }
        #Button2
        {
            width: 70px;
            height: 31px;
        }
        #Button3
        {
            width: 83px;
        }
        #Button4
        {
            width: 87px;
        }
        #Button5
        {
            width: 73px;
        }
        #Button6
        {
            width: 69px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="border: medium dotted #FFFFFF">
        <asp:GridView ID="GridView1" runat="server" BackColor="#FFCCFF" Width="665px">
        </asp:GridView>
           <br />
           <br />
    
       <br />
    
   </div>
</asp:Content>

