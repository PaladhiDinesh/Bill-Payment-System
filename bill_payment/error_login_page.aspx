<%@ Page Title="" Language="C#" MasterPageFile="~/master_before_login.Master" AutoEventWireup="true" CodeBehind="error_login_page.aspx.cs" Inherits="bill_payment.error_login_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style8
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<p style="margin-left: 320px"><strong><span class="style8">SESSION TIME OUT!!
To continue please click below..</span></strong></p>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Home" BackColor="#FFCC00" ForeColor="#006600" 
            style="z-index: 1; left: 447px; top: 558px; position: absolute; height: 34px; right: 404px; width: 111px" />
</p>
</asp:Content>
