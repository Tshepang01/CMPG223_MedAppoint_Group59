<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ambulance.aspx.cs" Inherits="CMPG223_MedAppoint_Group59.Ambulance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Ambulance</title>
  <link rel="stylesheet" href="style.css" />
     <style type="text/css">
         .auto-style1 {
             width: 445px;
         }
     </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="container">
    <div class="ambulance_request-box">
        <h2 class="auto-style1">Request Ambulance Service</h2>
        <br />
    
        Your Current Location:<br />
    <div class="input-box">
        <asp:TextBox ID="txtStreet" runat="server" required=""></asp:TextBox>
        <label>Street</label>
        </div>

        <div class="input-box">
            <asp:TextBox ID="txtTown" runat="server" required=""></asp:TextBox>
            <label>Town</label>
        </div>

       <div class="input-box">
            <asp:TextBox ID="txtCity" runat="server" required=""></asp:TextBox>
           <label>City</label>
        </div>

       <div class="input-box">
            <asp:TextBox ID="txtPostalCode" runat="server" onkeypress="return /[0-9]/i.test(event.key)" minlength="4" maxlength="5" required=""></asp:TextBox>
           <label>Postal Code</label>
       </div>

        <asp:Button ID="btnMakeRequest" runat="server" class="btn" OnClick="btnMakeRequest_Click" Text="Request" />
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
