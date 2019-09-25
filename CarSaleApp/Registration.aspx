<%@ Page Language="C#" EnableSessionState="True" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Assign3.WebForm1" %>
<!Doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
    
<head runat="server">
<style>
    .head { 
            

            }
    .main { grid-area: main; }
    .foot { height: 65px;}

    .grid-container {
     grid-gap: 15px;
        background-color: #192A56;
        padding: 50px;
        margin-left: 150px;
        padding-top: 10px;
      
    }
    .main{
        background-color: #6A89CC;
    }
    
   body  {
        text-align: center;
        padding: 20px 0;
        font-size: 15px;
    }
    .grid-container > h1 {
        background-color: yellowgreen;
        text-align: center;
        padding: 20px 0;
        font-size: 1.5em;
    }
</style>
<script runat="server">

    protected void pass_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void mailT_TextChanged(object sender, EventArgs e)
    {

    }
</script>
<title>Registration Page</title>
</head>
<body style="width: 874px; height: 714px">
    <form id="form1" runat="server">
        <div class ="grid-container">
<h1 class ="head">
    _____SIGN UP_____<br />
</h1>
    <div class="main"> 
        Name :&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="custName" runat="server" OnTextChanged="TextBox1_TextChanged" style="margin-top: 7px" Width="194px" BorderStyle="Dashed"></asp:TextBox>
        <br />
    <asp:RequiredFieldValidator ID="custNameRequired" runat="server" ErrorMessage="Cannot be Empty" ControlToValidate="custName" Display="None" Font-Bold="True" ForeColor="Maroon"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;<br />
        <br />
        Address:&nbsp; <asp:TextBox ID="addr" runat="server" Width="194px" BorderStyle="Dashed"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="addrRequired" runat="server" ErrorMessage="Cannot be Empty" ControlToValidate="addr" Display="None" Font-Bold="True" ForeColor="Maroon"></asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;
            Code:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="postC" runat="server" Width="194px" BorderStyle="Dashed"></asp:TextBox>
&nbsp;<br />
&nbsp;<asp:RequiredFieldValidator ID="postCRequired" runat="server" ErrorMessage="Cannot be Empty" ControlToValidate="postC" Display="None" Font-Bold="True" ForeColor="Maroon"></asp:RequiredFieldValidator>
           
&nbsp; 
                <br />
                <br />
                Phone:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="phoneNum" runat="server" Width="194px" BorderStyle="Dashed" TextMode="Phone"></asp:TextBox>
&nbsp;<br />
&nbsp;<asp:RequiredFieldValidator ID="phoneNumRequired" runat="server" ErrorMessage="Cannot be Empty" ControlToValidate="phoneNum" Display="None" Font-Bold="True" ForeColor="Maroon"></asp:RequiredFieldValidator>
                <br />
         
                &nbsp;&nbsp;&nbsp;
                &nbsp;<br />
        &nbsp;&nbsp;&nbsp; E-Mail: <asp:TextBox ID="mail" runat="server" Width="194px" BorderStyle="Dashed" TextMode="Email"></asp:TextBox>
&nbsp;<br />
&nbsp;<asp:RequiredFieldValidator ID="mailRequired" runat="server" ErrorMessage="Cannot be Empty" ControlToValidate="mail" Display="None" Font-Bold="True" ForeColor="Maroon"></asp:RequiredFieldValidator>
        <br />
&nbsp;<br />
                Re-Enter: <asp:TextBox ID="mailT" runat="server" Width="194px" OnTextChanged="mailT_TextChanged" BorderStyle="Dashed" TextMode="Email"></asp:TextBox>
                <br />
&nbsp;
                <asp:RequiredFieldValidator ID="mailTRequired" runat="server" ErrorMessage="Cannot be Empty" ControlToValidate="mailT" Display="None" Font-Bold="True" ForeColor="Maroon"></asp:RequiredFieldValidator>
                <br />
&nbsp;<asp:CompareValidator ID="mailTComparison" runat="server" ErrorMessage="Email mismatch" ControlToCompare="mailT" Display="None" ControlToValidate="mail" Font-Bold="True" ForeColor="Maroon"></asp:CompareValidator>
              
               <br />
              
               &nbsp;
                <br />
        Password:<asp:TextBox ID="pass" runat="server" BorderStyle="Dashed" Width="194px" TextMode="Password">Password </asp:TextBox>

                <br />
                <asp:RequiredFieldValidator ID="passRequired" runat="server" ErrorMessage="Cannot be Empty" ControlToValidate="pass" Display="None" Font-Bold="True" ForeColor="Maroon"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button ID="RegisterB" runat="server" OnClick="Button1_Click" style="margin-left: 0px; margin-right: 0px" Text="Register" Width="250px" BorderStyle="Outset" BorderColor="Yellow" Height="35px" />
                <br />
                <br />
                <br />
                
                </div>
                </div>
    </form>
</body>
    </html>