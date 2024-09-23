<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update_Details.aspx.cs" Inherits="CMPG223_MedAppoint_Group59.Update_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Details</title>
     <link rel="stylesheet" href="style.css" />
    <style type="text/css">
        .auto-style1 {
            width: 400px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
    <div class="register-box">
    <h2>Update Details</h2>
       <div class="input-box">
        <asp:TextBox ID="txtName" runat="server" required=""></asp:TextBox>
           <label>Name</label>
        </div>

        <div class="input-box">
        <asp:TextBox ID="txtLastName" runat="server" required=""></asp:TextBox>
            <label>Last Name</label>
        </div>

        <div class="input-box">
        <asp:TextBox ID="txtContactNum" runat="server" onkeypress="return /[0-9]/i.test(event.key)" minlength="10" maxlength="10" required=""></asp:TextBox>
        <label>Contact Number</label>
        </div>

        <div class="input-box">
        <asp:TextBox ID="txtAllergies" runat="server" required=""></asp:TextBox>
            <label>Allegies</label>
        </div>

        <h2 class="auto-style1">Emergency Contact</h2>
        <div class="input-box">
        <asp:TextBox ID="txtE_Name" runat="server" required=""></asp:TextBox>
            <label>Emergency Contact Name</label>
        </div>

        <div class="input-box">
        <asp:TextBox ID="txtE_Contact" runat="server" onkeypress="return /[0-9]/i.test(event.key)" minlength="10" maxlength="10" required=""></asp:TextBox>
            <label>Emergency Contact Phone Number</label>
        </div>

        <br />
        <div><asp:Button ID="btnUpdate_Details" runat="server" class="btn" Text="Update Details" OnClick="btnUpdate_Details_Click" /> </div>
        <br />
        <asp:Button ID="btnBack" runat="server" class="btn" Text="Back" OnClick="btnBack_Click" CausesValidation="false" UseSubmitBehavior="false" />
        <br />
        <br />
        <div>
                                 <footer class="footer">
    <p>&copy; 2024 MedAppoint. All rights reserved.</p>
</footer>
        </div>
               </div>
            </div>
           
    </form>
</body>
</html>
