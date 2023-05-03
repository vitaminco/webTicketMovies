<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddPhim.aspx.cs" Inherits="Admin_Phim_AddPhim" %>
<<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TRAN UPDATE PHIM</title>
</head>
<body>
    <a href="../QuanTriPhim.aspx">QUAY VỀ TRANG QUẢN TRỊ</a>
    <form id="form1" runat="server">
        <h1>THÊM PHIM</h1>
        <asp:Label ID="lnbTen" runat="server" Text="Nhập tên"></asp:Label>
        <asp:TextBox ID="txtTENPHIM" runat="server"></asp:TextBox> <br />

        <asp:Label ID="lnbNgay" runat="server" Text="Nhập Ngày Đăng"></asp:Label>
        <asp:Calendar ID="txtNGAYDANG" runat="server"></asp:Calendar> <br />

        <asp:Label ID="lnbHinhAnh" runat="server" Text="Chọn Hình Ảnh"></asp:Label>
        <asp:FileUpload ID="fileHINHANHPHIM" runat="server"></asp:FileUpload> <br />
        
        <asp:Label ID="lnbXuatChieu" runat="server" Text="Nhập Xuất Chiếu"></asp:Label>
        <asp:TextBox ID="txtXUATCHIEU" runat="server"></asp:TextBox> <br />

        <asp:Label ID="LNBThoiLuong" runat="server" Text="Nhập Thời Lượng"></asp:Label>
        <asp:TextBox ID="txtTHOILUONG" runat="server"></asp:TextBox> <br />

        <asp:Label ID="lnbGiaBan" runat="server" Text="Nhập giá bán"></asp:Label>
        <asp:TextBox ID="txtGIABAN" runat="server"></asp:TextBox> <br />

        <asp:Label ID="lnbGiaGiam" runat="server" Text="Nhập giá giảm"></asp:Label>
        <asp:TextBox ID="txtGIAGIAM" runat="server"></asp:TextBox> <br />

        <asp:Label ID="lnbMaPhong" runat="server" Text="Nhập mã phòng"></asp:Label>
        <asp:TextBox ID="txtMAPHONG" runat="server"></asp:TextBox> <br />

        <asp:Label ID="lnbBoiDung" runat="server" Text="Nhập nội dung"></asp:Label>
        <FCKeditorV2:FCKeditor ID="FCKNOIDUNGPHIM" runat="server" BasePath="~/fckeditor/" Height="400" Width="800"></FCKeditorV2:FCKeditor> <br />

        <asp:Button ID="btnCapNhat" runat="server" OnClientClick="return confirm('Bạn có muốn thêmm phim này không')" Text="THÊM" OnClick="btnCapNhat_Click1" />
    </form>
</body>
</html>
