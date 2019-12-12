<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BorrowBook.aspx.cs" Inherits="LibraryApp.BorrowBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            BORROW A BOOK<br />
            <br />
            Student<br />
            <asp:DropDownList ID="ddlStudent1" runat="server" DataSourceID="dsStudentFullName" DataTextField="StudentName" DataValueField="Id" Height="64px" Width="272px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsStudentFullName" runat="server" ConnectionString="Data Source=.;Initial Catalog=LibraryDB;Integrated Security=True;Pooling=False" ProviderName="System.Data.SqlClient" SelectCommand="SELECT Id, ISNULL(firstName, '') + ' ' + ISNULL(lastName, '') AS StudentName FROM Student"></asp:SqlDataSource>
            <br />
            Book<br />
            <asp:DropDownList ID="ddlBook1" runat="server" DataSourceID="dsBook" DataTextField="BookInfo" DataValueField="BookInfo" Height="64px" Width="272px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsBook" runat="server" ConnectionString="Data Source=.;Initial Catalog=LibraryDB;Integrated Security=True;Pooling=False" ProviderName="System.Data.SqlClient" SelectCommand="SELECT b.Id, ISNULL(b.title,'') + ' ' + ISNULL(t.name, '') + ' ' + ISNULL(a.firstName, '') + ' ' + ISNULL(a.lastname, '') AS BookInfo FROM Type t JOIN Book b ON t.Id = b.typeId JOIN author a ON b.authorId = a.Id"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Submit3" runat="server" OnClick="Submit3_Click" Text="Submit" />
        </div>
    </form>
</body>
</html>
