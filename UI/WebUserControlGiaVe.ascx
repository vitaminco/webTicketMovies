<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlGiaVe.ascx.cs" Inherits="UI_WebUserControlGiaVe" %>

<div class="grid">
        <div class="container__SL">
            <div class="trangchu">
                <div class="left">
                    <a href="TrangChu.aspx">Trang chủ</a>
                    <i class="fa-sharp fa-solid fa-chevron-right"></i>
                    <span>Gía vé</span>
                </div>
                <a href="https://www.facebook.com/" class="right">
                    <i class="fa-brands fa-facebook"></i>
                    Share 62k
                </a>
            </div>
        </div>

        <div class="Login">
            <h1><b>GIÁ VÉ</b></h1>
        </div>
        <br>
     <%for(int i=0; i<listGiaVe.Count; i++){ %>
        <span class="loaiphim"><%=listGiaVe[i].TENNBANGVE %></span>
       
        <div class="contaner__img">
            <img src='<%="./Asset/images/"+listGiaVe[i].HINHGIAVE %>' width="100%" height="500" alt="">
        </div>
     <%} %>
        
        <div class="contaner__content rap">
            <p>Mega GS Cinemas</p>
        </div>
    </div>