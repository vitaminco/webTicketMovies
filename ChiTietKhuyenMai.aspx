<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChung.master" AutoEventWireup="true" CodeFile="ChiTietKhuyenMai.aspx.cs" Inherits="KhuyenMai" %>

<%@ Register src="UI/WebUserControlChiTietKhuyenMai.ascx" tagname="WebUserControlChiTietKhuyenMai" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:WebUserControlChiTietKhuyenMai ID="WebUserControlChiTietKhuyenMai1" runat="server" />
</asp:Content>

