﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UpdateContactDetailsUserControl.ascx.cs"
    Inherits="UpdateContactDetailsControl" %>


<script src="../Images/TextValidation.js" type="text/javascript"></script>

<script language="javascript" type="text/javascript">
function ValidateTextBox()
{
var Hno=document.getElementById("UserControl1_txtHno").value;
var Street=document.getElementById("UserControl1_txtStreet").value;
var City=document.getElementById("UserControl1_txtCity").value;
var pin=document.getElementById("UserControl1_txtpin").value;
var State=document.getElementById("UserControl1_txtState").value;
var Country=document.getElementById("UserControl1_txtCountry").value;
  if(Hno=="")
    alert('Enter House No')
  if(Street=="")
    alert('Enter Street Name')
  if(City=="")
    alert('Enter City Name')
  if(pin=="")
    alert('Enter Pin Code')
  if(State=="")
   alert('Enter State Name')
  if(Country=="")
   alert('Enter Country Name')
  if(Hno!="" && Street!="" && City!="" && pin!="" && State!="" && Country!="")
     return true;
  else 
     return false;
}
</script>

<style type="text/css">
    .HeaderTextStyle
    {
        font-weight: bold;
        text-align: left;
        font-size: medium;
        text-decoration: underline;
        font-family: Verdana;
        color: Blue;
    }
    .NormalTextStyle
    {
        text-align: left;
        font-size: 10px;
        font-family: Verdana;
    }
    .style1
    {
        text-align: left;
        font-size: 10px;
        font-family: Verdana;
        font-weight: bold;
    }
    .style2
    {
        color: #0099FF;
    }
    .style3
    {
        width: 221px;
        text-align: right;
    }
    .style4
    {
        width: 40px;
    }
