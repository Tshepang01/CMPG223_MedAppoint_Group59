<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminLoginPage.aspx.cs" Inherits="CMPG223_MedAppoint_Group59.adminLoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Admin</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    
            <!-- Navigation bar -->
<nav class="navbar">
    <ul class="nav-list">
        <li><a href="#home">Home</a></li>
        <li><a href="#about">About</a></li>
    </ul>
</nav>
    <div class="container">
    <div class="admin-container">
        <h2>ADMINISTRATOR</h2>
    <form id="form1" runat="server">
        
        <div class="input-box">
            <asp:TextBox ID="txtUsername" runat="server" required=""></asp:TextBox>
            <label>Username</label>
            </div>

            <div class="input-box">
            <asp:TextBox ID="txtPassword" runat="server" title="" type="password" pattern="^\S{8,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Must have at least 8 characters' : ''); if(this.checkValidity()) form.confirm_pswd.pattern = this.value;" required=""></asp:TextBox>
                <label>Password</label>
            </div>

            <div><asp:Button ID="btnLogin" runat="server" class="btn" OnClick="btnLogin_Click" Text="Login"/>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</div>
            
            <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" class="btn" CausesValidation="false" UseSubmitBehavior="false"/>
       
                    
    </form>
    </div>

    <span style="--i:0;"></span>
    <span style="--i:1;"></span>
    <span style="--i:2;"></span>
    <span style="--i:3;"></span>
    <span style="--i:4;"></span>
    <span style="--i:5;"></span>
    <span style="--i:6;"></span>
    <span style="--i:7;"></span>
    <span style="--i:8;"></span>
    <span style="--i:9;"></span>
    <span style="--i:10;"></span>
    <span style="--i:11;"></span>
    <span style="--i:12;"></span>
    <span style="--i:13;"></span>
    <span style="--i:14;"></span>
    <span style="--i:15;"></span>
    <span style="--i:16;"></span>
    <span style="--i:17;"></span>
    <span style="--i:18;"></span>
    <span style="--i:19;"></span>
    <span style="--i:20;"></span>
    <span style="--i:21;"></span>
    <span style="--i:22;"></span>
    <span style="--i:23;"></span>
    <span style="--i:24;"></span>
    <span style="--i:25;"></span>
    <span style="--i:26;"></span>
    <span style="--i:27;"></span>
    <span style="--i:28;"></span>
    <span style="--i:29;"></span>
    <span style="--i:30;"></span>
    <span style="--i:31;"></span>
    <span style="--i:32;"></span>
    <span style="--i:33;"></span>
    <span style="--i:34;"></span>
    <span style="--i:35;"></span>
    <span style="--i:36;"></span>
    <span style="--i:37;"></span>
    <span style="--i:38;"></span>
    <span style="--i:39;"></span>
    <span style="--i:40;"></span>
    <span style="--i:41;"></span>
    <span style="--i:42;"></span>
    <span style="--i:43;"></span>
    <span style="--i:44;"></span>
    <span style="--i:45;"></span>
    <span style="--i:46;"></span>
    <span style="--i:47;"></span>
    <span style="--i:48;"></span>
    <span style="--i:49;"></span>
</div>
    
                 
</body>

</html>
