<%@ Page Language="C#" EnableSessionState="True" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Assign3.WebForm3" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    


    <style>
        .head { grid-area: header;}
        .main { grid-area: main; }
        .foot { grid-area: footer;height: 650px;} 

        .grid-container {
            display: grid;    
            grid-gap: 5px;
            background-color:#192A56;
            padding: 50px;
            margin-left: 350px;
            margin-right: 750px;
            padding-top: 10px;
        }

        .grid-container > div {
            background-color: #6A89CC;
            text-align: center;
            padding: 20px 0;
            font-size: 15px;
            height: 66px;
            width: 388px;
            margin-top: 0px;
        }
        .grid-container > h1 {
            background-color: yellowgreen;
            text-align: center;
            padding: 20px 0;
            font-size: 1.5em;
            height: 41px;
            width: 387px;
            margin-left: 0px;
            margin-top: 0px;
        }
        
    </style>
    <title>Profile Page</title>
</head>
<body>
    <form id="form2" runat="server">
<div class="grid-container">
            <h1>
                Sheridan Car Sales</h1>
            <h1>
           <asp:Label ID="wu" runat="server" Text="Welcome!" Font-Size="Medium"></asp:Label> 
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </h1>
            <div>
                <br />
                &nbsp; Brand :&nbsp; <asp:DropDownList ID="brandList" runat="server" Width="194px" OnSelectedIndexChanged="brandList_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem Selected="True">Jaguar</asp:ListItem>
                    <asp:ListItem>Acura</asp:ListItem>
                    <asp:ListItem>Mercedes</asp:ListItem>
                    <asp:ListItem>Land Rover</asp:ListItem>
            </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="brandListRequired" runat="server" ControlToValidate="brandList" ErrorMessage="Cannot be Empty"></asp:RequiredFieldValidator>
    </div>
<div>
    &nbsp;Model :&nbsp;<asp:DropDownList ID="model" runat="server" Width="194px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
    </asp:DropDownList>
    <br />&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Cannot be empty" ControlToValidate="model"></asp:RequiredFieldValidator>
</div>
<div>Year :&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="year" runat="server" Width="194px" TextMode="Number"></asp:TextBox>
&nbsp;<br />
    <asp:RangeValidator ID="yearRange" runat="server" ControlToValidate="year" ErrorMessage="Should be between 2000 and 2019" MaximumValue="2019" MinimumValue="2000" Type="Integer"></asp:RangeValidator>
    </div>        
    <div >&nbsp;Colour :&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="colour" runat="server" Width="194px">
                    <asp:ListItem Selected="True">Black</asp:ListItem>
                    <asp:ListItem>White</asp:ListItem>
                    <asp:ListItem>Indigo</asp:ListItem>
                    <asp:ListItem>Red</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="colourRequired" runat="server" ControlToValidate="colour" ErrorMessage="Cannot be Empty"></asp:RequiredFieldValidator>
                <br />
             </div>
                <div>Price:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="price" runat="server" Width="194px" BorderStyle="Dashed" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Cannot be Empty" ControlToValidate="price"></asp:RequiredFieldValidator>
                    <br />
</div>
                        <div>&nbsp;&nbsp; &nbsp;<asp:Button ID="Order" runat="server" Text="Order" Width="194px" Height="27px" OnClick="Order_Click1" />
                            &nbsp;&nbsp;&nbsp;<br />
                  &nbsp;<br />
                            <asp:Button ID="previousOrders" runat="server" Text="View Order" Width="194px" Height="27px" CausesValidation="False" UseSubmitBehavior="False" ValidateRequestMode="Disabled" OnClick="previousOrders_Click" />
                            <br />
                        </div>
        <div>
            <asp:TextBox ID="hist" runat="server" Height="67px" Width="348px" ReadOnly="True"></asp:TextBox>
        </div>
    </div>
    </form>
</body>
</html>