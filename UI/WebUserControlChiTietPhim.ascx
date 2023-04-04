<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlChiTietPhim.ascx.cs" Inherits="UI_WebUserControlChiTietPhim" %>
    <div class="grid">

        <div class="container__SL">
            <div class="trangchu">
                <div class="left">
                    <a href="./Index.html">Trang chủ</a>
                    <i class="fa-sharp fa-solid fa-chevron-right"></i>
                    <span>Phim</span>
                </div>
                <a href="https://www.facebook.com/" class="right">
                    <i class="fa-brands fa-facebook"></i>
                    Share 62k
                </a>
            </div>
        </div>
    
        <div class="name__phim">
            <h1><%=inforPhim.TENPHIM %></h1>
        </div>
     
        <div class="grid__row full__tab_ifo">
            <!-- left -->
            <div class="grid__colum-6">
                <div class="introduct__phim">
                    <ul class="introduct__phim-list">
                        <li class="introduct__phim-item"><%=inforPhim.GIABAN %></li>
                        <li class="introduct__phim-item">Thể loại: Tâm lý,Hồi hộp</li>
                        <li class="introduct__phim-item">Khởi chiếu: <%=inforPhim.NGDAYDANG %></li>
                    </ul>
                    <span class="introduct__phim-contents">
                        <%=inforPhim.NOIDUNGPHIM %>
                    </span>
                    <div class="telecommunication">
                        <a href="https://www.facebook.com/"><img src="./AssetInfor/ImgInforFilm/fb.jpg" alt=""></a>
                        <a href="https://twitter.com/login"><img src="./AssetInfor/ImgInforFilm/twiter.jfif" alt=""></a>
                        <a href="https://mail.google.com/"><img src="./AssetInfor/ImgInforFilm/mail.png" alt=""></a>
                    </div>
                </div>
            </div>
            <!-- right -->
            <div class="grid__colum-4">
                <div class="videos">
                    <video src="./AssetInfor/Videos/Anh _3 Em - Cá nhân - Microsoft​ Edge 2022-11-09 14-10-45.mp4" width="100%" height="300" controls>
                        Your browser does not support the
                        <video>
                            element.>
                        </video>
                </div>
            </div>
        </div>

        <div class="lichchieu">
            <div class="name__phim__lichchieu">
                <h1>LỊCH CHIẾU - MẤT TÍCH - MISSING</h1>
                <hr>
                <p>(Click vào suất chiếu để tiến hành đặt vé)</p>
            </div>
            <div class="ngaychieu">
                <span>NGÀY CHIẾU</span> <br>
                <span>Hôm nay (29-02-2023) :</span> <br>
                <span style="color: red;font-weight: 800;">RẠP ABC</span> <br>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
            </div>
            <div class="ngaychieu">
                <span>NGÀY CHIẾU</span> <br>
                <span>Hôm nay (29-02-2023) :</span> <br>
                <span style="color: red;font-weight: 800;">RẠP ABC</span> <br>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
            </div>
            <div class="ngaychieu">
                <span>NGÀY CHIẾU</span> <br>
                <span>Hôm nay (29-02-2023) :</span> <br>
                <span style="color: red;font-weight: 800;">RẠP ABC</span> <br>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
            </div>
            <div class="ngaychieu">
                <span>NGÀY CHIẾU</span> <br>
                <span>Hôm nay (29-02-2023) :</span> <br>
                <span style="color: red;font-weight: 800;">RẠP ABC</span> <br>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
            </div>
            <div class="ngaychieu">
                <span>NGÀY CHIẾU</span> <br>
                <span>Hôm nay (29-02-2023) :</span> <br>
                <span style="color: red;font-weight: 800;">RẠP ABC</span> <br>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
            </div>
            <div class="ngaychieu">
                <span>NGÀY CHIẾU</span> <br>
                <span>Hôm nay (29-02-2023) :</span> <br>
                <span style="color: red;font-weight: 800;">RẠP ABC</span> <br>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
            </div>
            <div class="ngaychieu">
                <span>NGÀY CHIẾU</span> <br>
                <span>Hôm nay (29-02-2023) :</span> <br>
                <span style="color: red;font-weight: 800;">RẠP ABC</span> <br>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
                <button class="ngaychieu__btn">18:50</button>
            </div>
        </div>
    </div>