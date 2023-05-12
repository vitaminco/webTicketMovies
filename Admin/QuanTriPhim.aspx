<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuanTriPhim.aspx.cs" Inherits="QuanTriPhim" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quản trị phim</title>
    <style>
        .khungQTP a{
            color: violet;
            margin:20px;
            font-weight:900;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

    <div>
        <div class="khungQTP">
            <h1>QUẢN TRỊ CÁC BỘ PHIM</h1>
            <br />
            <a href="Phim/AddPhim.aspx">Thêm mới phim</a>
            <a href="../TrangChu.aspx">QUAY VỀ TRANG CHỦ</a> <br /> <br />
        </div>
        <asp:DataGrid ID="gridPhim" border="6" style="text-align:center" runat="server" AllowCustomPaging="true" PageSize ="20" PagerStyle-Mode="NumericPages" AutoGenerateColumns="false" DataKeyField="IDCACBOPHIM" OnItemCommand="gridPhim_ItemCommand" OnPageIndexChanged="gridPhim_PageIndexChanged">

            <Columns>
                <asp:TemplateColumn>
                    <HeaderTemplate>STT</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbnIDCACBOPHIM" runat="server" Text='<%#Eval("IDCACBOPHIM") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>

            <Columns>
                <asp:TemplateColumn>
                    <HeaderTemplate>HÌNH ẢNH PHIM</HeaderTemplate>
                    <ItemTemplate>
                        <img src='<%#"../Asset/images/" + Eval("HINHANHPHIM") %>' width="200" height="300" />
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            
             <Columns>
                <asp:TemplateColumn>
                    <HeaderTemplate>TÊN PHIM</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbnTENPHIM" runat="server" Text='<%#Eval("TENPHIM") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            
             <Columns>
                <asp:TemplateColumn>
                    <HeaderTemplate>NGÀY ĐĂNG PHIM</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbnNGAYDANG" runat="server" Text='<%#Eval("NGDAYDANG") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>

            <Columns>
                <asp:TemplateColumn>
                    <HeaderTemplate>THỂ LOẠI PHIM</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbnXUATCHIEU" runat="server" Text='<%#Eval("XUATCHIEU") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>

            <Columns>
                <asp:TemplateColumn>
                    <HeaderTemplate>THỜI LƯỢNG PHIM</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbnTHOILUONG" runat="server" Text='<%#Eval("THOILUONG") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>

            <Columns>
                <asp:TemplateColumn>
                    <HeaderTemplate>GIÁ VÉ</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbnGIABAN" runat="server" Text='<%#Eval("GIABAN") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>

            <Columns>
                <asp:TemplateColumn>
                    <HeaderTemplate>GIÁ GIẢM</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbnGIAGIAM" runat="server" Text='<%#Eval("GIAGIAM") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>

            <Columns>
                <asp:TemplateColumn>
                    <HeaderTemplate>MÃ PHÒNG</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbnMAPHONG" runat="server" Text='<%#Eval("MAPHONG") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>

            <Columns>
                <asp:TemplateColumn>
                    <HeaderTemplate>NỘI DUNG PHIM</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbnNOIDUNGPHIM" runat="server" Text='<%#Eval("NOIDUNGPHIM") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>


            <Columns>
                <asp:TemplateColumn>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbnCapNhat" runat="server" Text="CẬP NHẬT" CommandName="UpdatePhim" OnClientClick="Bạn có muốn Update không" ForeColor="Blue"></asp:LinkButton> <br /> <br />
                        <asp:LinkButton ID="lbnXoa" runat="server" Text="XÓA" CommandName="DeletePhim" OnClientClick="return confirm('Bạn có muốn Xóa phim này không')" ForeColor="red"></asp:LinkButton>
                        
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>

    </div>
    </form>
</body>
</html>
