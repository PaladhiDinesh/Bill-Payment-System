<%@ Page Title="" Language="C#" MasterPageFile="~/bps.Master" AutoEventWireup="true" CodeBehind="bill_payment_form.aspx.cs" Inherits="bill_payment.bill_payment_form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
--%><%--<html xmlns="http://www.w3.org/1999/xhtml">--%>
<head>
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 700px;
            height: 40px;
        }
        .style4
        {
            height: 23px;
        }
        .style5
        {
        width: 200px;
        text-align: right;
    }
        .style7
        {
            width: 225px;
            height: 30px;
        }
        #Reset1
        {
            height: 22px;
            width: 70px;
        }
        .style19
    {
        height: 30px;
        text-align: right;
        width: 364px;
    }
        .style20
        {
        width: 200px;
        height: 30px;
    }
        .style22
    {
        height: 31px;
        text-align: left;
        font-size: xx-large;
        font-family: "Times New Roman", Times, serif;
        color: #009D00;
    }
    .style25
    {
        width: 470px;
        text-align: left;
    }
    .style30
    {
        width: 470px;
        text-align: right;
        height: 13px;
    }
    .style31
    {
        width: 200px;
        height: 13px;
    }
    .style32
    {
        height: 13px;
            width: 370px;
        }
    .style39
    {
        height: 27px;
        width: 470px;
    }
    .style40
    {
        width: 200px;
        height: 27px;
    }
    .style42
    {
        width: 470px;
        height: 30px;
    }
    .style44
    {
        width: 470px;
        height: 33px;
    }
    .style45
    {
        width: 200px;
        height: 33px;
    }
    .style48
    {
        width: 470px;
        height: 38px;
    }
    .style49
    {
        width: 200px;
        height: 38px;
    }
    .style52
    {
        height: 32px;
        width: 470px;
    }
    .style53
    {
        width: 200px;
        height: 32px;
    }
    .style57
    {
        width: 470px;
        height: 31px;
    }
    .style60
    {
        width: 200px;
        height: 31px;
    }
    .style61
    {
        height: 33px;
        text-align: right;
        width: 364px;
    }
    .style68
    {
        height: 28px;
        width: 470px;
    }
    .style69
    {
        width: 200px;
        height: 28px;
    }
    .style71
    {
        width: 364px;
        text-align: left;
        height: 30px;
    }
    .style72
    {
        height: 27px;
        width: 364px;
    }
    .style73
    {
        width: 364px;
        text-align: left;
        height: 33px;
    }
    .style74
    {
        width: 364px;
        text-align: left;
        height: 38px;
    }
    .style75
    {
        height: 32px;
        width: 364px;
    }
    .style76
    {
        width: 364px;
        text-align: left;
        height: 31px;
    }
    .style77
    {
        height: 28px;
        width: 364px;
    }
    .style78
    {
        height: 33px;
        width: 364px;
    }
    .style79
    {
        width: 364px;
        text-align: left;
        height: 13px;
    }
    .style80
    {
        width: 364px;
        text-align: right;
    }
        .style82
        {
            height: 31px;
            text-align: left;
            font-size: xx-large;
            font-family: "Times New Roman", Times, serif;
            color: #009D00;
            width: 207px;
        }
        .style83
        {
            height: 27px;
            width: 370px;
        }
        .style84
        {
            width: 370px;
            height: 33px;
        }
        .style85
        {
            width: 370px;
            height: 38px;
        }
        .style86
        {
            height: 32px;
            width: 370px;
        }
        .style87
        {
            width: 370px;
            height: 31px;
        }
        .style88
        {
            height: 28px;
            width: 370px;
        }
        .style89
        {
            width: 370px;
        }
        .style90
        {
            width: 207px;
        }
    </style>
    <script language="javascript" type="text/javascript">

    </script>
</head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <body>
    
    <div>
    
    </div>
   
