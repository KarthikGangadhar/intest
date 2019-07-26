<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Banner.aspx.cs" Inherits="Banner" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Web App</title>
</head>
<body>

<p><b><font color=red>Please put your work on these placeholder pages and use code-behind class files so we can see your code (please don't compile into DLL files):</font></b><br />

    <a href="/">&laquo; Back To Home</a>
    <form id="main" runat="server">
    <div>
       <p>
       There are two2 tables in the database "webapp" called: <b>Banner</b> and <b>BannerTracking</b><br />
       
       <p>Please create query that returns:<br />
       Banner Name and Banner Link columns and sum of all all impressions and sum of all clicks since 11/21/2006
       </p>


<b><p>Total Impressions and ClickCount since 11/21/2006 per Banner are as follows:</p></b>

<asp:GridView ID="grdBannerData" runat="server">
</asp:GridView>
           
<asp:Label ID="lblException" runat="server" Text=""></asp:Label>

<p><b>Banner</b> table<br><img src="table1.gif"></p>

<p><b>BannerTracking</b> table<br><img src="table2.gif"></p>

<p><b>Banner</b> table data<br><img src="Banner_data.gif"></p>

<p><b>BannerTracking</b> table data<br><img src="BannerTracking_data.gif"></p></div>

</form>
       
</body>
</html>
