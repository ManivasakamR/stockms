<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ad_item.aspx.cs" Inherits="Ad_item" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
body 
{
	background-image:url('/images/pattern.png') repeat;
}
        .style2
        {
            width: 181px;
        }
        .style1
        {
            width: 135px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="border: medium dotted #FFFFFF" >
        <br />
        <br />
        <table style="height: 212px; width: 648px">
            <tr>
                <td class="style2" >
                    <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="119px" 
                        ontextchanged="TextBox3_TextChanged"></asp:TextBox>
                </td>
                <td rowspan="2" class="style1">
                    <asp:Button ID="Button3" runat="server" Text="New" BackColor="#1B9AE4" 
                BorderColor="White" BorderStyle="None" Font-Bold="True" Font-Names="Calibri" 
                Font-Size="Large" ForeColor="White" Height="30px" Width="70px" 
                onclick="Button3_Click" />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Select Catageory:" CssClass="text" 
                    ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" Height="18px" 
                        ontextchanged="DropDownList1_TextChanged" Width="96px">
                    </asp:DropDownList>
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td rowspan="5" class="style2">
                    <asp:ListBox ID="ListBox1" runat="server" Height="156px" Width="124px" 
                        onselectedindexchanged="ListBox1_SelectedIndexChanged">
                    </asp:ListBox>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Select Brand:" CssClass="text" 
                        ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="97px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td rowspan="2" class="style1">
                    <asp:Button ID="Button5" runat="server" Text="Edit" BackColor="#1B9AE4" 
                  BorderStyle="None" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" 
                  ForeColor="White" Height="30px" Width="70px" onclick="Button5_Click" />
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Item Name:" CssClass="text" 
                        ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Unit:" CssClass="text" 
                        ForeColor="White"></asp:Label>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>METER</asp:ListItem>
                        <asp:ListItem>FT</asp:ListItem>
                        <asp:ListItem>LITER</asp:ListItem>
                        <asp:ListItem>BAG</asp:ListItem>
                        <asp:ListItem>KG</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td rowspan="2" class="style1">
                    <asp:Button ID="Button4" runat="server" Text="Delete" BackColor="#1B9AE4" 
                  BorderStyle="None" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" 
                  ForeColor="White" Height="30px" Width="70px" onclick="Button4_Click" />
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Tax:" CssClass="text" 
                        ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Save" BackColor="#1B9AE4" 
                    BorderStyle="None" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" 
                    ForeColor="White" Height="30px" Width="200px" onload="Button1_Load" 
                        onclick="Button1_Click" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" Width="646px" BackColor="White" 
            BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <br />
        <br />
        <br />
    </div>
</asp:Content>

