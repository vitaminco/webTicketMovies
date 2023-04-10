<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChung.master" AutoEventWireup="true" CodeFile="LienHe.aspx.cs" Inherits="LienHe" %>

<%@ Register src="UI/WebUserControlLienHe.ascx" tagname="WebUserControlLienHe" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:WebUserControlLienHe ID="WebUserControlLienHe1" runat="server" />
</asp:Content>

