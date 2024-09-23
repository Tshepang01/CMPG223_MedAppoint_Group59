<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CancelAppointment.aspx.cs" Inherits="CMPG223_MedAppoint_Group59.CancelAppointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cancel Appointment</title>
    <link rel="stylesheet" href="StyleSheet1.css" />
    <style type="text/css">
        .auto-style1 {
            width: 469px;
        }
        .auto-style2 {
            position: relative;
            width: 342px;
            height: 256px;
            display: flex;
            justify-content: center;
            align-items: center;
            left: 0px;
            top: 0px;
            margin-top: 70px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
        <div class="cancel">
    <h2 class="auto-style1">Cancel Appointment</h2>
            <div>
                <br />
            Select an appointment you would like to cancel:<br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>SELECT</asp:ListItem>
                <asp:ListItem>Surgical appointment</asp:ListItem>
                <asp:ListItem>Laboratory / medical results analysis</asp:ListItem>
                <asp:ListItem>Routine Check-up</asp:ListItem>
                <asp:ListItem>Urgent Medical Check-up</asp:ListItem> </asp:DropDownList>
                </div>

            <div class="input-box2">
            <textarea id="TextArea1" required=""></textarea>
            <label for="TextArea1">Reason For Cancellation</label>
                </div>

            <asp:Button ID="btnCancelAppointment" runat="server" OnClick="btnCancelAppointment_Click" class="btn" Text="Cancel Appointment" />
            <br />
            <br />
            <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" CssClass="btn" Text="Back" CausesValidation="false" UseSubmitBehavior="false"/>
        </div>
            </div>
        <br />
        <br />
        <br />
        <br />
<br />
<br />
        <br />
<br />
<br />
        <div>
                 <footer class="footer">
    <p>&copy; 2024 MedAppoint. All rights reserved.</p>
</footer>
            </div>
    </form>
</body>
</html>
