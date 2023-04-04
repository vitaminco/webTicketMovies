<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChung.master" AutoEventWireup="true" CodeFile="DanhSachPhim.aspx.cs" Inherits="DanhSachPhim" %>

<%@ Register src="UI/WebUserControlDanhSachPhim.ascx" tagname="WebUserControlDanhSachPhim" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:WebUserControlDanhSachPhim ID="WebUserControlDanhSachPhim1" runat="server" />
</asp:Content>

