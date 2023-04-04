<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChung.master" AutoEventWireup="true" CodeFile="ChiTietPhim.aspx.cs" Inherits="ChiTietPhim" %>

<%@ Register src="UI/WebUserControlChiTietPhim.ascx" tagname="WebUserControlChiTietPhim" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:WebUserControlChiTietPhim ID="WebUserControlChiTietPhim1" runat="server" />
</asp:Content>

