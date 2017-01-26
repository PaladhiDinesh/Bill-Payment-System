<%@ Page Title="" Language="C#" MasterPageFile="~/bps.Master" AutoEventWireup="true" CodeBehind="customer_updation_form.aspx.cs" Inherits="bill_payment.customer_updation_form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        
        .style21
        {
            font-size: x-large;
            color: #ECBD00;
        }
        .style22
        {
            width: 113%;
            margin-right: 7px;
            margin-top: 43px;
        }
        .style23
        {
        width: 207px;
        font-weight: bold;
        color: #009D4F;
    }
        .style24
        {
        width: 207px;
        height: 26px;
        font-weight: bold;
        color: #009D4F;
    }
        .style27
        {
            height: 15px;
        }
        .style28
        {
            width: 207px;
            height: 23px;
        font-weight: bold;
        color: #009D4F;
    }
        .style30
        {
            width: 207px;
            height: 43px;
        font-weight: bold;
        color: #009D4F;
    }
        .style32
        {
            width: 468px;
        }
        .style33
        {
            width: 1639px;
            }
        .style39
    {
        width: 468px;
        height: 26px;
    }
        .style41
    {
        width: 468px;
        height: 15px;
    }
        .style45
        {
            width: 1993px;
            height: 26px;
        }
        .style46
        {
            width: 1993px;
            height: 23px;
        }
        .style47
        {
            width: 1993px;
            height: 43px;
        }
        .style48
        {
            width: 1993px;
            height: 15px;
        }
        .style49
        {
            width: 468px;
            height: 21px;
        }
        .style50
        {
            width: 207px;
            height: 21px;
            font-weight: bold;
            color: #009D4F;
        }
        .style51
        {
            width: 1993px;
            height: 21px;
        }
        .style52
        {
            width: 1993px;
        }
        </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Submit1_onclick() {

        }

// ]]>
    </script>
</head>
<body>
   
    <div style="font-family: Arial; height: 33px; width: 975px; color: #FF66FF">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style21" 
            style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; color: #009349; font-weight: bold;">&nbsp;UPDATE CUSTOMER PROFILE<br />
        <br />
        </span><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
  
        <table class="style22">
            <tr><td class="style49"></td>
                <td class="style50">
                    Customer_Id</td>
                <td class="style51" style="color: #FF0000">
                    <asp:TextBox ID="cust_id" runat="server" 
                        ontextchanged="cust_id_TextChanged1" Width="130px" 
                        style="text-align: left" ReadOnly="True"></asp:TextBox>
                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="cust_id" ErrorMessage=" Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label_U_Cust" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="style33" style="color: #FF0000" rowspan="15">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:bill_payment_system_dbConnectionString %>" 
                        SelectCommand="SELECT [customer_id], [vendor_name], [vendor_type] FROM [customer_registration]">
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                        DataKeyNames="customer_id" DataSourceID="SqlDataSource2" ForeColor="#333333" 
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
                </td>
            </tr>
            <tr><td class="style32"></td>
                <td class="style23">
                    Vendor Name</td>
                <td class="style52" style="color: #FF0000">
                    <asp:TextBox ID="vname_id" runat="server" AutoPostBack="True" ReadOnly="True" 
                        Width="130px" ontextchanged="vname_id_TextChanged"></asp:TextBox>
                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="vname_id" ErrorMessage="Requried field" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="vname_id" ErrorMessage="Required Right Format" 
                        ForeColor="Red" ValidationExpression="^[A-Z][a-zA-Z ]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr><td class="style39"></td>
                <td class="style24">
                    Vendor Type</td>
                <td class="style45">
                    <asp:TextBox ID="vtype_id" runat="server" ReadOnly="True" Width="130px"></asp:TextBox>
                </td>
            </tr>
            <tr><td class="style32"></td>
                <td class="style23">
                    Customer name</td>
                <td class="style52" style="color: #FF0000">
                    <asp:TextBox ID="cname_id" runat="server" AutoPostBack="True" Width="130px"></asp:TextBox>
                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="cname_id" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="cname_id" ErrorMessage="Required Right Format" 
                        ForeColor="Red" ValidationExpression="^[A-Z][a-zA-Z ]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr><td class="style32"></td>
                <td class="style23">
                    Contact Number</td>
                <td class="style52" style="color: #FF0000">
                    <asp:TextBox ID="contact_id" runat="server" AutoPostBack="True" Width="130px"></asp:TextBox>
                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="contact_id" ErrorMessage="Required Field" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="contact_id" ErrorMessage="Required Right Format" 
                        ForeColor="Red" ValidationExpression="^[1-9]{1}[0-9]{9}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr><td class="style32"></td>
                <td class="style23">
                    Balance</td>
                <td class="style52">
                    <asp:TextBox ID="balance_txt" runat="server" AutoPostBack="True" 
                        ReadOnly="True" Width="130px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr><td class="style32"></td>
                <td class="style23">
                    Email_id</td>
                <td class="style52" style="color: #FF0000">
                    <asp:TextBox ID="email_id" runat="server" AutoPostBack="True" Width="130px"></asp:TextBox>
                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="email_id" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="email_id" ErrorMessage="Required Right Format" 
                        ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr><td class="style32"></td>
                <td class="style24">
                    Address Details</td>
                <td class="style45" style="color: #FF0000">
                    <asp:TextBox ID="add_id" runat="server" AutoPostBack="True" 
                        TextMode="MultiLine" Width="130px"></asp:TextBox>
                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="add_id" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr><td class="style32"></td>
                <td class="style23">
                    Country_Id</td>
                <td class="style52">
                    <asp:TextBox ID="country_id" runat="server" AutoPostBack="True" ReadOnly="True" 
                        Width="130px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr><td class="style32"></td>
                <td class="style24">
                    Document_Detail_Number</td>
                <td class="style45" style="color: #FF0000">
                    <asp:TextBox ID="document_id" runat="server" AutoPostBack="True" 
                        ontextchanged="document_id_TextChanged" Width="130px" 
