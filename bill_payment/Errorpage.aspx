<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Errorpage.aspx.cs" Inherits="bill_payment.Errorpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            font-size: xx-large;
            color: #FF0000;
        }
        .style3
        {
            font-size: x-large;
            text-align: center;
        }
    </style>
    <link href="Errorpagecss.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <form id="form1" runat="server">
    <div class="style1">
        <strong><span class="style2">OOPS !!! Something Went Wrong<br />
        <br />
        </span></strong>
        
    
    </div>
    <p style="margin-left: 40px">
        <strong style="margin-left: 280px"><span class="style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To Go Back Click Here !! </span>
    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style3" 
        NavigateUrl="~/start_screen.aspx">Home</asp:HyperLink>
    </strong>
    </p>
    </form>
</body>
</html>

