<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlTinTuc.ascx.cs" Inherits="UI_WebUserControlTinTuc" %>
<div class="grid">
            <div class="container__SL">
                <div class="trangchu">
                    <div class="left">
                        <a href="./TrangChu.aspx">Trang chủ</a>
                        <i class="fa-sharp fa-solid fa-chevron-right"></i>
                        <span>Thông Tin</span>
                    </div>
                    <a href="https://www.facebook.com/" class="right">
                        <i class="fa-brands fa-facebook"></i>
                        Share 62k
                    </a>
                </div>
            </div>

            <div class="Login">
                <h1><b>TIN TỨC</b></h1>
            </div>

            <div class="contaner__img">
                <img src='<%=inforTin.HINHANH %>' alt="">
            </div>
            <div class="contaner__content">
                <p><%=inforTin.NOIDUNG %></p>
            </div>
        </div>