<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="CMPG223_MedAppoint_Group59.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ContactUs</title>
     <link rel="stylesheet" href="StyleSheet1.css" />
</head>
<body>
     <!-- Navigation bar -->
 <nav class="navbar">
     <ul class="nav-list">
         <li><a href="#home">Home</a></li>
         <li><a href="#about">About</a></li>
         <li><a href="LoginPage.aspx">Login</a></li>
         <li><a href="RegistrationPage.aspx">Register</a></li>
     </ul>
 </nav>
    <div class="container">
    <div class="contactUs">
        <h2>Contact Us</h2>
    <form id="form1" runat="server">
        
        <div class="input-box">
        <asp:TextBox ID="txtNames" runat="server" required=""></asp:TextBox>
            <label>Name and Surname</label>
        </div>
        
        <div class="input-box">
                <asp:TextBox ID="txtContactNumber" runat="server" required=""></asp:TextBox>
                 <label>Contact Number</label>
                </div>

                <div class="input-box">
                <asp:TextBox ID="txtEmail" runat="server" onkeypress="return /[0-9]/i.test(event.key)" minlength="10" maxlength="10" required=""></asp:TextBox>
                    <label>Email Address</label>
                </div>

                <div class="input-box2">
                 <textarea id="Message" required=""></textarea>
                    <label for="Message">Your Message</label>
                    </div>

                &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <button id="btnSubmit" type="submit" class="btn">Submit</button>
        <br />
        <br />
        <br />
        
        
                 <footer class="footer">
    <p>&copy; 2024 MedAppoint. All rights reserved.</p>
</footer>
                   
    </form>
    </div>
</div>
</body>
</html>
