<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuanTriPhim.aspx.cs" Inherits="QuanTriPhim" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quản trị phim</title>
     
</head>
<body>
    <form id="form1" runat="server">

    <div>
       <h1>QUẢN TRỊ CÁC BỘ PHIM</h1>
        <br />
        <a href="Phim/AddPhim.aspx">Thêm mới phim</a>
        <a href="../TrangChu.aspx">QUAY VỀ TRANG CHỦ</a>
        <asp:DataGrid ID="gridPhim" runat="server" AllowCustomPaging="true" PageSize ="2" PagerStyle-Mode="NumericPages" AutoGenerateColumns="false" DataKeyField="IDCACBOPHIM" OnItemCommand="gridPhim_ItemCommand" OnPageIndexChanged="gridPhim_PageIndexChanged">

            <Columns>
                <asp:TemplateColumn>
                    <ItemTemplate>
                        <img src='<%#"../Asset/images/" + Eval("HINHANHPHIM") %>' width="200" height="300" />
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            
             <Columns>
                <asp:TemplateColumn>
                    <ItemTemplate>
                        <asp:Label ID="lbnTENPHIM" runat="server" Text='<%#Eval("TENPHIM") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            
             <Columns>
                <asp:TemplateColumn>
                    <ItemTemplate>
                        <asp:Label ID="lbnNGAYDANG" runat="server" Text='<%#Eval("NGDAYDANG") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>

            <Columns>
                <asp:TemplateColumn>
                    <ItemTemplate>
                        <asp:Label ID="lbnXUATCHIEU" runat="server" Text='<%#Eval("XUATCHIEU") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>

            <Columns>
                <asp:TemplateColumn>
                    <ItemTemplate>
                        <asp:Label ID="lbnTHOILUONG" runat="server" Text='<%#Eval("THOILUONG") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>

            <Columns>
                <asp:TemplateColumn>
                    <ItemTemplate>
                        <asp:Label ID="lbnGIABAN" runat="server" Text='<%#Eval("GIABAN") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>

            <Columns>
                <asp:TemplateColumn>
                    <ItemTemplate>
                        <asp:Label ID="lbnGIAGIAM" runat="server" Text='<%#Eval("GIAGIAM") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>

            <Columns>
                <asp:TemplateColumn>
                    <ItemTemplate>
                        <asp:Label ID="lbnMAPHONG" runat="server" Text='<%#Eval("MAPHONG") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>

            <Columns>
                <asp:TemplateColumn>
                    <ItemTemplate>
                        <asp:Label ID="lbnNOIDUNGPHIM" runat="server" Text='<%#Eval("NOIDUNGPHIM") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>


            <Columns>
                <asp:TemplateColumn>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbnCapNhat" runat="server" Text="CẬP NHẬT" CommandName="UpdatePhim" OnClientClick="Bạn có muốn Update không" ForeColor="Blue"></asp:LinkButton> <br />
                        <asp:LinkButton ID="lbnXoa" runat="server" Text="XÓA" CommandName="DeletePhim" OnClientClick="return confirm('Bạn có muốn Xóa phim này không')" ForeColor="red"></asp:LinkButton>
                        
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>

    </div>
    </form>
</body>
</html>
