<%@ Page Title="" Language="C#" MasterPageFile="~/bps.Master" AutoEventWireup="true" CodeBehind="vendor_updation_form.aspx.cs" Inherits="bill_payment.vendor_updation_form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml"><head><title></title><style type="text/css">
                                                                        .style1
        {
            width: 118%;
        margin-right: 0px;
    }
        .style3
        {
            width: 243px;
            text-align: left;
        }
        .style4
        {
            height: 23px;
            width: 243px;
            text-align: left;
        }
        .style7
        {
            width: 243px;
            text-align: right;
            height: 26px;
        }
        .style15
    {
        font-size: xx-large;
    }
    .style65
    {
        height: 14px;
        width: 252px;
        text-align: left;
    }
    .style141
    {
        height: 14px;
        width: 151px;
    }
    .style142
    {
        height: 16px;
        width: 151px;
    }
    .style143
    {
                                                                            height: 30px;
                                                                            width: 151px;
                                                                        }
    .style144
    {
                                                                            height: 29px;
                                                                            width: 151px;
                                                                        }
    .style145
    {
                                                                            height: 31px;
                                                                            width: 151px;
                                                                        }
    .style146
    {
                                                                            height: 32px;
                                                                            width: 151px;
                                                                        }
    .style147
    {
        height: 34px;
        width: 151px;
    }
    .style148
    {
        height: 28px;
        width: 151px;
    }
                                                                        .style165
                                                                        {
                                                                            height: 60px;
                                                                            text-align: left;
                                                                        }
                                                                        .style176
                                                                        {
                                                                            height: 14px;
                                                                            text-align: left;
                                                                            color: #009D00;
                                                                            width: 153px;
                                                                        }
                                                                        .style184
                                                                        {
                                                                            height: 38px;
                                                                            text-align: left;
                                                                            width: 153px;
                                                                        }
                                                                        .style192
                                                                        {
                                                                            height: 38px;
                                                                            width: 252px;
                                                                        }
                                                                        .style201
                                                                        {
                                                                            width: 153px;
                                                                            height: 16px;
                                                                            text-align: left;
                                                                        }
                                                                        .style202
                                                                        {
                                                                            height: 30px;
                                                                            text-align: left;
                                                                            width: 153px;
                                                                        }
                                                                        .style203
                                                                        {
                                                                            width: 153px;
                                                                            height: 29px;
                                                                            text-align: left;
                                                                        }
                                                                        .style204
                                                                        {
                                                                            height: 31px;
                                                                            text-align: left;
                                                                            width: 153px;
                                                                        }
                                                                        .style205
                                                                        {
                                                                            height: 32px;
                                                                            text-align: left;
                                                                            width: 153px;
                                                                        }
                                                                        .style206
                                                                        {
                                                                            height: 34px;
                                                                            text-align: left;
                                                                            width: 153px;
                                                                        }
                                                                        .style207
                                                                        {
                                                                            width: 153px;
                                                                            height: 28px;
                                                                            text-align: left;
                                                                        }
                                                                        .style208
                                                                        {
                                                                            height: 38px;
                                                                            width: 151px;
                                                                        }
                                                                        .style209
                                                                        {
                                                                            width: 242px;
                                                                        }
                                                                        .style210
                                                                        {
                                                                            width: 252px;
                                                                            height: 16px;
                                                                            text-align: left;
                                                                        }
                                                                        .style211
                                                                        {
                                                                            height: 30px;
                                                                            text-align: left;
                                                                            width: 252px;
                                                                        }
                                                                        .style212
                                                                        {
                                                                            width: 252px;
                                                                            height: 29px;
                                                                            text-align: left;
                                                                        }
                                                                        .style213
                                                                        {
                                                                            height: 31px;
                                                                            text-align: left;
                                                                            width: 252px;
                                                                        }
                                                                        .style214
                                                                        {
                                                                            height: 32px;
                                                                            text-align: left;
                                                                            width: 252px;
                                                                        }
                                                                        .style215
                                                                        {
                                                                            height: 34px;
                                                                            text-align: left;
                                                                            width: 252px;
                                                                        }
                                                                        .style216
                                                                        {
                                                                            width: 252px;
                                                                            height: 28px;
                                                                            text-align: left;
                                                                        }
                                                                        .style217
                                                                        {
                                                                            height: 14px;
                                                                            text-align: left;
                                                                            color: #009D00;
                                                                            width: 211px;
                                                                        }
                                                                        .style218
                                                                        {
                                                                            width: 211px;
                                                                            height: 16px;
                                                                            text-align: left;
                                                                        }
                                                                        .style219
                                                                        {
                                                                            height: 30px;
                                                                            text-align: left;
                                                                            width: 211px;
                                                                        }
                                                                        .style220
                                                                        {
                                                                            width: 211px;
                                                                            height: 29px;
                                                                            text-align: left;
                                                                        }
                                                                        .style221
                                                                        {
                                                                            height: 31px;
                                                                            text-align: left;
                                                                            width: 211px;
                                                                        }
                                                                        .style222
                                                                        {
                                                                            height: 32px;
                                                                            text-align: left;
                                                                            width: 211px;
                                                                        }
                                                                        .style223
                                                                        {
                                                                            height: 34px;
                                                                            text-align: left;
                                                                            width: 211px;
                                                                        }
                                                                        .style224
                                                                        {
                                                                            width: 211px;
                                                                            height: 28px;
                                                                            text-align: left;
                                                                        }
                                                                        .style225
                                                                        {
                                                                            height: 38px;
                                                                            text-align: left;
                                                                            width: 211px;
                                                                        }
                                                                        .style78
                                                                        {
                                                                            width: 100%;
                                                                        }
                                                                        .style79
                                                                        {
                                                                            height: 25px;
                                                                        }
                                                                        .style80
                                                                        {
                                                                            height: 25px;
                                                                            width: 114px;
                                                                        }
                                                                        .style82
                                                                        {
                                                                            width: 41px;
                                                                        }
                                                                        .style81
                                                                        {
                                                                            width: 114px;
                                                                        }
                                                                        .style226
                                                                        {
                                                                            height: 25px;
                                                                            width: 41px;
                                                                        }
    </style></head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
        <table class="style1">
            <tr>
                <td class="style165" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;" 
                    valign="top" colspan="5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;
                    <span class="style15">Vendor Updation&nbsp;</span></td>
                <td class="style165" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;" 
                    valign="top">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style217" 
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold;">
                    &nbsp;</td>
                <td class="style176" 
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold;">
                    Vendor Id</td>
                <td class="style65">
                    <asp:DropDownList ID="DropDownListVendor_id" runat="server" 
                        AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" 
                        DataTextField="vendor_id" DataValueField="vendor_id" 
                        onselectedindexchanged="DropDownListVendor_id_SelectedIndexChanged" 
                        Width="130px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:BillDBcon %>" 
                        SelectCommand="SELECT [vendor_id] FROM [vendor_registration]">
                    </asp:SqlDataSource>
                </td>
                <td class="style141">
                    &nbsp;</td>
                <td class="style209" rowspan="17">
                    <table border="1px" class="style78">
                        <tr>
                            <td class="style79" colspan="2">
                                Refer here for valid Employee Count</td>
                        </tr>
                        <tr>
                            <td class="style226">
                    YOS</td>
                            <td class="style80">
                        Employees Count</td>
                        </tr>
                        <tr>
                            <td class="style82">
                    1-5</td>
                            <td class="style81">
                    &gt;=30 and &lt;50</td>
                        </tr>
                        <tr>
                            <td class="style82">
                    5-10</td>
                            <td class="style81">
                    &gt;=50 and &lt;75
                            </td>
                        </tr>
                        <tr>
                            <td class="style82">
                    10-15</td>
                            <td class="style81">
                    &gt;=75 and &lt;100</td>
                        </tr>
                        <tr>
                            <td class="style82">
                    15-25</td>
                            <td class="style81">
                    &gt;=100 and &lt;200</td>
                        </tr>
                        <tr>
                            <td class="style82">
                    25-50</td>
                            <td class="style81">
                    &gt;=200 and &lt;500</td>
                        </tr>
                        <tr>
                            <td class="style82">
                    &gt;50</td>
                            <td class="style81">
                    &gt;=500</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <br />
                </td>
                <td rowspan="17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style218" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    &nbsp;</td>
                <td class="style201" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    Company Registration Number</td>
                <td class="style210" style="color: #FF0000">
                    <asp:TextBox ID="c_r_n" runat="server" Width="130px" ReadOnly="True" 
                        Enabled="False" style="text-align: center"></asp:TextBox>
                    *</td>
                <td class="style142">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="c_r_n" 
                        ErrorMessage="Company Registration Number Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style219" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    &nbsp;</td>
                <td class="style202" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    Vendor Type</td>
                <td class="style211" style="color: #FF0000">
                    <asp:TextBox ID="vendor_type" runat="server" Width="130px" ReadOnly="True" 
                        Enabled="False"></asp:TextBox>
                    *</td>
                <td class="style143">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="vendor_type" ErrorMessage="Vendor Type Is Required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style219" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    &nbsp;</td>
                <td class="style202" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    Vendor Name</td>
                <td class="style211" style="color: #FF0000">
                    <asp:TextBox ID="vendor_name" runat="server" Width="130px" ReadOnly="True" 
                        Enabled="False" style="margin-left: 0px"></asp:TextBox>
                    *</td>
                <td class="style143">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="vendor_name" ErrorMessage="Vendor Name Is Required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style220" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    </td>
                <td class="style203" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    Year Of Establishment</td>
                <td class="style212" style="color: #FF0000">
                    <asp:TextBox ID="yoe" runat="server" Width="130px" ReadOnly="True" 
                        Enabled="False"></asp:TextBox>
                    *</td>
                <td class="style144">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="yoe" ErrorMessage="Year Of Establishment Is Required " 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style221" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    </td>
                <td class="style204" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    Country</td>
                <td class="style213" style="color: #FF0000">
                    <asp:DropDownList ID="DropDownList_UVend_Country" runat="server" 
                        AutoPostBack="True" DataMember="DefaultView" DataSourceID="SqlDataSource2" 
                        DataTextField="country_name" DataValueField="country_name" Width="130px" 
                        AppendDataBoundItems="True" 
                        onselectedindexchanged="DropDownList_UVend_Country_SelectedIndexChanged">
                    </asp:DropDownList>
                    *<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:bill_payment_system_dbConnectionString3 %>" 
                        SelectCommand="SELECT DISTINCT [country_name] FROM [country]">
                    </asp:SqlDataSource>
                </td>
                <td class="style145">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DropDownList_UVend_Country" ErrorMessage="Country Is Required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label_UVend_Country" runat="server" ForeColor="Red" 
                        Width="202px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style219" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    &nbsp;</td>
                <td class="style202" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    State</td>
                <td class="style211" style="color: #FF0000">
                    <asp:DropDownList ID="DropDownList_UVend_State" runat="server" 
                        AutoPostBack="True" Width="130px" 
                        onselectedindexchanged="DropDownList_UVend_State_SelectedIndexChanged">
                    </asp:DropDownList>
                    *</td>
                <td class="style143">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="DropDownList_UVend_State" 
                        ErrorMessage="State Is Requied" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="style221" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    &nbsp;</td>
                <td class="style204" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    Address</td>
                <td class="style213" style="color: #FF0000">
                    <asp:TextBox ID="address" runat="server" Width="130px" 
                      ></asp:TextBox>
                    *</td>
                <td class="style145">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="address" ErrorMessage="Address Is Required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style222" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    &nbsp;</td>
                <td class="style205" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    Contact Number</td>
                <td class="style214" style="color: #FF0000">
                    <asp:TextBox ID="contact_number" runat="server" Width="130px" Height="22px"></asp:TextBox>
                    *</td>
                <td class="style146">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="contact_number" ErrorMessage="Contact Number Is Required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1_contact_number" 
                        runat="server" ControlToValidate="contact_number" 
                        ErrorMessage="Invalid Contact Number" ForeColor="Red" 
                        ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style220" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    &nbsp;</td>
                <td class="style203" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    Email Id</td>
                <td class="style212" style="color: #FF0000">
                    <asp:TextBox ID="email_id" runat="server" Width="130px"></asp:TextBox>
                    *</td>
                <td class="style144">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="email_id" ErrorMessage="Email Id Is Required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator_emailid" 
                        runat="server" ControlToValidate="email_id" ErrorMessage="Invalid Email Id" 
                        ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style219" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    &nbsp;</td>
                <td class="style202" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    Website</td>
                <td class="style211" style="color: #FF0000">
                    <asp:TextBox ID="website" runat="server" Width="130px"></asp:TextBox>
                    *</td>
                <td class="style143">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="website" ErrorMessage="Website Is Required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator_website" 
                        runat="server" ControlToValidate="website" ErrorMessage="Invalid Website" 
                        ForeColor="Red" ValidationExpression="www.[a-zA-Z0-9]+.com"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style223" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    &nbsp;</td>
                <td class="style206" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    Customer Count</td>
                <td class="style215" style="color: #FF0000">
                    <asp:TextBox ID="cust_count" runat="server" Width="130px"></asp:TextBox>
                    *</td>
                <td class="style147">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="cust_count" ErrorMessage="Invalid Customer Count" 
                        ForeColor="Red" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="cust_count" ErrorMessage="Coustomer Count Is Required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style222" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    &nbsp;</td>
                <td class="style205" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    Employee Count</td>
                <td class="style214" style="color: #FF0000">
                    <asp:TextBox ID="emp_count" runat="server" Width="130px" AutoPostBack="True" 
                        ontextchanged="emp_count_TextChanged"></asp:TextBox>
                    *</td>
                <td class="style146">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="emp_count" ErrorMessage="Employee count Is Required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style224" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    &nbsp;</td>
                <td class="style207" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    Certificate Name</td>
                <td class="style216" style="color: #FF0000">
                    <asp:TextBox ID="certificate_name" runat="server" Width="130px" ReadOnly="True" 
                        Enabled="False"></asp:TextBox>
                    *</td>
                <td class="style148">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="certificate_name" 
                        ErrorMessage="Certificate Name Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style219" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    &nbsp;</td>
                <td class="style202" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    Certificate Issue Date</td>
                <td class="style211" style="color: #FF0000">
                    <asp:TextBox ID="c_i_d" runat="server" Width="130px" ReadOnly="True" 
                        Enabled="False"></asp:TextBox>
                    *</td>
                <td class="style143">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="c_i_d" ErrorMessage="Certificate Issue Date" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style220" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    &nbsp;</td>
                <td class="style203" 
                    
                    
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; color: #009D00;">
                    Certificate Validation Date</td>
                <td class="style212" style="color: #FF0000">
                    <asp:TextBox ID="c_v_d" runat="server" Width="130px" ReadOnly="True" 
                        Enabled="False"></asp:TextBox>
                    *</td>
                <td class="style144">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="c_v_d" 
                        ErrorMessage="Certificate Validation Date Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style225">
                    &nbsp;</td>
                <td class="style184">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" 
                        Text="Update" Width="89px" BackColor="#FFDC4F" Height="28px" 
                        style="margin-bottom: 7px" />
                </td>
                <td class="style192">
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Cancel" 
                        Width="89px" BackColor="#FFDC4F" Height="28px" CausesValidation="False" />
                </td>
                <td class="style208">
                    &nbsp;</td>
            </tr>
            </table>
    
    </div>
  
</body>
</html>
</asp:Content>
