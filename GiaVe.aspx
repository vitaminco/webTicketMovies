<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChung.master" AutoEventWireup="true" CodeFile="GiaVe.aspx.cs" Inherits="GiaVe" %>

<%@ Register src="UI/WebUserControlGiaVe.ascx" tagname="WebUserControlGiaVe" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:WebUserControlGiaVe ID="WebUserControlGiaVe1" runat="server" />
</asp:Content>

