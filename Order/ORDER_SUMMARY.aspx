<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ORDER_SUMMARY.aspx.cs" Inherits="ORDER_SUMMARY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href ="mainsheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <span>
        <asp:Panel ID="Panel2" runat="server" style="z-index: 1; left: 8px; top: 57px; position: absolute; height: 204px; width: 457px" CssClass="newStyle1">
             <asp:Label ID="Label7" runat="server" style="font-weight: 700; z-index: 1; left: 5px; top: 12px; position: absolute; height: 18px; right: 224px; width: 224px;" Text="Selected item for gift"></asp:Label>
                         <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 247px; top: 13px; position: absolute; right: 7px; width: 199px;" Text=": ______________"></asp:Label>
                         <asp:Label ID="lblSelItem" runat="server" style="z-index: 1; left: 247px; top: 13px; position: absolute; right: 7px; width: 199px;"></asp:Label>
            <asp:Label ID="Labe3" runat="server" style="font-weight: 700; z-index: 0; left: 7px; top: 111px; position: absolute; height: 25px; width: 145px;" Text="Delivery Date"></asp:Label>
                        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 243px; top: 66px; position: absolute; right: 5px; width: 205px;" Text=": ______________"></asp:Label>
                        <asp:Label ID="lblRecipient" runat="server" style="z-index: 1; left: 253px; top: 66px; position: absolute; right: 10px; width: 190px;"></asp:Label>
             <asp:Label ID="Labe4" runat="server" style="font-weight: 700; z-index: 1; left: 6px; top: 170px; position: absolute; height: 22px; width: 165px;" Text="Customer Name"></asp:Label>
                        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 243px; top: 110px; position: absolute; right: 9px; width: 201px;" Text=": ______________"></asp:Label>
                        <asp:Label ID="lblDelivery" runat="server" style="z-index: 1; left: 258px; top: 109px; position: absolute; right: 7px; width: 188px;"></asp:Label>
            <asp:Label ID="Label5" runat="server" height="19px" style="font-weight: 700; z-index: 1; left: 7px; top: 61px; position: absolute; width: 167px;" Text="Recipient Name"></asp:Label>
                         <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 243px; top: 161px; position: absolute; right: 13px; width: 197px;" Text=": ______________"></asp:Label>
                        <asp:Label ID="lblCutomer" runat="server" style="z-index: 1; left: 254px; top: 161px; position: absolute; right: 13px; width: 186px;"></asp:Label>
        </asp:Panel>

        <asp:Panel ID="Panel3" runat="server" style="z-index: 1; left: 466px; top: 58px; position: absolute; height: 202px; width: 423px">
             <asp:Label ID="Label9" runat="server" height="19px" style="font-weight: 700; z-index: 1; left: 6px; top: 168px; position: absolute; width: 155px;" Text="E-mail Address"></asp:Label>
                        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 242px; top: 12px; position: absolute; width: 177px;" Text=": ____________"></asp:Label>
                         <asp:Label ID="lblprice" runat="server" style="z-index: 1; left: 256px; top: 10px; position: absolute; right: 4px; width: 159px;"></asp:Label>
            <asp:Label ID="Label10" runat="server" style="font-weight: 700; z-index: 1; left: 2px; top: 14px; position: absolute; height: 19px; right: 183px; width: 234px;" Text="Price of Ordered Gift"></asp:Label>
                         <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 242px; top: 65px; position: absolute; width: 177px;" Text=": ____________"></asp:Label>
                         <asp:Label ID="lblAddress" runat="server" style="z-index: 1; left: 255px; top: 61px; position: absolute; right: 11px; width: 153px;"></asp:Label>
            <asp:Label ID="Label8" runat="server" style="font-weight: 700; z-index: 1; left: 4px; top: 68px; position: absolute; height: -3px;" Text=" Address"></asp:Label>
                       <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 242px; top: 169px; position: absolute; width: 177px;" Text=": ____________"></asp:Label>
                        <asp:Label ID="lblEmail" runat="server" style="z-index: 1; left: 178px; top: 168px; position: absolute; right: 7px; width: 234px;"></asp:Label>
         </asp:Panel>
        <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 312px; top: 22px; position: absolute; font-weight: 700; font-size: x-large; height: 24px; right: -485px; width: 246px;" Text="ORDER SUMMARY"></asp:Label>
</span>
        <asp:Image ID="Image1" runat="server" style="z-index: 1; left: 17px; top: 278px; position: absolute; height: 91px; width: 154px" ImageUrl="~/f1.jpg" />
        <asp:Image ID="Image2" runat="server" style="z-index: 1; left: 346px; top: 279px; position: absolute; height: 91px; width: 154px" ImageUrl="~/f3.jpg" />
        <asp:Image ID="Image3" runat="server" style="z-index: 1; left: 680px; top: 276px; position: absolute; height: 91px; width: 154px" ImageUrl="~/f4.jpg" />
   
        <asp:Label ID="lblMsg" runat="server" style="z-index: 1; left: 387px; top: 405px; position: absolute; right: 345px; width: 157px;"></asp:Label>
        <asp:Label ID="lblNIC" runat="server" style="z-index: 1; left: 404px; top: 453px; position: absolute; right: 328px; width: 157px;" Visible="False"></asp:Label>
         </form>
</body>
</html>
