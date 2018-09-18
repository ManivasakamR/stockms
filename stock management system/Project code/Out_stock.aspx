<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Out_stock.aspx.cs" Inherits="Out_stock" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="mainCss.css" rel="Stylesheet" type="text/css" />
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div style="border: medium dotted #FFFFFF">
        
          <asp:GridView ID="GridView1" runat="server" BackColor="#FFCCFF" Height="60px" 
              Width="552px" onselectedindexchanged="GridView1_SelectedIndexChanged">
          </asp:GridView>
          <br />
          <br />
        
      </div>
</asp:Content>

