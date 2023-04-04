<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlChiTietKhuyenMai.ascx.cs" Inherits="UI_WebUserControlChiTietKhuyenMai" %>

<div class="grid">
            <div class="container__SL">
                <div class="trangchu">
                    <div class="left">
                        <a href="./Index.html">Trang chủ</a>
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
                <h1><b>KHUYẾN MÃI</b></h1>
            </div>
            
             <h1><%=inforKhuyenMai.CHUDEKHUYENMAI %></h1>
            <div class="contaner__img">
                <img src='<%="./Asset/images/"+inforKhuyenMai.HINHANHKHUYENMAI %>' width="100%" height="400px" alt="">
            </div>
            <div class="contaner__content">
                <p> NGÀY BAN HÀNH: <%=inforKhuyenMai.NGAYBANHANH %></p>
                <p> NGÀY KẾT THÚC: <%=inforKhuyenMai.NGAYKETTHUC %></p>
                <p> MỨC ƯU ĐÃI: <%=inforKhuyenMai.MUCUUDAI %></p>
                <p> NỘI DUNG: <%=inforKhuyenMai.NOIDUNG %></p>
            </div>
        </div>