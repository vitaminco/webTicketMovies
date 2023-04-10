<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlGioiThieu.ascx.cs" Inherits="UI_WebUserControlGioiThieu" %>

 <div class="grid">
            <div class="container__SL">
                <div class="trangchu">
                    <div class="left">
                        <a href="TrangChu.aspx">Trang chủ</a>
                        <i class="fa-sharp fa-solid fa-chevron-right"></i>
                        <span>Giới thiệu</span>
                    </div>
                    <a href="https://www.facebook.com/" class="right">
                        <i class="fa-brands fa-facebook"></i>
                        Share 62k
                    </a>
                </div>
            </div>

            <div class="Login">
                <h1><b>GIỚI THIỆU</b></h1>
            </div>

            <div class="contaner__img">
                <img src='<%="./Asset/images/"+listGioiThieu[0].HINHANHGIOITHIEU %>' width="100%" height="800" alt="">
            </div>
            <div class="contaner__content">
                <%for(int i=0; i<listGioiThieu.Count; i++){ %>
                <p><%=listGioiThieu[i].NOIDUNGGIOITHIEU %></p>
                <%} %>
            </div>
        </div>