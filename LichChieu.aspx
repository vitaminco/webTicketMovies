<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChung.master" AutoEventWireup="true" CodeFile="LichChieu.aspx.cs" Inherits="LichChieu" %>

<%@ Register src="UI/WebUserControlLichChieu.ascx" tagname="WebUserControlLichChieu" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:WebUserControlLichChieu ID="WebUserControlLichChieu1" runat="server" />
</asp:Content>

