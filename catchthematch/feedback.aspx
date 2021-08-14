<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
*{
margin:0;
padding:0;
}
header{
text-align:center;
color:white;
background:#0b6b62;
padding:20px;
font-family:ariel;
}

.contact{
width:300px;
padding:20px;
position:absolute;
top:15%;
left:35%;
}
h2{
color:white;
}
label{
color:white;
font-family:ariel;
font-size:18px;

}
#name{
width:400px;
border:none;
border-radius:3px;
padding:7px;
outline:0;
font-family:ariel;
font-style:italic;
}


.sub{
width:100px;
left:10%;
border:none;
border-radius:3px;
padding:10px;
outline:0;
font-size:16px;
font-family:ariel;
margin-top:20px;
margin-left:120px;
margin-bottom:20px;
background:#487eb0;
color:#fff;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <header>
<h1>FeedBack</h1>
</header>
        <img src="image/f5.jpg"  width="100%" height="100%"/>
<%--<img src="w1.jpeg" width="100%" height="90%">--%>
<div class ="contact">

<label>Name</label><br>
<asp:TextBox ID="TextBox1" runat="server" Width="276px" Height="27px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
    <br><br>
<label>Email</label><br>
<asp:TextBox ID="TextBox2" runat="server" Width="274px" Height="26px"></asp:TextBox><br>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email is wrong Format" ForeColor="Red"></asp:RegularExpressionValidator>
    <br>
<label>Mobile Number</label><br>
<asp:TextBox ID="TextBox3" runat="server" Width="272px" Height="27px"></asp:TextBox><br>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Only 10 digit" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
    <br>
<label>Message</label><br>
<asp:TextBox ID="TextBox4" runat="server" Height="76px" Width="269px" TextMode="MultiLine"></asp:TextBox><br>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Cannit be empty" ForeColor="Red"></asp:RequiredFieldValidator>
    <br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="SUBMIT" BackColor="#FFFF99" ForeColor="#CC0000" Height="33px" OnClick="Button1_Click" Width="99px" />
    <br />
    <asp:Label ID="Label1" runat="server" style="font-weight: 700; background-color: #000000"></asp:Label>
</div>

    </form>
</body>
</html>
