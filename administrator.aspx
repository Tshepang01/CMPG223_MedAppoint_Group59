<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="administrator.aspx.cs" Inherits="CMPG223_MedAppoint_Group59.administrator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Admininstrator</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        This Page is For Admins ONLY!!!<br /><br />

        <div class="input-box">
            
            <asp:textbox ID="txtName" runat="server" required=""></asp:textbox>
            <label>First Name</label>
            </div>

        <div class="input-box">
                <asp:TextBox ID="txtSurname" runat="server" required=""></asp:TextBox>
            <label>Last Name</label>
           </div> 
        
         <label for="gender" style="font-size: 18px; color: white" ;>Gender:</label> &nbsp
            <asp:DropDownList ID="DropDownListGender" runat="server" AutoPostBack="True">
                <asp:ListItem>SELECT</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
            

        <div class="input-box">
                <asp:TextBox ID="txtContactNum" runat="server" onkeypress="return /[0-9]/i.test(event.key)" minlength="10" maxlength="10" required=""></asp:TextBox>
            <label>Contact Number</label>
            </div>

        <div class="input-box">
                <asp:TextBox ID="txtEmail" runat="server" required=""></asp:TextBox>
            <label>Email</label>
            </div>

        <div class="input-box">
                <asp:TextBox ID="txtStreetAddress" runat="server" required=""></asp:TextBox>
            <label>Street Address</label>
            </div>

        <div class="input-box">
                <asp:TextBox ID="txtCity" runat="server" required=""></asp:TextBox>
            <label>City</label>
         </div>   

        <div class="input-box">
                <asp:TextBox ID="txtPostalCode" runat="server" onkeypress="return /[0-9]/i.test(event.key)" minlength="4" maxlength="5" required=""></asp:TextBox>
            <label>Postal Code</label>
            </div>
            
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" class="btn" />
        
        <div>
                 <footer class="footer">
    <p>&copy; 2024 MedAppoint. All rights reserved.</p>
</footer>
            </div>
    </form>
</body>
</html>
