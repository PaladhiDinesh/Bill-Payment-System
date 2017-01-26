<%@ Page Title="" Language="C#" MasterPageFile="~/master_before_login.Master" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="bill_payment.admin_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
    {
        width: 204px;
    }
    .style8
    {
            width: 136px;
        }
        .style9
        {
            width: 1400px;
            height: 1px;
        }
        .style11
        {
            width: 393px;
            height: 244px;
        }
        .style12
        {
            width: 384px;
            height: 244px;
        }
        .style13
        {
            width: 164px;
        }
        .style14
        {
            width: 406px;
            height: 244px;
        }
        #Reset1
        {
            width: 76px;
        }
        .style15
        {
            width: 136px;
            height: 30px;
        }
        .style16
        {
            width: 164px;
            height: 30px;
        }
        .style17
        {
            color: #009900;
            font-size: large;
        }
        .style18
        {
            color: #009900;
            font-size: x-large;
        }
        .style19
        {
            font-size: xx-large;
            color: #FF9933;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <span class="style19"><strong>Welcome to E-Pay Systems</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table>
    <tr><td class="style12"></td><td class="style14"><table class="style7">
    <tr>
        <td class="style8">
            <span class="style18"><strong>Username</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="style13">
            <asp:TextBox ID="username" runat="server" Height="28px" Width="155px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style15">
            </td>
        <td class="style16">
        </td>
    </tr>
    <tr>
        <td class="style8">
            <span class="style18"><strong>Password</strong></span><span class="style17"> </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="style13">
            <asp:TextBox ID="password" runat="server" TextMode="Password" Height="25px" 
                Width="156px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style9" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="LOGIN" 
                BackColor="#FFDC4F" Width="82px" />
        </td>
        <td class="style13">
            <input id="Reset1" type="reset" value="RESET" 
                style="background-color: #FFDC4F" /></td>
    </tr>
</table></td><td class="style11">&nbsp;</td></tr></table>
    
</asp:Content>
