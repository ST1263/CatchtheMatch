<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="Adminpage.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width: 100%">
    <tr>
        <td style="width: 427px">&nbsp;</td>
        <td style="width: 303px; color: #FF0000"><strong style="font-size: xx-large">ADD ADMIN 
            <br />
            </strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 427px; font-size: larger;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AdminUserName</strong></td>
        <td style="width: 303px">
            <asp:TextBox ID="TextBox1" runat="server" Width="178px" style="margin-right: 1px"></asp:TextBox>
            <br />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 427px; font-size: larger; height: 24px;"><strong>Pssword</strong></td>
        <td style="width: 303px; height: 24px;">
            <asp:TextBox ID="TextBox2" runat="server" Width="177px"></asp:TextBox>
        </td>
        <td style="height: 24px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Max. 8 char" ForeColor="Red"></asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 427px; height: 24px; font-size: larger;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Confirm Password</strong></td>
        <td style="width: 303px; height: 24px">
            <asp:TextBox ID="TextBox3" runat="server" Width="180px"></asp:TextBox>
        </td>
        <td style="height: 24px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Paasword not Match" ForeColor="Red" ValueToCompare=" if (args.Value.Length &lt; 9)"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 427px; height: 26px; font-size: larger;"><strong>Email Id</strong></td>
        <td style="width: 303px; height: 26px">
            <asp:TextBox ID="TextBox4" runat="server" Width="182px" OnTextChanged="TextBox4_TextChanged" Height="16px"></asp:TextBox>
            <br />
        </td>
        <td style="height: 26px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email Is Wrong Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 427px">&nbsp;</td>
        <td style="width: 303px">
            <asp:Button ID="Button7" runat="server" Text="ADD" Width="95px" OnClick="Button7_Click" Height="38px" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
    
</asp:Content>

