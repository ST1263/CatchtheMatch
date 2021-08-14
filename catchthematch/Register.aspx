<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
body{
margin:0;
padding:0;
background:url("image/v3.jpg");
}
.signup-form{
width:336px;
padding:20px;
background:black;
text-align:center;
position:absolute;
top:55%;
left:70%;
transform:translate(-50%,-50%);
overflow:hidden;
}
h1{
color:red;
}
.signu-form h1{
margin-top:100px;
font-family:ariel;
color:White;
font-size:40px;
}
.signup-form input{
display:block;
width:100%;
padding:0 16px;
height:44px;
color:black;
text-align:center;
box-sizing:border-box;
outline:none;
border:none;
}
.txtb{
margin:20px 0;
background:lightgrey;
color:#fff;
border-radius:6px;
}
#button1:hover{
    color:yellow;
    
}
.signup-btn{
margin-top:60px;
margin-bottom:20px;
background:#487eb0;
color:#fff;
border-radius:44px;cursor:pointer;
transition:0.8s;
}

.signup-form a{
text-decoration:none;
color:#fff;
font-family:ariel;
font-size:14px;
padding:10px;
display:block;
}
.signup-form a:hover{
    color:red;
}

</style>

</head>
<body>
    <form id="form1" runat="server">
<div class="signup-form">
<h1>SIGN UP</h1>
    <asp:TextBox ID="TextBox1" placeHolder="Enter UserName"  runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:TextBox ID="TextBox2" placeHolder="Enter Password" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Max.8 char" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
    <br />
    <asp:TextBox ID="TextBox3" placeHolder="Conform Password" runat="server"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Do Not Match" ForeColor="Red"></asp:CompareValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox4" placeHolder="Enter Email Id" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email is Not Correct Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:TextBox ID="TextBox5" placeHolder="Enter Mobile No." runat="server" TextMode="Phone"></asp:TextBox>
    <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator2_ServerValidate" ControlToValidate="TextBox5"></asp:CustomValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Signup" ForeColor="Red" OnClick="Button1_Click" BackColor="#FFFF66" />
<%--<input type="text" placeholder="Enter Username" class="txtb"/>
<input type="password" placeholder="Enter Password" class="txtb"/>
    <input type="password" placeholder="Confirm Password" class="txtb"/>
<input type="text" placeholder=" Enter Email Id" class="txtb"/>
<input type="text" placeholder=" Enter mobile No." class="txtb"/>
<input type="submit"placeholder="Signup" class="signup-btn"/>--%>
<a href="Login.aspx">Already Account Click Here</a>
    </div>
</form>

</body>
</html>
