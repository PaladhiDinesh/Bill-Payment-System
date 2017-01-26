<%@ Page Title="" Language="C#" MasterPageFile="~/bps.Master" AutoEventWireup="true" CodeBehind="customer_registration_form.aspx.cs" Inherits="bill_payment.customer_registration_form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style9
    {
        height: 41px;
        width: 752px;
        text-align: left;
    }
    .style10
    {
        width: 1737px;
        height: 41px;
        text-align: left;
    }
    .style13
    {
        width: 752px;
        text-align: left;
    }
    .style14
    {
        width: 1737px;
        text-align: left;
    }
        .style16
        {
            height: 1px;
            width: 333px;
            text-align: center;
        }
        .style17
        {
            width: 333px;
        text-align: right;
    }
        #Reset1
        {}
        .style19
        {
        width: 333px;
        height: 23px;
        text-align: center;
    }
    .style22
    {
        width: 752px;
        height: 23px;
        text-align: left;
    }
    .style25
    {
        width: 1737px;
        height: 23px;
        text-align: left;
    }
    .style26
    {
        text-align: left;
        font-family: "Times New Roman", Times, serif;
        font-size: xx-large;
        color: #009D00;
    }
    .style27
    {
        width: 1149px;
        text-align: left;
    }
    .style28
    {
        width: 1149px;
        height: 23px;
        text-align: left;
    }
    .style29
    {
        width: 1149px;
        height: 41px;
        text-align: left;
    }
    .style30
    {
        width: 1149px;
        height: 23px;
        text-align: center;
    }
        .style37
        {
        width: 1149px;
        text-align: center;
        height: 27px;
    }
    .style39
    {
        width: 1263px;
        text-align: center;
    }
    .style49
    {
        width: 333px;
        height: 27px;
        text-align: center;
    }
    .style50
    {
        width: 1737px;
        height: 27px;
        text-align: left;
    }
    .style51
    {
        height: 27px;
        width: 752px;
        text-align: left;
    }
    .style57
    {
        width: 1149px;
        height: 5px;
        text-align: left;
    }
    .style58
    {
        width: 1737px;
        height: 5px;
        text-align: left;
    }
    .style59
    {
        width: 333px;
        height: 5px;
        text-align: center;
    }
    .style60
    {
        width: 752px;
        height: 5px;
        text-align: left;
    }
    .style64
    {
        width: 1149px;
        text-align: center;
        height: 90px;
    }
    .style66
    {
        width: 333px;
        height: 90px;
        text-align: center;
    }
    .style67
    {
        width: 1737px;
        height: 90px;
        text-align: left;
    }
    .style68
    {
        height: 90px;
        width: 752px;
        text-align: left;
    }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[


// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="style1" style="margin-right: 0px; width: 106%;">
            <tr>
                <td class="style26" colspan="5">
                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Customer Registration
                    <br />
                    </strong>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:bill_payment_systemConnectionString2 %>" 
                        SelectCommand="SELECT distinct [country_name] FROM [country]"></asp:SqlDataSource>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td class="style27" align="right" 
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    &nbsp;</td>
                <td class="style14" 
                    
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    Customer Name :</td>
                <td class="style19" style="color: #FF0000">
                    <asp:TextBox ID="Cust_name" runat="server" Width="130px" ontextchanged="Cust_name_TextChanged" 
                       ></asp:TextBox>
                    *</td>
                <td class="style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="Cust_name" ErrorMessage="Required Field" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="Cust_name" ErrorMessage="Enter a valid name!!" 
                        ForeColor="Red" ValidationExpression="^[A-Z][a-zA-Z ]*$"></asp:RegularExpressionValidator>
                </td>
                <td class="style39" rowspan="14">
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:bill_payment_system_dbConnectionString %>" 
                        SelectCommand="SELECT * FROM [document_details]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="document_id" DataSourceID="SqlDataSource4" CellPadding="4" 
                        ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="document_id" HeaderText="document_id" 
                                ReadOnly="True" SortExpression="document_id" />
                            <asp:BoundField DataField="document_name" HeaderText="document_name" 
                                SortExpression="document_name" />
                            <asp:BoundField DataField="document_format" HeaderText="document_format" 
                                SortExpression="document_format" />
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
            </tr>
            <tr>
                <td class="style37" 
                    
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    </td>
                <td class="style50" 
                    
                    
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    Address :</td>
                <td class="style49" style="color: #FF0000">
                    <asp:TextBox ID="address" runat="server" Width="130px"></asp:TextBox>
                    *</td>
                <td class="style51">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="address" ErrorMessage="Required Field " 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style64" 
                    
                    
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    </td>
                <td class="style67" 
                    
                    
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    Country :<br />
                    <br />
                    State :</td>
                <td class="style66" style="color: #FF0000">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="country" runat="server" AppendDataBoundItems="True" 
                                AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="country_name" 
                                DataValueField="country_name" 
                                onselectedindexchanged="country_SelectedIndexChanged" Width="130px">
                            </asp:DropDownList>
                            *<br />
<br />
                            <asp:DropDownList ID="state" runat="server" AutoPostBack="True" 
                                DataTextField="state_name" DataValueField="state_name" 
                                onselectedindexchanged="state_SelectedIndexChanged" Width="130px">
                            </asp:DropDownList>
                            *<br />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td class="style68">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="country" ErrorMessage="Required Field   " 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="state" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label_Cus_Reg_State" runat="server" ForeColor="#FF3300" 
                        Width="130px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style57" align="right" 
                    
                    
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    </td>
                <td class="style58" 
                    
                    
                    
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    Contact Number :</td>
                <td class="style59" style="color: #FF0000">
                    <asp:TextBox ID="contact" runat="server" Width="130px"></asp:TextBox>
                    *</td>
                <td class="style60">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="contact" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="contact" ErrorMessage="Enter a valid mobile number!!" 
                        ForeColor="Red" ValidationExpression="^[2-9]{1}[0-9]{9}$"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style27" align="right" 
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    &nbsp;</td>
                <td class="style14" 
                    
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    E-mail id :</td>
                <td class="style19" style="color: #FF0000">
                    <asp:TextBox ID="email" runat="server" Width="130px"></asp:TextBox>
                    *</td>
                <td class="style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="email" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="email" ErrorMessage="Enter valid email address!!" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style27" align="right" 
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    &nbsp;</td>
                <td class="style14" 
                    
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    Identification Document :</td>
                <td class="style19" style="color: #FF0000">
                    <asp:DropDownList ID="id_doc" runat="server" DataSourceID="SqlDataSource2" 
                        DataTextField="document_name" DataValueField="document_name" Width="130px" 
                        AppendDataBoundItems="True" AutoPostBack="True" 
                        onselectedindexchanged="id_doc_SelectedIndexChanged">
                    </asp:DropDownList>
                    *<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:bill_payment_systemConnectionString %>" 
                        SelectCommand="SELECT [document_name] FROM [document_details]">
                    </asp:SqlDataSource>
                </td>
                <td class="style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="id_doc" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style28" align="right" 
                    
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    </td>
                <td class="style25" 
                    
                    
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    Document Detail Number :</td>
                <td class="style19" style="color: #FF0000">
                    <asp:TextBox ID="doc_num" runat="server" ontextchanged="doc_num_TextChanged" 
                        Width="130px"></asp:TextBox>
                    *</td>
                <td class="style22">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="doc_num" ErrorMessage="Required Field" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:Label ID="LabelDocDetNum" runat="server" ForeColor="Red"></asp:Label>
                    &nbsp;&nbsp;
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style28" align="right" 
                    
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    </td>
                <td class="style25" 
                    
                    
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    Type of Vendor :</td>
                <td class="style19" style="color: #FF0000">
                    <asp:DropDownList ID="vendor_type" runat="server" DataSourceID="SqlDataSource3" 
                        DataTextField="vendor_type" DataValueField="vendor_type" 
                        AutoPostBack="True" 
                        onselectedindexchanged="vendor_type_SelectedIndexChanged" 
                        AppendDataBoundItems="True" Width="130px">
                    </asp:DropDownList>
                    *<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:bill_payment_systemConnectionString %>" 
                        SelectCommand="SELECT DISTINCT [vendor_type] FROM [vendor]"></asp:SqlDataSource>
                </td>
                <td class="style22">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="vendor_type" ErrorMessage="Required Field" 
                        ForeColor="Red" InitialValue="Select Vendor Type"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style28" align="right" 
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    &nbsp;</td>
                <td class="style25" 
                    
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    Vendor Name :</td>
                <td class="style19" style="color: #FF0000">
                    <asp:DropDownList ID="vendor_name" runat="server"  
                        DataTextField="vendor_name" DataValueField="vendor_name" 
                        AutoPostBack="True" 
                        onselectedindexchanged="vendor_name_SelectedIndexChanged" Width="130px" style="text-align: center" 
                       >
                    </asp:DropDownList>
                    *</td>
                <td class="style22">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="vendor_name" ErrorMessage="Required Field" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style29" align="right" 
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    &nbsp;</td>
                <td class="style10" 
                    
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    Registration Date :</td>
                <td class="style16" style="color: #FF0000">
                    <asp:TextBox ID="reg_date" runat="server" Enabled="False" ReadOnly="True" 
                        style="text-align: left" Width="130px"></asp:TextBox>
                    *</td>
                <td class="style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="reg_date" ErrorMessage="Required Field" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    </td>
            </tr>
            <tr>
                <td class="style27" align="right" 
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    &nbsp;</td>
                <td class="style14" 
                    
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    Card Number :</td>
                <td class="style19" style="color: #FF0000">
                    <asp:TextBox ID="card" runat="server" Width="130px"></asp:TextBox>
                    *</td>
                <td class="style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="card" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="card" ErrorMessage="Enter valid card number!!" 
                        ForeColor="Red" ValidationExpression="^[1-9]{1}[0-9]{15}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style28" align="right" 
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    &nbsp;</td>
                <td class="style25" 
                    
                    style="color: #009D00; font-weight: bold; font-family: 'Times New Roman', Times, serif; font-size: medium">
                    Balance :</td>
                <td class="style19" style="color: #FF0000">
                    <asp:TextBox ID="bal" runat="server" ReadOnly="True" Enabled="False" 
                        Width="130px"></asp:TextBox>
                    *</td>
                <td class="style22">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="bal" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style30">
                    &nbsp;</td>
                <td class="style25">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
                <td class="style22">
                    &nbsp;</td>
            </tr>
            <tr>
                <%-- <td class="style2">
                    <input id="Button1" type="button" value="SUBMIT" onclick="Button1_Click"/></td>--%>
                <td class="style30">
                    &nbsp;</td>
                <td class="style25">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                        Text="Submit" Width="89px" BackColor="#FFDC4F" Height="28px" />
                </td>
                <td class="style17">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" 
                        Width="89px" BackColor="#FFDC4F" Height="28px" CausesValidation="False" />
                </td>
                <td class="style13">
                    &nbsp;</td>
            </tr>
        </table>
    
</asp:Content>
