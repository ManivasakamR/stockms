<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sell_BIl.aspx.cs" Inherits="Sell_BIl" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="mainCss.css" type="text/css" rel="Stylesheet" />
    <style type="text/css">
        .style1
        {
            height: 36px;
        }
        .style2
        {
            width: 117px;
        }
        .style3
        {
            height: 36px;
            width: 117px;
        }
        .style4
        {
            width: 119px;
        }
        .style5
        {
            height: 36px;
            width: 119px;
        }
        .style6
        {
            width: 43px;
        }
        .style7
        {
            height: 36px;
            width: 43px;
        }
        .style8
        {
            width: 90px;
        }
        .style9
        {
            height: 36px;
            width: 90px;
        }
        .style11
        {
            height: 73px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="border: medium dotted #FFFFFF; height: auto; width: 1007px">
    <br />
<br />
<br />
<table>
<tr>
<td colspan ="2" class="style11">
    <asp:Label ID="Label11" runat="server" Text="001" CssClass="text"></asp:Label>
</td> 
    <td colspan="2" class="style11">
        <asp:Button ID="Button2" runat="server" Text="Select A/c"  CssClass="buttonIn" 
            Width="117px" onclick="Button2_Click"/>
    </td>
    <td colspan="2" class="style11">
        <asp:TextBox ID="TextBox5" runat="server" Height="25px" Width="196px" 
            AutoPostBack="True" ontextchanged="TextBox5_TextChanged"></asp:TextBox>
             <datalist id="list2" runat="server">
              </datalist>
        <br />
    </td>
    <td colspan="2" class="style11">
        <asp:DropDownList ID="DropDownList2" runat="server" Height="21px" Width="134px" 
            Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" 
            AutoPostBack="True" onselectedindexchanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem>Customer</asp:ListItem>
            <asp:ListItem>Supplier</asp:ListItem>
        </asp:DropDownList>
    </td>
    <td colspan = "2" class="style11">
        <asp:Label ID="Label10" runat="server" Text="Label" CssClass="text" 
            Font-Names="Calibri" Font-Size="Large"></asp:Label>
    </td>
</tr>

</table>
<br />
<table style="width: 990px; height: 82px;">

<tr>
    <td>
       <asp:Label ID="Label3" runat="server" Text="Item Name" CssClass="text"></asp:Label>
        
    <td class="style4">
        <asp:Label ID="Label4" runat="server" Text="Category:" CssClass="text"></asp:Label>
        
    </td>
    <td>
        <asp:Label ID="Label5" runat="server" Text="Brand" CssClass="text"></asp:Label>
    </td>
    <td>
        <asp:Label ID="Label6" runat="server" Text="Tax" CssClass="text"></asp:Label>
    </td>
    <td>
        <asp:Label ID="Label7" runat="server" Text="Prize" CssClass="text"></asp:Label>
    </td>
    <td class="style8">
        <asp:Label ID="Label8" runat="server" Text="Qun." CssClass="text"></asp:Label>
    </td>
    <td class="style6">
        <asp:Label ID="Label9" runat="server" Text="Total" CssClass="text"></asp:Label>
    </td>
    <td class="style2">
        &nbsp;</td>
    
    
</tr>
    <tr>
        <td class="style1">
            <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="148px" 
                AutoPostBack="True" ontextchanged="TextBox1_TextChanged" ></asp:TextBox>
                <datalist id="list1" runat="server">
                </datalist>
            <br />
        </td>
        <td class="style5">
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                Height="24px" Width="151px" Font-Size="Medium" 
                onselectedindexchanged="DropDownList3_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
        <td class="style1">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="150px" 
                AutoPostBack="True">
            </asp:DropDownList>
        </td>
        <td class="style1">
            <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="118px"></asp:TextBox>
        </td>
        <td class="style1">
            <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="135px"></asp:TextBox>
        </td>
        <td class="style9">
            <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="100px" 
                AutoPostBack="True" ontextchanged="TextBox4_TextChanged"></asp:TextBox>
        </td>
        <td class="style7">
            <asp:Label ID="Label2" runat="server" Text="0" CssClass="text"></asp:Label>
        </td>
        <td colspan="2" class="style3">
            <asp:Button ID="Button1" runat="server" Text="Add" CssClass="buttonIn" 
                Width="102px" onclick="Button1_Click" />
        </td>
    </tr>
</table>
        <asp:GridView ID="GridView1" runat="server" BackColor="#FFCCFF" Width="648px">
        </asp:GridView>
<br />
<br />
</div>
</asp:Content>