</body>
</html>

        <table class="style1">
            <tr>
                <td align="right" class="style22" colspan="4">
                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Bill Payment
                    <br />
                    </strong></td>
                <td align="right" class="style82">
                    &nbsp;</td>
                <td align="right" class="style82">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style71">
                    </td>
                <td class="style42" 
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00">
                    Customer Id</td>
                <td class="style20" style="color: #FF0000">
                    <asp:TextBox ID="TextBoxCID" runat="server" Width="130px" 
                        ontextchanged="TextBoxCID_TextChanged" AutoPostBack="True" ></asp:TextBox>
                    *</td>
                <td class="style89">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBoxCID" ErrorMessage="Enter ID" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                        ControlToValidate="TextBoxCID" ErrorMessage="Enter only Numeric Values" 
                        ForeColor="Red" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                    <asp:Label ID="labelvalid" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="style90" rowspan="15">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource1" 
                        runat="server" 
                        ConnectionString="<%$ ConnectionStrings:bill_payment_system_dbConnectionString %>" 
                        SelectCommand="SELECT [customer_id], [vendor_name], [vendor_type] FROM [customer_registration]">
                    </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                        DataKeyNames="customer_id" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                        GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="customer_id" HeaderText="customer_id" 
                                InsertVisible="False" ReadOnly="True" SortExpression="customer_id" />
                            <asp:BoundField DataField="vendor_name" HeaderText="vendor_name" 
                                SortExpression="vendor_name" />
                            <asp:BoundField DataField="vendor_type" HeaderText="vendor_type" 
                                SortExpression="vendor_type" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style90" rowspan="15">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td align="right" class="style71">
                    </td>
                <td class="style42" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00">
                    Vendor Type</td>
                <td class="style20" style="color: #FF0000">
                    <asp:DropDownList ID="DropDownVType" runat="server" Width="130px" 
                        onselectedindexchanged="DropDownVType_SelectedIndexChanged" 
                        AutoPostBack="True">
                        <asp:ListItem>Select an Item</asp:ListItem>
                        <asp:ListItem>Electricity</asp:ListItem>
                        <asp:ListItem>Telephone</asp:ListItem>
                        <asp:ListItem>Tax</asp:ListItem>
                        <asp:ListItem>Insurance</asp:ListItem>
                    </asp:DropDownList>
                    *</td>
                <td class="style89">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="DropDownVType" ErrorMessage="Select Type" ForeColor="Red" 
                        InitialValue="Select Vendor Type"></asp:RequiredFieldValidator>
                    <asp:Label ID="LableVtype" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" class="style71">
                    </td>
                <td class="style42" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00">
                    Vendor Name</td>
                <td class="style20" style="color: #FF0000">
                    <asp:TextBox ID="TextBoxVNAME" runat="server" Width="130px" ReadOnly="True" 
                        Enabled="False"></asp:TextBox>
                    *</td>
                <td class="style89">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="TextBoxVNAME" ErrorMessage="Select Name" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style72">
                    </td>
                <td class="style39" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00">
                    Pending Amount</td>
                <td class="style40" style="color: #FF0000">
                    <asp:TextBox ID="TextBoxPndAmt" runat="server" Width="130px" ReadOnly="True" 
                        Enabled="False"></asp:TextBox>
                    *</td>
                <td class="style83">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="TextBoxPndAmt" ErrorMessage="Enter Amount" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="TextBoxPndAmt" ErrorMessage="Enter Correct Amount" 
                        ForeColor="Red" ValidationExpression="[0-9]+[.][0-9]{2}"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="right" class="style73">
                    </td>
                <td class="style44" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00">
                    Payment Date</td>
                <td class="style45" style="color: #FF0000">
                    <asp:TextBox ID="TextBoxPayDate" runat="server" Width="130px"></asp:TextBox>
                    *</td>
                <td class="style84">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBoxPayDate" ErrorMessage="Enter date" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBoxPayDate" ErrorMessage="Enter in exact format" 
                        ForeColor="Red" 
                        
                        
                        
                        ValidationExpression="(19|20)\d\d[-/.](0[1-9]|1[012])[-/.](0[1-9]|[12][0-9]|3[01])"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="right" class="style74">
                    </td>
                <td class="style48" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00">
                    Amount to Pay</td>
                <td class="style49" style="color: #FF0000">
                    <asp:TextBox ID="TextBoxAMTPAY" runat="server" Width="130px" 
                       ></asp:TextBox>
                    *</td>
                <td class="style85">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBoxAMTPAY" ErrorMessage="Enter Amount " 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" 
                        ControlToCompare="TextBoxPndAmt" ControlToValidate="TextBoxAMTPAY" 
                        ErrorMessage="Amount should be less than Pending Amount" ForeColor="Red" 
                        Operator="LessThanEqual" Type="Double"></asp:CompareValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBoxAMTPAY" ErrorMessage="Enter Correct Amount" ForeColor="Red" 
                        ValidationExpression="[0-9]+[.][0-9]{2}"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="right" class="style19">
                    </td>
                <td class="style42" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00">
                    Card Type</td>
                <td class="style20" style="color: #FF0000">
                    <asp:DropDownList ID="DropDownCardType" runat="server" Width="130px">
                        <asp:ListItem>Select Card Type</asp:ListItem>
                        <asp:ListItem>Credit Card</asp:ListItem>
                        <asp:ListItem>Debit Card</asp:ListItem>
                    </asp:DropDownList>
                    *</td>
                <td class="style89">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="DropDownCardType" ErrorMessage="Enter Card Type" 
                        ForeColor="Red" InitialValue="Select Card Type"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style75">
                    </td>
                <td class="style52" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00">
                    Card Number</td>
                <td class="style53" style="color: #FF0000">
                    <asp:TextBox ID="TextBoxCNUM" runat="server" TextMode="Number" Width="130px"></asp:TextBox>
                    *</td>
                <td class="style86">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBoxCNUM" ErrorMessage="Enter Card Number" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TextBoxCNUM" ErrorMessage="Enter Valid Number" ForeColor="Red" 
                        ValidationExpression="[1-9]{1}[0-9]{15}"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="right" class="style75">
                    </td>
                <td class="style52" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00">
                    Confirm Card Number</td>
                <td class="style53" style="color: #FF0000">
                    <asp:TextBox ID="TextBoxCCNUM" runat="server" TextMode="Password" Width="130px"></asp:TextBox>
                    *</td>
                <td class="style86">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBoxCNUM" ControlToValidate="TextBoxCCNUM" 
                        ErrorMessage="Both should be same" ForeColor="Red" 
                        style="width: 149px; height: 17px"></asp:CompareValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBoxCCNUM" ErrorMessage="Confirm Card Number" 
                        ForeColor="Red" style="width: 157px; height: 12px"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="right" class="style76">
                    </td>
                <td class="style57" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00">
                    Card Validity-MM</td>
                <td class="style60" style="color: #FF0000">
                    <asp:DropDownList ID="DropDownLSelectMonth" runat="server" Width="130px">
                        <asp:ListItem>Select Month</asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem Value="09">09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    *</td>
                <td class="style87">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="DropDownLSelectMonth" ErrorMessage="Select Month" 
                        ForeColor="Red" InitialValue="Select Month"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style61">
                    </td>
                <td class="style44" 
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00">
                    YYYY</td>
                <td class="style45" style="color: #FF0000">
                    <asp:DropDownList ID="DropDownSelectYear" runat="server" Width="130px">
                        <asp:ListItem>Select Year</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2020</asp:ListItem>
                        <asp:ListItem>2021</asp:ListItem>
                        <asp:ListItem>2022</asp:ListItem>
                        <asp:ListItem>2023</asp:ListItem>
                        <asp:ListItem>2024</asp:ListItem>
                        <asp:ListItem>2025</asp:ListItem>
                        <asp:ListItem>2026</asp:ListItem>
                        <asp:ListItem>2027</asp:ListItem>
                        <asp:ListItem>2028</asp:ListItem>
                        <asp:ListItem>2029</asp:ListItem>
                        <asp:ListItem>2030</asp:ListItem>
                        <asp:ListItem>2031</asp:ListItem>
                        <asp:ListItem>2032</asp:ListItem>
                        <asp:ListItem>2033</asp:ListItem>
                        <asp:ListItem>2034</asp:ListItem>
                    </asp:DropDownList>
                    *</td>
                <td class="style84">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="DropDownSelectYear" ErrorMessage="Select Year" 
                        ForeColor="Red" InitialValue="Select Year"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style77">
                    </td>
                <td class="style68" 
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00">
                    CVV</td>
                <td class="style69" style="color: #FF0000">
                    <asp:TextBox ID="TextBoxCVV" runat="server" TextMode="Password" Width="130px"></asp:TextBox>
                    *</td>
                <td class="style88">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="TextBoxCVV" ErrorMessage="Enter CVV" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="TextBoxCVV" ErrorMessage="Enter 3 digits" ForeColor="Red" 
                        ValidationExpression="[0-9]{3}"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style78">
                    </td>
                <td class="style44" 
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00">
                    I do Not Agree</td>
                <td class="style45">
                    <asp:CheckBox ID="CheckBox" runat="server" AutoPostBack="True" 
                        oncheckedchanged="CheckBox1_CheckedChanged" />
                    </td>
                <td class="style84">
                    </td>
            </tr>
            <tr>
                <td align="right" class="style79">
                    </td>
                <td align="right" class="style30">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Pay Bill" 
                        style="height: 26px" BackColor="#FFDC4F" Height="28px" Width="89px" />
                    </td>
                <td class="style31">
                    &nbsp;</td>
                <td class="style32">
                    </td>
            </tr>
            <tr>
                <td align="right" class="style80">
                    &nbsp;</td>
                <td class="style25">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Cancel" 
                       style="height: 26px" BackColor="#FFDC4F" Height="28px" Width="89px" 
                        CausesValidation="False"  />
                </td>
                <td class="style5">
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Reset" 
                        Width="89px" 
                        style="text-align: center; " BackColor="#FFDC4F" Height="28px" 
                        CausesValidation="False" />
                </td>
                <td class="style89">
                    &nbsp;</td>
            </tr>
        </table>
    
    </asp:Content>
