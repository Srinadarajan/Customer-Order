<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ADD DATA.aspx.cs" Inherits="ADD_DATA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href ="mainsheet.css" rel="stylesheet" type="text/css" />
    <title></title>
 </head>
<body>
    <form id="form1" runat="server" style="z-index: 2">
        
        <asp:Label ID="Label11" runat="server" style="z-index: 1; top: 40px; position: absolute; width: 218px; font-weight: 700; left: 552px; text-decoration: underline; font-size: large;" Text="CUSTOMER DETAILS"></asp:Label>
        <asp:Label ID="Label12" runat="server" style="z-index: 1; top: 35px; position: absolute; left: 20px; font-weight: 700; height: 22px; width: 238px; text-decoration: underline; font-size: large;" Text="RECEPIENT DETAILS"></asp:Label>
        <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 365px; top: 7px; position: absolute; font-weight: 700; font-size: x-large; height: 24px; right: -241px; width: 141px;" Text="ADD DATA"></asp:Label>
        <asp:Panel ID="Panel2" runat="server" style="z-index: 1; left: 23px; top: 67px; position: absolute; height: 323px; width: 307px" CssClass="newStyle1">
             <asp:Label ID="Label7" runat="server" style="font-weight: 700; z-index: 1; left: 5px; top: 12px; position: absolute; height: 18px; right: 196px; width: 102px;" Text="Order No"></asp:Label>
            <asp:TextBox ID="txtOrderNo" runat="server" style="position: absolute; top: 34px; left: 5px; height: 20px;"></asp:TextBox>
            <asp:Label ID="Labe2" runat="server" style="font-weight: 700; z-index: 1; left: 6px; top: 149px; position: absolute; height: 18px; right: 202px; width: 95px;" Text="Address"></asp:Label>
             <asp:TextBox ID="txtRecipient" runat="server" style="position: absolute; top: 107px; left: 4px; width: 234px; height: 20px;"></asp:TextBox>
             <asp:Label ID="Labe3" runat="server" style="font-weight: 700; z-index: 0; left: 6px; top: 212px; position: absolute; height: 25px; width: 145px;" Text="Delivery Date"></asp:Label>
             <asp:TextBox ID="txtAddress" runat="server" style="position: absolute; top: 175px; left: 5px; width: 226px; height: 20px;"></asp:TextBox>
             <asp:Label ID="Labe4" runat="server" height="19px" style="font-weight: 700; z-index: 1; left: 5px; top: 262px; position: absolute; right: 206px; width: 92px;" Text="Item No"></asp:Label>
             <asp:Label ID="Label5" runat="server" height="19px" style="font-weight: 700; z-index: 1; left: 4px; top: 82px; position: absolute; width: 167px;" Text="Recipient Name"></asp:Label>
             <asp:TextBox ID="txtItemNo" runat="server" style="position: absolute; top: 290px; left: 5px; width: 88px;"></asp:TextBox>
             <asp:Label ID="Label6" runat="server" height="19px" style="font-weight: 700; z-index: 1; left: 183px; top: 264px; position: absolute" Text="Price" width="64px"></asp:Label>
             <asp:TextBox ID="txtPrice" runat="server" style="position: absolute; top: 291px; left: 179px; width: 88px;"></asp:TextBox>
        </asp:Panel>

        <asp:Panel ID="Panel3" runat="server" style="z-index: 1; left: 554px; top: 84px; position: absolute; height: 244px; width: 304px">
            <asp:Label ID="Label8" runat="server" style="font-weight: 700; z-index: 1; left: 8px; top: 14px; position: absolute; height: 19px;" Text="NIC No"></asp:Label>
             <asp:TextBox ID="txtNIC" runat="server" style="position: absolute; top: 38px; left: 9px; height: 20px;" MaxLength="10" OnTextChanged="txtNIC_TextChanged"></asp:TextBox>
             <asp:Label ID="Label9" runat="server" style="font-weight: 700; z-index: 1; left: 7px; top: 153px; position: absolute; width: 155px;" Text="E-mail Address" height="19px"></asp:Label>
            <asp:TextBox ID="txtCustomer" runat="server" style="position: absolute; top: 112px; left: 6px; width: 258px; height: 20px;"></asp:TextBox>
            <asp:Label ID="Label10" runat="server" style="font-weight: 700; z-index: 1; left: 7px; top: 88px; position: absolute; height: 19px; right: 131px; width: 162px;" Text="Customer Name"></asp:Label>
           <asp:TextBox ID="txtEmail" runat="server" style="position: absolute; top: 179px; left: 9px; width: 255px; height: 20px;"></asp:TextBox>
     </asp:Panel>
        <asp:DropDownList ID="drpMonth" runat="server" style="z-index: 1; left: 97px; top: 303px; position: absolute; height: 20px; width: 56px;"><asp:ListItem></asp:ListItem></asp:DropDownList>
        <asp:DropDownList ID="drpDay" runat="server" style="z-index: 1; left: 30px; top: 303px; position: absolute; width: 52px; height: -4px; "><asp:ListItem></asp:ListItem></asp:DropDownList>
        <asp:DropDownList ID="drpYear" runat="server" style="z-index: 1; left: 162px; top: 303px; position: absolute; width: 56px; height: 20px;"><asp:ListItem></asp:ListItem></asp:DropDownList>
                    
     <asp:Button ID="cmdSubmit" runat="server" style="z-index: 1; left: 608px; top: 343px; position: absolute; bottom: 122px; width: 127px; height: 37px;" Text="Submit" CssClass="button" OnClick="cmdSubmit_Click" />
    <asp:Button ID="btnNext" runat="server" style="z-index: 1; left: 531px; top: 452px; position: absolute; bottom: -98px; width: 127px; height: 37px;" Text="Next -->" CssClass="button" OnClick="btnNext_Click" />
    <asp:Label ID="lblMsg" runat="server" style="font-weight: 700; z-index: 1; left: 337px; top: 167px; position: absolute; right: 412px; text-align: center;" BackColor="#99FFCC"></asp:Label>
    </form>
</body>
</html>
