<%@ Page Language="C#" EnableSessionState="True" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assign3.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Login Page</title>
<style>
    .head { grid-area: header;
            height: 30px;
    }
    h1{
        height: inherit;
    }
    .main { grid-area: main;
            background-color: #6A89CC;
            padding-top: 15px;
        margin-top: 22px;
    }
    .foot { grid-area: footer;height: 65px;}

    .grid-container {
        display: grid;
        grid-template-areas:
                           'header header header header header header'
                           'menu main main main right right'
                           'menu footer footer footer footer footer';
        grid-gap: 30px;
        background-color: #192A56;
        padding: 50px;
        margin-left: 200px;
        margin-right: 700px;
        padding-top: 10px;
        
    }
    .foot{
        background-color: darkgoldenrod;
    }

    .grid-container > div {
        background-color: yellowgreen;
        text-align: center;
        font-size: 15px;
        margin-bottom: 450px;
    }
    head > h1 {
        background-color: yellowgreen;
        text-align: center;

    }
</style>
    </head>
<body>
        <div class ="grid-container">
     <div style="width: 569px; height: 318px; margin-bottom: 1px">
       
            <form id="form1" runat="server">
       <div class="head">
            <h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SIGN IN</h1>
           </div> 
            <br />
           <div class="main"> 
                <p style="margin-left: 40px">
                    E-Mail :<asp:TextBox ID="LoginMail" runat="server" Width="194px" BorderStyle="Dashed" TextMode="Email" style="margin-left: 28px; margin-bottom: 0px"></asp:TextBox>
&nbsp;<br />
&nbsp;&nbsp; <asp:RequiredFieldValidator ID="emailRequired" runat="server" ErrorMessage="Cannot be Empty" ControlToValidate="LoginMail" Font-Bold="True" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                </p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password :&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Pass" runat="server" Width="194px" BorderStyle="Dashed" TextMode="Password">Please Input Your Password </asp:TextBox>
&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="passwordRequired" runat="server" ErrorMessage="Cannot be empty" ControlToValidate="Pass" Font-Bold="True" ForeColor="Maroon"></asp:RequiredFieldValidator>
&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="187px" style="margin-left: 0px" BorderColor="Yellow" Height="34px" />
            <br />
               
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Registration" Width="187px" BorderColor="Yellow" OnClick="Button2_Click" UseSubmitBehavior="False" CausesValidation="False" ValidateRequestMode="Disabled" ViewStateMode="Enabled" Height="34px" style="margin-left: 0px" />
            <br />
            <br />
            &nbsp;&nbsp;<br />
&nbsp;<asp:Label ID="log" runat="server"></asp:Label>
            <br />
            <br />
            </div>
&nbsp;<div class="foot">
                --- Sheridan College 2019 --- 
                <br />
                <br />
                --- Illia Tsybin && Soni Yatharth Alpeshkumar ---
                </div>
    </form>
            </div>
            </div>
</body>
    </html>