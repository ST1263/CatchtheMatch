<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="AdminPass.aspx.cs" Inherits="Default5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 161px; width: 829px;">
        <tr>
            <td class="inputt" colspan="3" style="height: 25px">
                <strong><span style="font-size: xx-large; color: #FF0000;">Change Password<br />
                </span></strong></td>
        </tr>
        <tr>
            <td style="width: 275px; font-size: larger;">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                AdminUserName</strong></td>
            <td style="width: 194px">
                <asp:TextBox ID="txtuname" runat="server" Width="150px"></asp:TextBox>
                <br />
            </td>
            <td style="width: 118px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtuname"
                    ErrorMessage="Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 275px; font-size: larger; font-weight: bold;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                New Password</td>
            <td style="width: 194px">
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="145px"></asp:TextBox>
                <br />
            </td>
            <td style="width: 118px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpass"
                    ErrorMessage="Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 275px; font-size: larger; font-weight: bold;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Confirm Password</td>
            <td style="width: 194px">
                <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" Width="145px"></asp:TextBox>
                <br />
            </td>
            <td style="width: 118px">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass"
                    ControlToValidate="txtcpass" ErrorMessage="Not Match" ForeColor="Red"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td style="width: 275px">
            </td>
            <td style="width: 194px">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:Button ID="btnchange" runat="server" CssClass="btn" Text="Change" Width="82px" OnClick="btnchange_Click" /></td>
            <td style="width: 118px">
            </td>
        </tr>
    </table>
</asp:Content>