<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="TinyTotsWebApp.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Little Arif Kindergarten</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        #Homepage {
            background-color: #fff;
            border: 1px solid #ccc;
            margin: 20px auto;
            padding: 20px;
            width: 80%;
            max-width: 600px;
            text-align: center;
            border-radius: 10px;
        }

        .auto-style1 {
            font-size: 24px;
            color: #ffadd8;
        }

        label {
            font-weight: bold;
            display: block;
        }

        input[type="text"] {
            width: 50%;
            padding: 8px;
            margin: 5px 0;
            font-size: 16px;
            border-radius: 5px;
            transition: background-color 0.5s;
        }

        input[type="text"]:hover {
            background-color: #ffadd8;
        }

        select {
            text-align: center;
        }

        .form-group {
            display: flex;
            align-items: center;
            justify-content: flex-start;
            margin: 5px 0;
        }

        .race-dropdown {
            width: 30%;
            padding: 5px;
            font-size: 16px;
            border-radius: 5px;
            transition: background-color 0.3s;
            margin-left: 10px;
        }

        .race-dropdown:hover {
            background-color: #ffadd8;
        }

        .form-group label {
            flex: 1;
            margin-right: 5px;
        }

        select,
        input[type="radio"],
        input[type="checkbox"] {
            margin: 0 auto;
        }

        input[type="radio"],
        input[type="checkbox"] {
            margin-right: 5px;
        }

        .gender-label {
            display: inline-block;
            vertical-align: middle;
            margin-right: 10px;
        }

        .gender-container {
            display: inline-block;
            vertical-align: middle;
            width: auto; 
        }

        .radio-button {
            display: inline-block;
            vertical-align: middle;
            margin-right: 10px;
        }

        #Button1 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #ffadd8;
            color: #fff;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            font-weight: 700;
        }

        #Button1:hover {
            background-color: #ff4fab;
        }

        #SubmitLabel {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="Homepage">
            <asp:Image ID="Image1" runat="server" Height="202px" Width="239px" ImageUrl="~/Resources/Logo_Tadika_Arep.png" />
            <h2 class="auto-style1">Kindergarten Registration Form</h2>
            <asp:Label ID="MyLabel" runat="server">
                Hello friends! The time is now <span id="clockLabel"></span>
            </asp:Label>
            <br />
            <br />
            <br />
            <label for="TextBox1">First Name:</label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <label for="TextBox2">Second Name:</label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <div class="form-group">
                <label for="DropDownList1">Race:
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="race-dropdown">
                        <asp:ListItem>Malay</asp:ListItem>
                        <asp:ListItem>Chinese</asp:ListItem>
                        <asp:ListItem>Indian</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                </label>
            </div>
            <br />
            <label class="gender-label">Gender:</label>
            <div class="gender-container">
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Boy" AutoPostBack="True" OnCheckedChanged="RadioButton_CheckedChanged" GroupName="genderGroup" CssClass="radio-button" />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Girl" AutoPostBack="True" OnCheckedChanged="RadioButton_CheckedChanged" GroupName="genderGroup" CssClass="radio-button" />
            </div>
            <br />
            <br />
            <strong>Date of Birth:
            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFE4E5" BorderColor="#FFADD8" BorderWidth="1px" CellSpacing="8" Font-Names="Arial Narrow" Font-Size="Small" ForeColor="#333333" Height="190px" NextPrevFormat="FullMonth" style="margin-left: 117px" Width="358px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="Black" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="#FFADD8" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="Black" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
            </strong>
            <br />
            <label>Food Allergies:</label><br />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatLayout="Flow" Style="margin-bottom: 0px" Width="601px">
                <asp:ListItem>None</asp:ListItem>
                <asp:ListItem>Dairy Product</asp:ListItem>
                <asp:ListItem>Peanut and Tree Nuts</asp:ListItem>
                <asp:ListItem>Soybean</asp:ListItem>
                <asp:ListItem>Wheat</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Width="115px" />
            <br />
            <br />
            <asp:Label ID="SubmitLabel" runat="server"></asp:Label>
        </div>

        <script type="text/javascript"> 

            function updateClock() {
                var clockLabel = document.getElementById('clockLabel');
                var now = new Date();
                clockLabel.textContent = now.toLocaleTimeString();
            }

            updateClock();

            setInterval(updateClock, 1000);
        </script>
    </form>
</body>
</html>
