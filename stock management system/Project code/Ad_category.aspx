<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ad_category.aspx.cs" Inherits="Ad_category" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .text
{
	font-family: Calibri;
	font-size: medium;
	font-weight: bold;
	font-variant: normal;
	text-transform: none;
	color: #FFFFFF;
	line-height: normal;
}
 .text
{
	font-family: Calibri;
	font-size: medium;
	font-weight: bold;
	font-variant: normal;
	text-transform: none;
	color: #FFFFFF;
	line-height: normal;
}
    .style2
    {
        width: 120px;
        height: 42px;
    }
    .style3
    {
        height: 42px;
    }
.buttonIn
{
	height:30px;
	width:70px;
	border-style: none;
	background-color: #1B9AE4;
	font-family: Calibri;
	font-size: large;
	font-weight: bold;
	color: #FFFFFF;
	text-transform: none;
	line-height: normal;
	vertical-align: middle;
	word-spacing: normal;
}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="border: medium dotted #FFFFFF; width:100%; height:100%">
        <table style="width: 271px">
           
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Category Name:" CssClass="text"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan ="2">
                    <asp:Button ID="Button1" runat="server" Text="Save" CssClass="buttonIn" 
                    Width="150px" onclick="Button1_Click" />
                    <br />
                    <asp:GridView ID="GridView2" runat="server" BackColor="White" Width="268px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
       
    </div>
</asp:Content>

