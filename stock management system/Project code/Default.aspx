
<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log in Here</title>
    <link href="login.css" runat="server" rel="Stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 15px;
        }
    </style>
</head>
<body>
 
    


    <form id="form1" runat="server">
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </cc1:ToolkitScriptManager>
    <div class="banner">
    
        <img src="images/5346465_300.png" width="100px" height="100%" />
        <img src="images/HEAD.png" width="80%" height="100%" />
    </div>
    <center>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <table style="width: 100%;" >
        <tr>
            <td align="center" class="style1">
                &nb&nbsp;</td>
            
        </tr>
        <tr>
            
            <td align="center">
              <div class="login" 
                    
                    
                    style=" border: thin dotted #FFFFFF; background-position: center; line-height: normal; color: #FF0000; background-image: none; background-repeat: no-repeat;">
                  <br />
                  <asp:Label ID="Label3" runat="server" Text="invalid user id or password" 
                      Visible="False"></asp:Label>
                  <br />
                  <br />
        <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" 
            Font-Names="Arial Narrow" Font-Size="Larger" ForeColor="#666666" Height="31px" 
            Width="200px" BackColor="White" CssClass="text" BorderStyle="None"></asp:TextBox>
        <cc1:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" 
            runat="server" Enabled="True" TargetControlID="TextBox1" 
            WatermarkText="User ID">
        </cc1:TextBoxWatermarkExtender>
        <br />
        <br />
      
        <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" 
            Font-Names="Arial Narrow" Font-Size="Larger" ForeColor="#666666" Height="33px" 
            Width="200px" BackColor="White" CssClass="text" BorderStyle="None" 
                      TextMode="Password"></asp:TextBox>
        <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" 
            runat="server" Enabled="True" TargetControlID="TextBox2" 
            WatermarkText="Password">
        </cc1:TextBoxWatermarkExtender>
                  <br />
                  <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text" 
                      ForeColor="#33CCFF" onclick="LinkButton1_Click">forgot password</asp:LinkButton>
                  <br />
                  <br />
                  <asp:Button ID="Button1" runat="server" Height="36px" Text="Log in" 
                      Width="200px" BorderColor="White" BorderStyle="None" 
                      BorderWidth="0px" BackColor="#3399FF" CssClass="button" Font-Bold="True" 
                      Font-Size="Medium" ForeColor="#171717" onclick="Button1_Click" />
                  <br />
                  <br />
                  <br />
                  <br />
                  </div>
            </td>
        </tr>
        <tr>
           
            <td align="center">
                 
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" 
                    Text="all Rights reserved @2018" Font-Bold="True" 
                    Font-Names="Agency FB" Font-Size="Large" ForeColor="White"></asp:Label>
                <br />
                 
            </td>
        </tr>
    </table>
    </ContentTemplate>
   </asp:UpdatePanel>
    </center>
    
    
   
 </form>
    </body>
</html>
