<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="CMPG223_MedAppoint_Group59.ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Reset</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <div class="container">
   <div class="reset-box">
    <h2>Password Reset</h2>
    <form id="form1" runat="server">
     

        <div class="input-box">
            <asp:TextBox ID="txtEmail" runat="server" required=""></asp:TextBox>
            <label>Email</label>
        </div>
        <div class="input-box">
            <asp:TextBox ID="txtNewPassword" runat="server" type="password" title="" pattern="^\S{8,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Must have at least 8 characters' : ''); if(this.checkValidity()) form.confirm_pswd.pattern = this.value;" required=""></asp:TextBox>
            <label>New Password</label>
        </div>

        <div class="input-box">
            <asp:TextBox ID="txtConfirmPassword" runat="server" type="password" name="confirm_pswd" title="" pattern="^\S{8,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter the same Password as above' : '');" required=""></asp:TextBox>
            <label>Confirm Password</label>
        </div>

        <div><asp:Button ID="btnReset" runat="server" class="btn" OnClick="btnReset_Click" Text="Reset" />&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp</div>
        
        <asp:Button ID="btnCancel" runat="server" class="btn" OnClick="btnCancel_Click" Text="Cancel" CausesValidation="false" UseSubmitBehavior="false"/>
           
                

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
