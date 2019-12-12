<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="LibraryApp.AddBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            BOOK REGISTRY<br />
            <br />
            Title<br />
            <asp:TextBox ID="TitleBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TitleBox" ErrorMessage="TitleRequired" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            Page Count<br />
            <asp:TextBox ID="PageCountBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PageCountBox" ErrorMessage="Page Count Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            Price<br />
            <asp:TextBox ID="PriceBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PriceBox" ErrorMessage="Price Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            Author Name<br />
            First:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="AuFirstNameBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="AuFirstNameBox" ErrorMessage="First Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Last:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="AuLastNameBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="AuLastNameBox" ErrorMessage="Last Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            Type Name<br />
            <asp:TextBox ID="TypeBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TypeBox" ErrorMessage="Type Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Submit2" runat="server" OnClick="Submit2_Click" Text="Submit" />
        </div>
    </form>
</body>
</html>
