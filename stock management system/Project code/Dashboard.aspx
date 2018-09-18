<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link id="Link1" href="mainCss.css" rel="Stylesheet" runat="server" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <div class="main" style="border: medium dotted #FFFFFF">
    <br />
        <asp:Label ID="Label1" runat="server" Text="Welcome! Mr/Mrs " CssClass="text"></asp:Label> 
        <asp:Label ID="Label2" runat="server" Text="Coder Baba" CssClass="text"></asp:Label>
        &nbsp;<asp:Label ID="Label3" runat="server" Text="user grade" CssClass="text"></asp:Label>
        &nbsp;<asp:Label ID="Label4" runat="server" Text="A" CssClass="text"></asp:Label>
    <br />
    <br />
    <br />
    
   <table>
    <tr>
        <td>
        <asp:Button ID="Button1" runat="server" BackColor="#FF6600" 
            BorderColor="White" BorderStyle="None" BorderWidth="5px" Font-Bold="True" 
            Font-Names="Calibri" Font-Size="XX-Large" ForeColor="White" Height="90px" 
            Text="Admin" Width="194px" CssClass="button" onclick="Button1_Click" />
        </td>
        <td>
            <asp:Button ID="Button2" runat="server" BackColor="#FF6600" BorderColor="White" 
            BorderStyle="None" BorderWidth="5px" Font-Bold="True" Font-Names="Calibri" 
            Font-Size="XX-Large" ForeColor="White" Height="90px" Text="Bill" 
            Width="194px" CssClass="button" onclick="Button2_Click" />
        </td>
        <td>
         <asp:Button ID="Button5" runat="server" BackColor="#FF6600" BorderColor="White" 
            BorderStyle="None" BorderWidth="5px" Font-Bold="True" Font-Names="Calibri" 
            Font-Size="XX-Large" ForeColor="White" Height="90px" Text="Contacts" 
            Width="194px" CssClass="button" onclick="Button5_Click" />
        </td>
    </tr>
    
    <tr>
        <td>
             <asp:Button ID="Button3" runat="server" BackColor="#FF6600" BorderColor="White" 
            BorderStyle="None" BorderWidth="5px" Font-Bold="True" Font-Names="Calibri" 
            Font-Size="XX-Large" ForeColor="White" Height="90px" Text="Item" 
            Width="194px" CssClass="button" onclick="Button3_Click" />
        </td>
        <td>
             <asp:Button ID="Button4" runat="server" BackColor="#FF6600" BorderColor="White" 
            BorderStyle="None" BorderWidth="5px" Font-Bold="True" Font-Names="Calibri" 
            Font-Size="XX-Large" ForeColor="White" Height="90px" Text="Catagory" 
            Width="194px" CssClass="button" onclick="Button4_Click" />
        </td>
        <td>
              <asp:Button ID="Button6" runat="server" BackColor="#FF6600" BorderColor="White" 
            BorderStyle="None" BorderWidth="5px" Font-Bold="True" Font-Names="Calibri" 
            Font-Size="XX-Large" ForeColor="White" Height="90px" Text="Brand" 
            Width="194px" CssClass="button" onclick="Button6_Click" />
        </td>
    </tr>
    <tr>
        <td>
             <asp:Button ID="Button8" runat="server" BackColor="#FF6600" BorderColor="White" 
            BorderStyle="None" BorderWidth="5px" Font-Bold="True" Font-Names="Calibri" 
            Font-Size="XX-Large" ForeColor="White" Height="90px" Text="In Stock" 
            Width="194px" CssClass="button" onclick="Button8_Click" />
        </td>
        <td>
             <asp:Button ID="Button7" runat="server" BackColor="#FF6600" BorderColor="White" 
            BorderStyle="None" BorderWidth="5px" Font-Bold="True" Font-Names="Calibri" 
            Font-Size="XX-Large" ForeColor="White" Height="90px" Text="Out Stock" 
            Width="194px" CssClass="button" onclick="Button7_Click" />
        </td>
        <td>
            <asp:Button ID="Button9" runat="server" BackColor="#FF6600" 
            BorderColor="White" BorderStyle="None" BorderWidth="5px" Font-Bold="True" 
            Font-Names="Calibri" Font-Size="XX-Large" ForeColor="White" Height="90px" 
            Text="Avail Stock" Width="194px" CssClass="button" onclick="Button9_Click" />
        </td>
    </tr>
    <tr>
        <td>
        <asp:Button ID="Button10" runat="server" BackColor="#FF6600" 
            BorderColor="White" BorderStyle="None" BorderWidth="5px" Font-Bold="True" 
            Font-Names="Calibri" Font-Size="XX-Large" ForeColor="White" Height="90px" 
            Text="Email" Width="194px" CssClass="button" onclick="Button10_Click" />
        </td>
        <td>
            <asp:Button ID="Button11" runat="server" BackColor="#FF6600" BorderColor="White" 
            BorderStyle="None" BorderWidth="5px" Font-Bold="True" Font-Names="Calibri" 
            Font-Size="XX-Large" ForeColor="White" Height="90px" Text="Payment" 
            Width="194px" CssClass="button" onclick="Button11_Click" />
        </td>
        <td>
         <asp:Button ID="Button12" runat="server" BackColor="#FF6600" BorderColor="White" 
            BorderStyle="None" BorderWidth="5px" Font-Bold="True" Font-Names="Calibri" 
            Font-Size="XX-Large" ForeColor="White" Height="90px" Text="Reminder" 
            Width="194px" CssClass="button" onclick="Button5_Click" />
        </td>
    </tr>
    
            </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
</div>
</center>
</asp:Content>

