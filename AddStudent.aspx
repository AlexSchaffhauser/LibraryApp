<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="LibraryApp.AddStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            STUDENT REGISTRY<br />
            <br />
            First Name:<br />
            <asp:TextBox ID="FirstNameBox" runat="server" Width="153px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstNameBox" ErrorMessage="First Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            Last Name:<br />
            <asp:TextBox ID="LastNameBox" runat="server" Width="153px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastNameBox" ErrorMessage="Last Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            Date of Birth (yyyymmdd)<br />
            <asp:TextBox ID="DateBox" runat="server" Width="153px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DateBox" ErrorMessage="Date Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            Gender<br />
            <asp:DropDownList ID="GenderList" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="GenderList" ErrorMessage="Gender Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            Class<br />
            <asp:DropDownList ID="ClassList" runat="server">
                <asp:ListItem>Java</asp:ListItem>
                <asp:ListItem>Database</asp:ListItem>
                <asp:ListItem>Web Design</asp:ListItem>
                <asp:ListItem>PHP Programming</asp:ListItem>
                <asp:ListItem>Mobile Applications</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ClassList" ErrorMessage="Class Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Submit1" runat="server" OnClick="Submit1_Click" Text="Submit" />
            <br />
            <asp:Label ID="lblResultMessage" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
