<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="mainCss.css" type="text/css" rel="Stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="border: medium dotted #FFFFFF; height: 313px;">
    <br />
    <br />
    <table style="width: 363px; height: 153px">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="User Name" CssClass="text" 
                    ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="User id" CssClass="text" 
                    ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Default password" CssClass="text" 
                    ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td>
                <asp:Label ID="Label4" runat="server" Text="User Grade" CssClass="text" 
                    ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>
                        A Grade
                    </asp:ListItem>
                    <asp:ListItem>
                        B Grade
                    </asp:ListItem>
                    <asp:ListItem>
                        C Grade
                    </asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="Save" CssClass="buttonIn" 
                    Width="172px" onclick="Button1_Click"/>
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" BackColor="#FF66CC" Width="368px">
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
</div>
</asp:Content>