</style>
<fieldset id="Main" style="border-color: Maroon; border-width: medium; width: 564px;
    background-color: #99CCFF;">
    <table width="100%">
        <tr>
            <td class="HeaderTextStyle" align="left">
                Update Your Address Details
            </td>
        </tr>
        <tr>
            <td>
                
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lblMsg" BackColor="#FFFF99" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="9px" runat="server"></asp:Label><br />
            </td>
        </tr>
        <tr>
            <td>
                <center>
                    <asp:GridView ID="grdAddressdetails" runat="server" AutoGenerateColumns="False" Width="509px"
                        OnRowCommand="grdAddressdetails_RowCommand" 
                        >
                        <Columns>
                            <asp:TemplateField HeaderText="UserId" SortExpression="UserId" Visible="False">
                               
                                <ItemTemplate>
                                    <asp:Label ID="lblUserId" runat="server" Text='<%# Bind("EmpId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="UserAddressId" SortExpression="UserAddressId" Visible="False">
                               
                                <ItemTemplate>
                                    <asp:Label ID="lblUseraddId" runat="server" Text='<%# Bind("Emp_AddressId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Type" SortExpression="UserAddressType">
                               
                                <ItemTemplate>
                                    <asp:Label ID="lblAddType" runat="server" Text='<%# Bind("Emp_AddressType") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderStyle-Wrap="true" HeaderText="House No" SortExpression="H.No">
                               
                                <ItemTemplate>
                                    <asp:Label ID="lblHno" runat="server" Text='<%# Bind("HNo")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Street " SortExpression="Street">
                                
                                <ItemTemplate>
                                    <asp:Label ID="lblStreet" runat="server" Text='<%# Bind("Street") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="City" SortExpression="City">
                               
                                <ItemTemplate>
                                    <asp:Label ID="lblCity" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="State" SortExpression="State">
                               
                                <ItemTemplate>
                                    <asp:Label ID="lblState" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Country" SortExpression="Country">
                               
                                <ItemTemplate>
                                    <asp:Label ID="lblCountry" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="PinCode" SortExpression="PinCode">
                               
                                <ItemTemplate>
                                    <asp:Label ID="lblPinCode" runat="server" Text='<%# Bind("PinCode") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                          
                            <asp:ButtonField ButtonType="Link" CommandName="ModifyAddress" Text="Modify" />
                        </Columns>
                    </asp:GridView>
                </center>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="lblAddAddressMsg1" runat="server" BorderColor="White" 
                    Font-Bold="True" Font-Names="Verdana" Font-Size="10px" ForeColor="Fuchsia" 
                    Visible="False"></asp:Label>
                <asp:LinkButton ID="lnkAddAddress1" runat="server" Font-Bold="True" 
                    Font-Names="Verdana" Font-Size="12px" ForeColor="#FF3300" 
                    oncommand="lnkAddAddress1_Command"></asp:LinkButton>
                <asp:LinkButton ID="lnkAddAddress2" runat="server" Font-Bold="True" 
                    Font-Names="Verdana" Font-Size="12px" ForeColor="#FF3300" 
                    oncommand="lnkAddAddress2_Command"></asp:LinkButton>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <center>
                    <asp:Panel ID="pnlAddress" Wrap="true" runat="server" Visible="false" Width="450px"
                        BackColor="#CCCCCC" EnableViewState="True">
                        <table style="width: 110%">
                            <tr class="style1">
                                <td class="style2" colspan="6">
                                    &nbsp;&nbsp;<asp:Label ID="lblAddType" Font-Bold="true" Font-Size="10px" ForeColor="red"
                                        Font-Names="verdana" runat="server"></asp:Label>
                                    &nbsp; Addrees Details
                                </td>
                            </tr>
                            <tr class="NormalTextStyle">
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                   
                                </td>
                                <td>
                                    
                                </td>
                                <td>
                                    
                                </td>
                                <td>
                                   
                                </td>
                                <td>
                                    
                                </td>
                            </tr>
                            <tr class="NormalTextStyle">
                                <td>
                                    House No
                                </td>
                                <td>
                                    <asp:TextBox ID="txtHno" runat="server" ValidationGroup="add"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ControlToValidate="txtHno" ID="RequiredFieldValidator1"
                                       ValidationGroup="add" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    Street
                                </td>
                                <td>
                                    <asp:TextBox ID="txtStreet" runat="server" ValidationGroup="add"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ControlToValidate="txtStreet" ID="RequiredFieldValidator2"
                                       ValidationGroup="add" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr class="NormalTextStyle">
                                <td>
                                    City
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCity" runat="server" onKeypress="return OnlyChars(event)" ValidationGroup="add"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ControlToValidate="txtCity" ID="RequiredFieldValidator3"
                                      ValidationGroup="add"  runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    Pin Code
                                </td>
                                <td>
                                    <asp:TextBox ID="txtpin" onkeypress="return onlyNumbers(event)" runat="server" ValidationGroup="add"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ControlToValidate="txtpin" ID="RequiredFieldValidator4"
                                      ValidationGroup="add"  runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr class="NormalTextStyle">
                                <td>
                                    State
                                </td>
                                <td>
                                    <asp:TextBox ID="txtState" onKeypress="return OnlyChars(event)" runat="server" ValidationGroup="add"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtState"
                                       ValidationGroup="add" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    Country
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCountry" onKeypress="return OnlyChars(event)" runat="server" ValidationGroup="add"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCountry"
                                      ValidationGroup="add"  ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="6">
                                </td>
                            </tr>
                            <tr class="NormalTextStyle">
                                <td>
                                </td>
                                <td>
                                    <asp:LinkButton ID="lnkAddAnother" Visible="false" runat="server">LinkButton</asp:LinkButton>
                                </td>
                                <td>
                                   
                                </td>
                                <td>
                                </td>
                                <td align="right">
                                    <asp:ImageButton ID="imgbtnSubmit" runat="server" 
                                        ImageUrl="~/Images/btn_submit.jpg" CausesValidation="true" ValidationGroup="add"
                                        OnClick="imgbtnSubmit_Click" />&nbsp;&nbsp;
                                    <asp:ImageButton ID="imgbtnClose" runat="server" 
                                        ImageUrl="~/Images/btn_Close.jpg" onclick="imgbtnClose_Click" />
                                </td>
                                <td>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </center>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
    </table>
    <table width="100%">
        <tr>
            <td class="HeaderTextStyle" align="left">
                Update Your Phone Numbers
            </td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lblMsg1" BackColor="#FFFF99" Font-Bold="True" Font-Names="Verdana"
                    Font-Size="9px" runat="server"></asp:Label><br />
            </td>
        </tr>
        <tr>
            <td>
                <center>
                    <asp:GridView ID="grdPhoneDetails" runat="server" AutoGenerateColumns="False" Width="445px"
                        OnRowCommand="grdPhoneDetails_RowCommand" 
                        >
                        <Columns>
                            <asp:TemplateField HeaderText="UserId" SortExpression="UserId" Visible="False">
                              
                                <ItemTemplate>
                                    <asp:Label ID="lblUserId" runat="server" Text='<%# Bind("EmpId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="Phone Type" SortExpression="UserPhoneType">
                               
                                <ItemTemplate>
                                    <asp:Label ID="lblPhoneType" runat="server" Text='<%# Bind("Emp_PhoneType") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderStyle-Wrap="true" HeaderText="Phone Number" SortExpression="PhoneNumber">
                               
                                <ItemTemplate>
                                    <asp:Label ID="lblPhoneNo" runat="server" Text='<%# Bind("Emp_PhoneNo")%>'></asp:Label>
                                </ItemTemplate>