></asp:TextBox>
&nbsp;*<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="document_id" ErrorMessage="Required Field" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:Label ID="Label" runat="server" ForeColor="Red"></asp:Label>
                    &nbsp;&nbsp;
                    </td>
            </tr>
            <tr><td class="style32"></td>
                <td class="style24">
                    Registration_date</td>
                <td class="style45">
                    <asp:TextBox ID="registration_id" runat="server" AutoPostBack="True" 
                        ReadOnly="True" Width="130px"></asp:TextBox>
                </td>
            </tr>
            <tr><td class="style32"></td>
                <td class="style28">
                    Card_Number</td>
                <td class="style46" style="color: #FF0000">
                    <asp:TextBox ID="card_number" runat="server" AutoPostBack="True" Width="130px"></asp:TextBox>
&nbsp;*<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="card_number" ErrorMessage="Required Field" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                        ControlToValidate="card_number" ErrorMessage="Required Right Format" 
                        ForeColor="Red" ValidationExpression="^[1-9]{1}[0-9]{15}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr><td class="style32"></td>
                <td class="style23">
                    Country Name</td>
                <td class="style52" style="color: #FF0000">
                    <asp:DropDownList ID="DropDownList_UCust_Country" runat="server" 
                        DataSourceID="SqlDataSource1" Width="130px" 
                        onselectedindexchanged="DropDownList_UCust_Country_SelectedIndexChanged" 
                        AppendDataBoundItems="True" AutoPostBack="True" DataMember="DefaultView" 
                        DataTextField="country_name" DataValueField="country_name">
                    </asp:DropDownList>
                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="DropDownList_UCust_Country" 
                        ErrorMessage="Required  Field" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:bill_payment_system_dbConnectionString %>" 
                        SelectCommand="SELECT DISTINCT [country_name] FROM [country]">
                    </asp:SqlDataSource>
                    &nbsp;
                </td>
            </tr>
            <tr><td class="style32"></td>
                <td class="style30">
                    State Name</td>
                <td class="style47" style="color: #FF0000">
                    <asp:DropDownList ID="DropDownList_UCust_State" runat="server" 
                        Width="130px" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList_UCust_State_SelectedIndexChanged">
                    </asp:DropDownList>
                    *<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="DropDownList_UCust_State" ErrorMessage="Required Field" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;
                    <asp:Label ID="LabelSelectStates" runat="server" ForeColor="Red"></asp:Label>
    
                </td>
            </tr>
      
      <tr><td class="style41"></td>
      <td class="style27">
          <asp:Button ID="update_button" runat="server" 
        onclick="update_button_Click" Text="Update" 
                        Height="28px" Width="112px" 
              style="z-index: 1; left: 307px; top: -35px; " BackColor="#FFE377" 
              ForeColor="Black" /></td>
          <td class="style48">
              <asp:Button ID="Button1" runat="server" BackColor="#FFE377" Height="28px" 
                  onclick="Button1_Click1" Text="Cancel" Width="112px" 
                  CausesValidation="False" />
          </td> </tr>
  </table>
    
    </body>
</html>
          
</asp:Content>
