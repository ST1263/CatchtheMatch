<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
0*{
margin:0;
padding:0;
}
header{
text-align:center;
color:white;
background:#0b6b62;
padding:30px;
font-family:ariel;
font-size:20px;
}
.contact{
width:300px;
padding:20px;
position:absolute;
top:25%;
left:6%;
}
b{
font-size:30px;
color:Red;
}
p{
font-size:20px;
color:black;
}

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <header>
        <strong>Contact Us
</strong>
</header>
<%--<img src="cc.jpg" width="100%" height="90%">--%><img src="image/f3.jpg"  width="100%" height="400px"/>
<div class ="contact">
<b>Head Office</b><br>
<p>Address:&nbsp; Solapur<br>
Phone :&nbsp;&nbsp; 1234567891<br>
Email:&nbsp;&nbsp;&nbsp; catchthematch@gmail.com</p><br><br>
<b>Toll Free number</b><br>
<p>1800-545-7891<br>
Daily between 9AM-9PM (IST)</p>

</div>
    </div>
    </form>
</body>
</html>
