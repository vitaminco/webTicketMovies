<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdatePhim.aspx.cs" Inherits="Admin_Phim_UpdatePhim" %>
<<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <a href="../../Bin/FredCK.FCKeditorV2.dll">FredCK.FCKeditorV2.dll</a></div>

        <h1>TRANG CẬP NHẬT PHIM</h1>
        <asp:Label ID="lnbTen" runat="server" Text="Nhập tên"></asp:Label>
        <asp:TextBox ID="txtTENPHIM" runat="server"></asp:TextBox>
        <asp:Label ID="Date" runat="server" Text="Nhập Ngày Đăng"></asp:Label>
        <asp:Calendar ID="Datet" runat="server"></asp:Calendar>
        <asp:Label ID="Label2" runat="server" Text="Chọn Hình Anh"></asp:Label>
        <asp:FileUpload ID="fileHinhAnh" runat="server"></asp:FileUpload>
        
        <asp:Label ID="Label1" runat="server" Text="Nhập Xuất Chiếu"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Nhập Thời Lượng"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </form>
</body>
</html>
