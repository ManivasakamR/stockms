<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ad_supplier.aspx.cs" Inherits="Ad_supplier" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
body 
{
	background-image:url('/images/pattern.png') repeat;
}
        .style7
        {
            width: 169px;
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
        .style10
        {
            width: 169px;
            height: 26px;
        }
        .style11
        {
            width: 335px;
            height: 26px;
        }
        .style12
        {
            height: 26px;
        }
        .style13
        {
            width: 121px;
        }
        .style14
        {
            width: 157px;
        }
        .style15
        {
            height: 22px;
        }
        .style16
        {
            width: 335px;
            height: 68px;
        }
        .style17
        {
            height: 68px;
        }
    .style18
    {
        width: 335px;
        height: 31px;
    }
    .style19
    {
        height: 31px;
    }
    .style20
    {
        width: 335px;
        height: 32px;
    }
    .style21
    {
        height: 32px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div style="border: medium dotted #FFFFFF; display: inherit; table-layout: auto; float: none; height: 614px; width: 1134px;">
        <br />
        <br />
        <table>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label6" runat="server" Text="Select People type:" CssClass="text"></asp:Label>
                </td>
                <td align="left">
                   <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="text" 
                        Width="114px">
                    <asp:ListItem Selected="True">
                        Customer
                    </asp:ListItem>
                    <asp:ListItem>
                        Supplier
                    </asp:ListItem>
                    <asp:ListItem>
                        Other
                    </asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>
        <table style="border: medium groove #FFFFFF; width: 710px; height: 251px">
           <tr align="center">
                <td class="style10">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="167px"></asp:TextBox>
                </td>
                <td rowspan="2" class="style13">
                    <asp:Button ID="Button1" runat="server" Text="New" CssClass="buttonIn" 
                        onclick="Button1_Click" />
                </td>
                <td class="style11">
                    <asp:Label ID="Label1" runat="server" Text="Name:" CssClass="text"></asp:Label>
                </td>
                <td class="style12">
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="186px"></asp:TextBox>
                </td>
            </tr>
            <tr align="center">
                <td rowspan="5" class="style7">
                    <asp:ListBox ID="ListBox1" runat="server" Height="225px" Width="169px" 
                        onprerender="ListBox1_PreRender" ondisposed="ListBox1_Disposed" 
                        onselectedindexchanged="ListBox1_SelectedIndexChanged">
                    </asp:ListBox>
                </td>
                <td class="style18">
                    <asp:Label ID="Label2" runat="server" Text="Company:" CssClass="text"></asp:Label>
                </td>
                <td class="style19">
                    <asp:TextBox ID="TextBox3" runat="server" Height="19px" Width="186px"></asp:TextBox>
                </td>
            </tr>
            <tr align=center>
                <td rowspan="2" class="style13">
                    <asp:Button ID="Button2" runat="server" Text="Edit" CssClass="buttonIn" 
                        onclick="Button2_Click" />
                </td>
                <td class="style20">
                    <asp:Label ID="Label3" runat="server" Text="Mobile Number:" CssClass="text"></asp:Label>
                </td>
                <td class="style21">
                    <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="186px"></asp:TextBox>
                    <cc1:FilteredTextBoxExtender ID="TextBox4_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox4">
                    </cc1:FilteredTextBoxExtender>
                </td>
            </tr>
            <tr align=center>
                <td class="style16">
                    <asp:Label ID="Label4" runat="server" Text="Address:" CssClass="text"></asp:Label>
                </td>
                <td class="style17">
                    <asp:TextBox ID="TextBox5" runat="server" Height="68px" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr align=center>
                <td class="style13" rowspan="2">
                    <asp:Button ID="Button3" runat="server" Text="Delete" CssClass="buttonIn" 
                        onclick="Button3_Click" />
                </td>
                <td class="style16">
                    <asp:Label ID="Label5" runat="server" Text="Reamrk:" CssClass="text"></asp:Label>
                <td class="style17">
                    <asp:TextBox ID="TextBox6" runat="server" Height="64px" Width="186px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style15">
                    <asp:Button ID="Button4" runat="server" Text="Save" CssClass="buttonIn" 
                        Width="200px" onclick="Button4_Click"/>
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="#CC99FF" Width="696px" 
            PageSize="5">
        </asp:GridView>
        <br />
    </div>
</asp:Content>

