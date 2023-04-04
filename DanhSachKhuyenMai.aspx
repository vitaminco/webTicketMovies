<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChung.master" AutoEventWireup="true" CodeFile="DanhSachKhuyenMai.aspx.cs" Inherits="DanhSachKhuyenMai" %>

<%@ Register src="UI/WebUserControlDanhSachKhuyenMai.ascx" tagname="WebUserControlDanhSachKhuyenMai" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:WebUserControlDanhSachKhuyenMai ID="WebUserControlDanhSachKhuyenMai1" runat="server" />
</asp:Content>

