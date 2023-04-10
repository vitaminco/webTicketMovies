<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlDieuKhoang.ascx.cs" Inherits="UI_WebUserControlDieuKhoang" %>

 <div class="grid">
            <div class="container__SL">
                <div class="trangchu">
                    <div class="left">
                        <a href="TrangChu.aspx">Trang chủ</a>
                        <i class="fa-sharp fa-solid fa-chevron-right"></i>
                        <span>Điều Khoảng</span>
                    </div>
                    <a href="https://www.facebook.com/" class="right">
                        <i class="fa-brands fa-facebook"></i>
                        Share 62k
                    </a>
                </div>
            </div>

            <div class="Login">
                <h1><b>ĐIỀU KHOẢNG</b></h1>
            </div>

            <div class="contaner__content">
                <div class="ten">
                    <span>ĐIỀU KHOẢNG CHUNG</span>
                </div>
                <div class="list__dieukhoang">
                    <%for(int i=0; i<listDieuKhoang.Count; i++){ %>
                    <span><i class="fa-solid fa-caret-right"></i> <%=listDieuKhoang[i].TENDIEUKHOANG %></span>
                    <p><%=listDieuKhoang[i].NOIDUNGDIEUKHOANG %>
                    </p>
                    <%} %>
                </div>
            </div>
        </div>