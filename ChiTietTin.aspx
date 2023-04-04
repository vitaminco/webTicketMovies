<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChung.master" AutoEventWireup="true" CodeFile="ChiTietTin.aspx.cs" Inherits="ChiTietTin" %>

<%@ Register src="UI/WebUserControlChiTietPhim.ascx" tagname="WebUserControlChiTietPhim" tagprefix="uc1" %>
<%@ Register src="UI/WebUserControlTinTuc.ascx" tagname="WebUserControlTinTuc" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc2:WebUserControlTinTuc ID="WebUserControlTinTuc1" runat="server" />
</asp:Content>

