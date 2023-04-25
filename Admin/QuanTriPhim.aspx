<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuanTriPhim.aspx.cs" Inherits="QuanTriPhim" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quản trị phim</title>
     <script language="JavaScript">
         alert("VERRY GOOD!!! BẠN ĐẴ ĐĂNG NHẬP THÀNH CÔNG");
     </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <h1>QUẢN TRỊ CÁC BỘ PHIM</h1>
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
                        <asp:LinkButton ID="lbnTENPHIM" runat="server" Text='<%#Eval("TENPHIM") %>' CommandName="UpdatePhim" OnClientClick="Bạn có muốn Update không" ForeColor="Blue"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>

            <Columns>
                <asp:TemplateColumn>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbnXoa" runat="server" Text="XÓA" CommandName="DeletePhim" OnClientClick="return confirm('Bạn có muốn Xóa phim này không')" ForeColor="red"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>

    </div>
    </form>
</body>
</html>