<HeaderStyle Wrap="True"></HeaderStyle>
                            </asp:TemplateField>
                                                                           
                           
                            
                           
                            <asp:ButtonField ButtonType="Link" CommandName="ModifyPhones" Text="Modify" />
                        </Columns>
                    </asp:GridView>
                </center>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                 <asp:Label ID="lblAddPhoneMsg" runat="server" BorderColor="White" Font-Bold="True" Font-Names="Verdana" Font-Size="10px" ForeColor="Fuchsia" Visible="False"></asp:Label>
                <asp:LinkButton ID="lnkAddPhone1" runat="server" Font-Bold="True" 
                    Font-Names="Verdana" Font-Size="12px" ForeColor="#FF3300" 
                     oncommand="lnkAddPhone1_Command" ></asp:LinkButton>
                <asp:LinkButton ID="lnkAddPhone2" runat="server" Font-Bold="True" 
                    Font-Names="Verdana" Font-Size="12px" ForeColor="#FF3300" 
                     oncommand="lnkAddPhone2_Command" ></asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <center>
                    <asp:Panel ID="pnlPhone" Wrap="true" runat="server" Visible="false" Width="440px"
                        BackColor="#CCCCCC" EnableViewState="True">
                        <table style="width: 89%">
                            <tr class="style1">
                                <td class="style2" colspan="3">
                                    &nbsp;<asp:Label ID="lblPhone" Font-Bold="true" Font-Size="10px" ForeColor="red"
                                        Font-Names="verdana" runat="server"></asp:Label>
                                    &nbsp; Number Details
                                </td>
                            </tr>
                            <tr class="NormalTextStyle">
                                <td>
                                    &nbsp;
                                </td>
                                <td class="style3">
                                   
                                </td>
                                <td class="style4">
                                    
                                </td>
                            </tr>
                            <tr class="NormalTextStyle">
                                <td style="text-align: right">
                                    Phone Number
                                </td>
                                <td class="style3">
                                    <asp:TextBox ID="txtphoneno" onkeypress="return onlyNumbershifen(event)" runat="server" ValidationGroup="add"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                        ControlToValidate="txtphoneno" ErrorMessage="*" ValidationGroup="add"></asp:RequiredFieldValidator>
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                            </tr>
                            
                            <tr class="NormalTextStyle">
                                <td>
                                    <asp:LinkButton ID="lnkAddNewphoneNo" Visible="false" runat="server">LinkButton</asp:LinkButton>
                                </td>
                                <td class="style3">
                                    <asp:ImageButton ID="imgbtnphoneSubmit" runat="server" CausesValidation="true" 
                                        ImageUrl="~/Images/btn_submit.jpg" OnClick="imgbtnphoneSubmit_Click" 
                                        ValidationGroup="add" />&nbsp;&nbsp;
                                    <asp:ImageButton ID="imgbtnPhoneClose" runat="server" 
                                        ImageUrl="~/Images/btn_Close.jpg" onclick="imgbtnPhoneClose_Click" />
                                </td>
                                <td class="style4">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </center>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</fieldset>
