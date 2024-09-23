<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="CMPG223_MedAppoint_Group59.Appointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Appointment</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class=" container">
        <div class="appointment-box">
            <h2>+ Book Appointment + </h2>
            <br />
            <div>Appointment Type:
       
            </div>
            <asp:RadioButton ID="rbSurgical" runat="server" Text=" Surgical appointment" />
            <br />
            <asp:RadioButton ID="rbLabMedResults" runat="server" Text=" Laboratory / medical result analysis" />
            <br />
            <asp:RadioButton ID="rbRoutine" runat="server" Text=" Routine Check-up" />
            <br />
            <asp:RadioButton ID="rbUrgentMedCheckup" runat="server" Text="Urgent Medical Check-up" />
            <br />
            <br />

            <div class="">
                Appointment Date:
                <br />
                <asp:Calendar ID="Calendar1" runat="server" ForeColor="White"></asp:Calendar>
                
                </div>
            <br />
           
            <div> <asp:Button ID="btnSubmitAppointment" class="btn" runat="server" Text="Submit" OnClick="btnSubmitAppointment_Click" /> </div>
        </div>
            </div>
                 

    </form>
</body>
</html>
