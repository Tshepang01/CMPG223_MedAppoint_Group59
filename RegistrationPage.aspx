<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="CMPG223_MedAppoint_Group59.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RegisterUser</title>
    <link rel="stylesheet" href="style.css" />
    
</head>
<body>
    <div class="navbar">
    <ul class="nav-list">
        <li><a href="#home">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="LoginPage.aspx">Login</a></li>
        <li><a href="ContactUs.aspx">Contact</a></li>
    </ul>
</div>

<div class="container">
    <div class="register-box">
    <h2>Registration</h2>
    <form id="form1" runat="server">
            <div class ="input-box">
                        <asp:TextBox ID="txtFirstName" runat="server"  CssClass="input" required=""></asp:TextBox>
                <label>First Name</label>
                
               </div>     
         <div class ="input-box">
                        <asp:TextBox ID="txtLastName" runat="server"  CssClass="input" required=""></asp:TextBox>
                        <label>Last Name</label>
                  </div>   
                     <div class ="input-box">
                        <asp:TextBox ID="txtContactNumber" runat="server" CssClass="input" onkeypress="return /[0-9]/i.test(event.key)" minlength="10" maxlength="10" required=""></asp:TextBox>
                         <label>Contact Number</label>
                  </div> 
            
                     <div class ="input-box">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="input" required="" ></asp:TextBox>
                         <label>Email</label>
                   </div> 
                     <div class ="input-box">
                        <asp:TextBox ID="txtPassword" type="password" runat="server" CssClass="input" pattern="^\S{8,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Must have at least 8 characters' : ''); if(this.checkValidity()) form.confirm_pswd.pattern = this.value;" required=""></asp:TextBox>
                         <label>Password</label>
                   </div> 
                     <div class ="input-box">
                        <asp:TextBox ID="txtConfirmPassword" type="password" runat="server" CssClass="input" name="confirm_pswd" pattern="^\S{8,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter the same Password as above' : '');" required=""></asp:TextBox>
                         <label>Confirm Password</label>
                  </div> 

        <asp:Button ID="btnRegister" runat="server" CssClass="btn" OnClick="btnRegister_Click" Text="Register" />
        
            
        
   
    </form>
        </div>
    </div>
     
</body>
</html>
