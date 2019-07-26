<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Web App</title>
</head>
<body>

<h3>Interview Test</h3>

<p>In order to read task instructions, please click on the links below.

<p><b><font color=red>Please put your work on these placeholder pages and use code-behind class files so we can see your code (please don't compile into DLL files):</font></b>

<ol>
<li><a href="Banner.aspx">Banner Tracking Report</a></li>
<li><a href="Hotels.aspx">Hotels Web Service</a></li>
<li><a href="Validator.aspx">Custom Validator</a>
</li>
</ol>

<p><u><b>Frequently Asked Questions</b></u>

<p><b>How can I connect directly to the database server via SQL Server Enterprise Manager or SQL Server Management Studio?</b>
<br>The answer is that you can't connect directly to it from your own computer. We don't expose our test database server to the Internet because of security concerns.

<p>You can work with the database in one of two ways:

<p>1) We've prepared a set of SQL commands that you can run locally on your computer to build the table structures and fill the data. You'll just need to create a new blank database called "webapp" and then run the commands found here: <a href="/sql.html">SQL Commands</a>

<p>2) The other option is for you to write your code and then upload it to our server via the FTP login and check your work in the browser (<b>http://interview-jv.idevdesign.net/</b>). Before you hand in your test, you'll need to make sure it works on our server like this as we can't check the results on your computer - we can only check them on our server.

<p><b>How can I check my work?</b>
<br>You should check your work by going to the <b>http://interview-jv.idevdesign.net/</b> site and making sure that the pages are working correctly. That is how we are going to be testing your work - by first going to the interview URL and pulling up the pages, then looking at your code after that.

</body>
</html>
