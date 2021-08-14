<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="DeleteUser.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="Red" Text="DELETE USER"></asp:Label>
<br />
<br />
<table style="width: 100%">
    <tr>
        <td style="width: 420px; font-size: larger;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ENTER USERNAME:</strong></td>
        <td style="width: 225px">
            <asp:TextBox ID="TextBox1" runat="server" Width="167px"></asp:TextBox>
            <br />
            <br />
            <br />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 420px">&nbsp;</td>
        <td style="width: 225px">
            <asp:Button ID="Button7" runat="server" BackColor="Black" ForeColor="White" Height="35px" Text="DELETE USER" Width="97px" OnClick="Button7_Click" />
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>

