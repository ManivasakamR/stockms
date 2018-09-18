<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ad_brand.aspx.cs" Inherits="Ad_brand" Title="Untitled Page" %>

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
    .style1
    {
        width: 120px;
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
</style>
<link href="mainCss.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="border: medium dotted #FFFFFF; width:100%; height:437px">
    <table style="width: 271px">
        <tr>
       
            <td class="style1">
                <asp:Label ID="Label1" runat="server" Text="Select Category:" CssClass="text" 
                    ForeColor="Yellow"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="122px" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr >
       
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Brand Name:" CssClass="text" 
                    ForeColor="#FFCC00"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan ="2">
                <asp:Button ID="Button1" runat="server" Text="Save" CssClass="buttonIn" 
                    Width="150px" onclick="Button1_Click" /> 
            </td>
            
        </tr>
        </table>
        <br />
        <asp:GridView ID="GridView2" runat="server" Width="289px" BackColor="#FF6699" 
            ForeColor="White">
    </asp:GridView>
        <br />
    </div>
</asp:Content>

