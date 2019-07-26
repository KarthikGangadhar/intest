<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Validator.aspx.cs" Inherits="Validator" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>

<p><b><font color=red>Please put your work on these placeholder pages and use code-behind class files so we can see your code (please don't compile into DLL files):</font></b><br />


    <a href="/">&laquo; Back To Home</a>

<p>
Please use the built-in .NET &lt;asp:CustomValidator&gt; control to validate the following:<br />
<ul>
<li>If both fields are filled out, then an error should NOT appear.
<li>If one field is filled out, then an error should NOT appear.
<li>If neither field is filled out, then an error should appear.
</ul>

Please perform validation on the server and please make sure that Javascript (client-side) validation is performed as well. We've had several applicants forget to do the Javascript validation on the client-side so please make sure that you're doing both server-side and client-side validation.</p>

<p>Server-side validation needs to be implemented on the code behind page.
</p>

    <form id="form1" runat="server">
    <div>

<asp:DropDownList ID="drpState"  runat="server" CausesValidation="True">
<asp:ListItem></asp:ListItem>
<asp:ListItem Value="IL">Illinois</asp:ListItem>
<asp:ListItem Value="IN">Indiana</asp:ListItem>
<asp:ListItem Value="IA">Iowa</asp:ListItem>
</asp:DropDownList>

<asp:TextBox ID="txtRegion" runat="server"></asp:TextBox>

<asp:Button ID="btnSubmit" Text="Submit" runat="server" />
    
    </div>
    </form>
</body>
</html>
