<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChung.master" AutoEventWireup="true" CodeFile="GioiThieu.aspx.cs" Inherits="GioiThieu" %>

<%@ Register src="UI/WebUserControlGioiThieu.ascx" tagname="WebUserControlGioiThieu" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:WebUserControlGioiThieu ID="WebUserControlGioiThieu1" runat="server" />
</asp:Content>

