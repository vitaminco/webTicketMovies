<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlLichChieu.ascx.cs" Inherits="UI_WebUserControlLichChieu" %>

   <div class="grid">

        <div class="container__SL">
            <div class="trangchu">
                <div class="left">
                    <a href="TrangChu.aspx">Trang chủ</a>
                    <i class="fa-sharp fa-solid fa-chevron-right"></i>
                    <span>Lịch Chiếu</span>
                </div>
                <a href="https://www.facebook.com/" class="right">
                    <i class="fa-brands fa-facebook"></i>
                    Share 62k
                </a>
            </div>
        </div>

        <div class="Login">
            <h1><b>LỊCH CHIẾU</b></h1>
        </div>
        <br>
       <%for(int i=0; i<listLichChieu.Count; i++){ %>
        <a href='<%="ChiTietPhim.aspx?IdNews="+listLichChieu[i].IDCACBOPHIM.ToString() %>' class="lichchieu">
            <div class="name__phim">
                <h1><%=listLichChieu[i].TENPHIM %></h1>
            </div>

            <div class="grid__row full__tab_ifo">
                <!-- left -->
                <div class="grid__colum-6">
                    <div class="introduct__phim">
                        <ul class="introduct__phim-list">
                            <li class="introduct__phim-item">Thời lượng: <%=listLichChieu[i].THOILUONG %></li>
                            <li class="introduct__phim-item">Thể loại: <%=listLichChieu[i].IDLOAI %></li>
                            <li class="introduct__phim-item">Khởi chiếu:  <%=listLichChieu[i].NGDAYDANG %></li>
                        </ul>
                        <span class="introduct__phim-contents">
                            <%=listLichChieu[i].NOIDUNGPHIM %>
                        </span>
                    </div>
                </div>
                <!-- right -->
                <div class="grid__colum-4">
                    <div class="buy__img">
                       <img src='<%="./Asset/images/"+listLichChieu[i].HINHANHPHIM %>' alt="">
                    </div>
                </div>
            </div>
        </a>
        <%} %>
        
    </div>