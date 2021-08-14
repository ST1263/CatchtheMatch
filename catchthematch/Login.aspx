<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style>

body{
margin:0;
padding:0;
background:url("image/f2.jpg");
background-size:cover;
backgroung-position:center;
font-family:arial;
}
.loginbox{
width:380px;
height:500px;
background-color:black;

color:#fff;
top:50%;
left:50%;
position:absolute;
transform:translate(-50%,-50%);
box-sizing:border-box;
padding:70px 30px;
}
.img{
width:100px;
height:100px;
border-radius:50%;
position:absolute;
top:-50px;
left:calc(50% - 50px);
image-position:center;
}
h1{
margin:0;
padding:0 0 20px;
text-align:center;
font-size:22px;
}
.loginbox p{
margin:0;
padding:0;
font-weight:bold;
}
.loginbox input{
width:100%;
margin-bottom:20px;
}
.loginbox input[type="text"], input[type="password"]
{
border:none;
border-bottom:1px solid #fff;
background:transparent;
outline:none;
height:40px;
color:#fff;
font-size:16px;
}
/*.loginbox input[type="submit"]
{
border:none;
outline:none;
height:40px;
background:#fb2525;
color:#fff;
font-size:18px;
border-radius:20px;
}
.loginbox input[type="submit"]:hover
{
cursor:pointer;
background:#ffc107;
color:#000;
}*/
.loginbox a{
text-decoration:none;
font-size:12px;
line-height:20px;
color:darkgrey;
}
.loginbox a:hover
{
color:#ffc107;
}
</style>

</head>
<body >
    
 <form id="form1" runat="server">
        
<div class="loginbox">
<img src="image/img.png" class="img"/>
<h1>LOGIN HERE</h1>
<p>UserName</p>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="txt"></asp:TextBox>
<%--<input type="text" name="" placeholder="Enter Username"/>--%>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage=" UserName Required" ForeColor="Red"></asp:RequiredFieldValidator>
<p>Password</p>
   <asp:TextBox ID="TextBox2"  runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Reqired" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Min. 8 Charcter" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
<%--<input type="password" name="" placeholder="Enter password"/>--%>
<%--<input type="submit" name=""value="Login"/>--%>
    <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="True" Font-Size="X-Large" BackColor="#FF0066" OnClick="Button1_Click" />

<a href="preset.aspx">Forget Password</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="admin.aspx" style="font-family: 'Arial Black'; font-size: medium; text-decoration: none; font-weight: bold; color: #FFFFFF" >ADMIN LOGIN </a>&nbsp; <br/>
<a href="Register.aspx" >New Register</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <br />
    <asp:Label ID="Label1" runat="server"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>

    </form>
</body>
</html>
