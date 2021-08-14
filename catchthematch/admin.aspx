<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    body 
{
    background:#f2f2f2;
}

#head
{
    width:900px;
    height:80px;
    border:solid 1px #9B0033;
    margin: 0 auto;
    text-align: center;
    margin-bottom:5px;
}

#main
{
    width:900px;
    height:520px;
    border:solid 1px #9B0033;
    margin: 0 auto;
    text-align: left;
}

#left
{
    width:213px;
    height:520px;  
    float:left;
    
    }
    
    #right
{
    width:685px; height:520px;  
     border:solid 0px #9B0033;
    float:right;
    margin-left: 0px;
}
    #login
    {
        width:250px;
        height:180px;
        margin-top:70px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 0;
        }
        
     .tbl
     {
         width:100%;
         border:solid 1px #9B0033;
         
         }
         
         .tblhead
         {height:35px;
          color:#fff;
          background:#9B0033;
          font-size:medium;
          font-weight:bold;
    text-align: center;
}

.txt
{
    border:solid 1px #9B0033;
    
    }
    
    .btn
    {
        background:#9B0033;
        color:#fff;
         font-weight:bold;
        border:solid 2px #9B0033;
        cursor:pointer;
        }
         .btn:hover
    {
        background:#fff;
        color:#9B0033;
         font-weight:bold;
        border:solid 2px #9B0033;
        }
        
        .auto-style1 {
            height: 42px;
        }
        
       </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="main">
    <div id="login">
        <table class="tbl">
            <tr>
                <td class="tblhead" colspan="2">
                    ADMIN REGISTER</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    UserName :
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtname" runat="server" CssClass="txt" Height="21px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Connot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    Password :
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtpass" runat="server" CssClass="txt" TextMode="Password" Height="20px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="Connot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtpass" ErrorMessage="Max. 8 char" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Button ID="btnlogin" runat="server" CssClass="btn" Text="Lohin" OnClick="btnlogin_Click"  />
                    
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    
                </td><br />
                <td class="style2">
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    </td>
                <td style="text-align: left">
                    </td>
            </tr>
        </table>
    </div>
        </div>
    </form>
</body>
</html>
