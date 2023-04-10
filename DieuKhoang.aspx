<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChung.master" AutoEventWireup="true" CodeFile="DieuKhoang.aspx.cs" Inherits="DieuKhoang" %>

<%@ Register src="UI/WebUserControlDieuKhoang.ascx" tagname="WebUserControlDieuKhoang" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:WebUserControlDieuKhoang ID="WebUserControlDieuKhoang1" runat="server" />
</asp:Content>

