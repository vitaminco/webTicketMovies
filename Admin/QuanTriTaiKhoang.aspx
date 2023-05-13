<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuanTriTaiKhoang.aspx.cs" Inherits="Admin_Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
             <a href="../TrangChu.aspx">QUAY VỀ TRANG CHỦ</a> <br /> <br />
             <a href="QuanTriPhim.aspx">QUAY VỀ TRANG QUẢN TRỊ PHIM</a> <br /> <br />
        </div>
         <asp:DataGrid ID="gridTaiKhoang" border="6" style="text-align:center" runat="server" AllowCustomPaging="true" PageSize ="20" PagerStyle-Mode="NumericPages" AutoGenerateColumns="false" DataKeyField="ID" OnItemCommand="gridTaiKhoang_ItemCommand" OnPageIndexChanged="gridTaiKhoang_PageIndexChanged">
             
             <Columns>
                <asp:TemplateColumn>
                    <HeaderTemplate>STT</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbnID" runat="server" Text='<%#Eval("ID") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>

            <Columns>
                <asp:TemplateColumn>
                    <HeaderTemplate>USERNAES</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbnUSERNAMES" runat="server" Text='<%#Eval("USERNAMES") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            
             <Columns>
                <asp:TemplateColumn>
                    <HeaderTemplate>PASSWORD</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbnPASSWORDS" runat="server" Text='<%#Eval("PASSWORDS") %>' ForeColor="Black"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>

              <Columns>
                <asp:TemplateColumn>
                    <ItemTemplate>
                        <!--<asp:LinkButton ID="lbnCapNhat" runat="server" Text="CẬP NHẬT" CommandName="UpdateTaiKhoang" OnClientClick="Bạn có muốn Update không" ForeColor="Blue"></asp:LinkButton> <br /> <br />-->
                        <asp:LinkButton ID="lbnXoa" runat="server" Text="XÓA" CommandName="DeleteTaiKhoang" OnClientClick="return confirm('Bạn có muốn Xóa tài khoản này không')" ForeColor="red"></asp:LinkButton>
                        
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
         </asp:DataGrid>
    </div>
    </form>
</body>
</html>
