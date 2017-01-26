<%@ Page Title="" Language="C#" MasterPageFile="~/bps.Master" AutoEventWireup="true" CodeBehind="vendor_registration_form.aspx.cs" Inherits="bill_payment.vendor_registration_form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style7
    {
        height: 42px;
    }
        .style10
        {
            height: 5px;
            text-align: left;
            width: 818px;
        }
    .style21
    {
        width: 818px;
        height: 31px;
    }
    .style30
    {
            width: 818px;
            height: 26px;
        }
    .style33
    {
            text-align: left;
            width: 940px;
        }
    .style34
    {
            text-align: left;
            width: 940px;
            height: 26px;
        }
    .style35
    {
        text-align: left;
        width: 940px;
        height: 31px;
    }
    .style36
    {
        height: 1px;
        text-align: left;
        width: 940px;
    }
    .style37
    {
        width: 940px;
    }
        .style38
        {
            width: 284px;
        }
        .style47
        {
            height: 26px;
            width: 784px;
        }
        .style48
        {
            height: 31px;
            width: 784px;
        }
        .style49
        {
            height: 1px;
            width: 784px;
        }
        .style50
        {
            height: 23px;
            font-size: xx-large;
            font-family: "Times New Roman", Times, serif;
            color: #009D00;
            text-align: left;
        }
        .style57
        {
            width: 784px;
        }
        .style58
        {
            width: 818px;
        }
        .style59
        {
            text-align: left;
            width: 887px;
        }
        .style60
        {
            text-align: left;
            width: 887px;
            height: 26px;
        }
        .style61
        {
            text-align: left;
            width: 887px;
            height: 31px;
        }
        .style62
        {
            height: 1px;
            text-align: left;
            width: 887px;
        }
        .style63
        {
            width: 887px;
        }
        .style78
        {
            width: 100%;
        }
        .style79
        {
            height: 25px;
        }
        .style82
        {
            width: 231px;
        }
        .style83
        {
            height: 25px;
            width: 231px;
        }
        .style84
        {
            height: 25px;
            width: 290px;
        }
        .style85
        {
            width: 290px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1" style="width: 96%">
        <tr>
            <td class="style50" colspan="5" valign="middle">
                &nbsp;<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VENDOR REGISTRATION<br />
                <br />
                </strong>
                </td>
        </tr>
        <tr>
            <td class="style59" 
                
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                &nbsp;</td>
            <td class="style33" 
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                Company Registration Number</td>
            <td class="style58" style="color: #FF0000">
                <asp:DropDownList ID="TextBoxcompanyno" runat="server" 
                    onselectedindexchanged="TextBoxcompanyno_SelectedIndexChanged" 
                    AutoPostBack="True" Width="130px" AppendDataBoundItems="True" 
                    DataSourceID="SqlDataSource2" DataTextField="company_registration_number" 
                    DataValueField="company_registration_number">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:bill_payment_system_dbConnectionString4 %>" 
                    SelectCommand="SELECT DISTINCT [company_registration_number] FROM [vendor]">
                </asp:SqlDataSource>
                *</td>
            <td class="style57">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="TextBoxcompanyno" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label_Vend_Reg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td rowspan="15">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:bill_payment_system_dbConnectionString %>" 
                    onselecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [vendor]">
                </asp:SqlDataSource>
                <table border="1px" class="style78">
                    <tr>
                        <td class="style79" colspan="2">
                            Refer here for valid Employee Count</td>
                    </tr>
                    <tr>
                        <td class="style83">
                    YOS</td>
                        <td class="style84">
                        Employees Count</td>
                    </tr>
                    <tr>
                        <td class="style82">
                    1-5</td>
                        <td class="style85">
                    &gt;=30 and &lt;50</td>
                    </tr>
                    <tr>
                        <td class="style82">
                    5-10</td>
                        <td class="style85">
                    &gt;=50 and &lt;75
                        </td>
                    </tr>
                    <tr>
                        <td class="style82">
                    10-15</td>
                        <td class="style85">
                    &gt;=75 and &lt;100</td>
                    </tr>
                    <tr>
                        <td class="style82">
                    15-25</td>
                        <td class="style85">
                    &gt;=100 and &lt;200</td>
                    </tr>
                    <tr>
                        <td class="style82">
                    25-50</td>
                        <td class="style85">
                    &gt;=200 and &lt;500</td>
                    </tr>
                    <tr>
                        <td class="style82">
                    &gt;50</td>
                        <td class="style85">
                    &gt;=500</td>
                    </tr>
                </table>
                <br />
                &nbsp;<br />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="company_registration_number" DataSourceID="SqlDataSource1" 
                    Height="188px" Width="218px" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="company_registration_number" 
                            HeaderText="company_registration_number" ReadOnly="True" 
                            SortExpression="company_registration_number" />
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
            </td>
            <td class="style38">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style59" 
                
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                &nbsp;</td>
            <td class="style33" 
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                Vendor Name</td>
            <td class="style58" style="color: #FF0000">
                <asp:TextBox ID="TextBox2vendorname" runat="server" Width="130px" 
                    Enabled="False" ReadOnly="True"></asp:TextBox>
                *</td>
            <td class="style57">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox2vendorname" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2vendorname" 
                    ErrorMessage="Enter name in exact format" ForeColor="Red" 
                    ValidationExpression="^[A-Z][a-zA-Z ]*$"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style59" 
                
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                &nbsp;</td>
            <td class="style33" 
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                Vendor Type</td>
            <td class="style58" style="color: #FF0000">
                <asp:TextBox ID="TextBoxvendortype" runat="server" Width="130px" 
                    Enabled="False" ReadOnly="True"></asp:TextBox>
                *</td>
            <td class="style57">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBoxvendortype" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style60" 
                
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                &nbsp;</td>
            <td class="style34" 
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                Address</td>
            <td class="style30" style="color: #FF0000">
                <asp:TextBox ID="TextBoxaddress" runat="server" Width="130px" 
                    style="margin-left: 0px"></asp:TextBox>
                *</td>
            <td class="style47">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBoxaddress" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style61" 
                
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                &nbsp;</td>
            <td class="style35" 
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                Country</td>
            <td class="style21" style="color: #FF0000">
                <asp:DropDownList ID="ddlcountry" runat="server" Width="130px" 
                    onselectedindexchanged="ddlcountry_SelectedIndexChanged" 
                    AutoPostBack="True">
                    <asp:ListItem>Select Country</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>UK</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>Italy</asp:ListItem>
                </asp:DropDownList>
                *</td>
            <td class="style48">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="ddlcountry" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style60" 
                
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                &nbsp;</td>
            <td class="style34" 
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                State</td>
            <td class="style30" style="color: #FF0000">
                <asp:DropDownList ID="ddlstate" runat="server" Width="130px" 
                    AutoPostBack="True">
                   
                </asp:DropDownList>
                *</td>
            <td class="style47">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="ddlstate" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style59" 
                
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                &nbsp;</td>
            <td class="style33" 
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                Email ID</td>
            <td class="style58" style="color: #FF0000">
                <asp:TextBox ID="TextBoxemail" runat="server" Width="130px"></asp:TextBox>
                *</td>
            <td class="style57">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBoxemail" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBoxemail" ErrorMessage="Enter valid EmailID" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style59" 
                
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                &nbsp;</td>
            <td class="style33" 
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                Contact Number</td>
            <td class="style58" style="color: #FF0000">
                <asp:TextBox ID="TextBoxcontact" runat="server" Width="130px"></asp:TextBox>
                *</td>
            <td class="style57">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBoxcontact" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBoxcontact" ErrorMessage="Enter valid number" 
                    ForeColor="Red" ValidationExpression="^[2-9]{1}[0-9]{9}$"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style62" 
                
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                &nbsp;</td>
            <td class="style36" 
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                Web Site</td>
            <td class="style10" style="color: #FF0000">
                <asp:TextBox ID="TextBoxwebsite" runat="server" Width="130px" 
                    AutoPostBack="True" ontextchanged="TextBoxwebsite_TextChanged"></asp:TextBox>
                *</td>
            <td class="style49">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBoxwebsite" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBoxwebsite" ErrorMessage="Enter valid website" 
                    ForeColor="Red" ValidationExpression="^www.[a-zA-Z0-9]+.com$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style59" 
                
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                </td>
            <td class="style33" 
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                Certificate Issued Date</td>
            <td class="style58" style="color: #FF0000">
                <asp:TextBox ID="TextBoxcertiissueddate" runat="server" Width="130px" 
                    AutoPostBack="True" Enabled="False" ReadOnly="True"></asp:TextBox>
                *<br />
            </td>
            <td class="style57">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBoxcertiissueddate" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style59" 
                
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                &nbsp;</td>
            <td class="style33" 
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                Certificate Validity Date</td>
            <td class="style58" style="color: #FF0000">
                <asp:TextBox ID="TextBoxcertivaliditydate" runat="server" Width="130px" 
                    Enabled="False" ReadOnly="True"></asp:TextBox>
                *<br />
            </td>
            <td class="style57">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="TextBoxcertivaliditydate" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style59" 
                
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                &nbsp;</td>
            <td class="style33" 
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                Employees Count</td>
            <td class="style58" style="color: #FF0000">
                <asp:TextBox ID="TextBoxemployeecount" runat="server" Width="130px" 
                    AutoPostBack="True" ontextchanged="TextBoxemployeecount_TextChanged"></asp:TextBox>
                *</td>
            <td class="style57">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="TextBoxemployeecount" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="Label_Vend_Reg_Cert" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style59" 
                
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                &nbsp;</td>
            <td class="style33" 
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                Customer Count</td>
            <td class="style58" style="color: #FF0000">
                <asp:TextBox ID="TextBoxcustomercount" runat="server" Width="130px"></asp:TextBox>
                *</td>
            <td class="style57">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="TextBoxcustomercount" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style59" 
                
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                &nbsp;</td>
            <td class="style33" 
                style="color: #009D00; font-family: 'Times New Roman', Times, serif; font-weight: bold;">
                Year Of Establishment</td>
            <td class="style58" style="color: #FF0000">
                <asp:TextBox ID="TextBoxyearestablishment" runat="server" Width="130px"></asp:TextBox>
                *</td>
            <td class="style57">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="TextBoxyearestablishment" ErrorMessage="Required Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBoxyearestablishment" 
                    ErrorMessage="Year must be in between 1900 and current year" ForeColor="Red" 
                    MaximumValue="2014" MinimumValue="1900"></asp:RangeValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style63" align="left">
                &nbsp;</td>
            <td class="style37" align="left">
                <asp:Button ID="buttonsubmit" runat="server" 
                    Text="Submit"   onclick="buttonsubmit_Click" ForeColor="#3333FF" 
                    Height="28px" Width="89px" BackColor="#FFDC4F" />
            </td>
            <td class="style58" align="left">
                <asp:Button ID="Button1" runat="server" ForeColor="#3333FF" Height="28px" 
                    onclick="Button1_Click" style="margin-top: 3px; text-align: center;" 
                    Text="Reset" Width="89px" BackColor="#FFDC4F" CausesValidation="False" />
            </td>
            <td class="style57">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
