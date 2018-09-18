<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Email.aspx.cs" Inherits="Email" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="mainCss.css" type="text/css" rel="Stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 165px;
        }
        .style2
        {
            width: 88px;
        }
        .style3
        {
            width: 69px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="border:medium dotted #FFFFFF;">
    <br />
    <br />
        <table style="border-style: groove; width: 361px; height: 220px;">
            <tr>
                <td align="right" class="style2">
                    <asp:Label ID="Label1" runat="server" Text="to:" CssClass="text"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    <asp:Label ID="Label2" runat="server" Text="cc:" CssClass="text"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    <asp:Label ID="Label3" runat="server" Text="bcc:" CssClass="text"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    <asp:Label ID="Label4" runat="server" Text="subject:" CssClass="text"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox4" runat="server" ontextchanged="TextBox4_TextChanged" 
                        style="width: 128px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    <asp:Label ID="Label5" runat="server" Text="Messege:" CssClass="text"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox5" runat="server" Height="70px" 
                        ontextchanged="TextBox5_TextChanged" style="height: 22px; width: 128px" 
                        Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="text" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Send Mail" CssClass="buttonIn" 
                        Width="192px" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    <br />
    <table style="border-style: groove; width: 325px; height: 135px;">
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="Label6" runat="server" Text="Configure your email id" 
                    CssClass="text" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label7" runat="server" Text="Email id:" CssClass="text"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><asp:Label ID="Label9" runat="server"
                    Text="@gmail.com" CssClass="text"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label8" runat="server" Text="Password:" CssClass="text"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button2" runat="server" Text="Save" CssClass="buttonIn" 
                    Width="150px" onclick="Button2_Click1"/> 
        </tr>
    </table>
    <br />
</div>
</asp:Content>

