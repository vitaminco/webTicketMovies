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
                        <li class="introduct__phim-item"> Gía bán: <%=inforPhim.GIABAN %></li>
                        <li class="introduct__phim-item">Thể loại: <%=inforPhim.IDLOAI %></li>
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
                     <img src='<%="./Asset/images/"+inforPhim.HINHANHPHIM %>' alt="" width="100%" height="600">
                </div>
            </div>
        </div>

        <div class="lichchieu">
                <div class="name__phim__lichchieu">
                    <div class="name__phim__lichchieu-left">
                        <h1>LỊCH CHIẾU - MẤT TÍCH - MISSING</h1>
                        <hr>
                        <p>(Click vào suất chiếu để tiến hành đặt vé)</p>
                    </div>
                    <div class="name__phim__lichchieu-right">
                        <button onclick="mua();"><i class="fa-sharp fa-solid fa-cart-shopping"></i>MUA VÉ</button>
                    </div>
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

 <!-- mua -->
        <div class="buy" id="muave">
            <div class="buy__overlay"></div>
            <div class="buy__body">
                <div class="buy__tickets">
                    <div class="buy__tickets__head">
                        <div class="buy__tickets__header">
                            <div class="name_movie">
                                <h1>BẢY CHÚ LÙN</h1>
                            </div>
                            <div class="close__buy">
                                <span onclick="closebuy();">X</span>
                            </div>
                        </div>
                        <img src="./Asset/images/even2.png" alt="">
                    </div>
                    <hr>
                <div class="grid">
                    <div class="grid__row">
                    <div class="grid__colum-5">
                        <div class="infomations">
                            <div class="infomations__header">
                                <h1>QUI ĐỊNH VỀ MUA VÉ</h1>
                            </div>
                            <div class="infomations__body">
                                <ul>
                                    <li>Đạo diễn: Nick Johnson, Will MerrickDiễn viên: Storm Reid, Nia Long, Joaquim de Almeida, Tim Griffin, Daniel Henney, Amy Landecker</li>
                                    <li>Ngôn ngữ: Phụ đề Tiếng Việt</li>
                                    <li>Những người từng tạo ra SEARCHING đã trở lại với MISSING ! “Missing” bắt đầu khi Grace (Nia Long) cùng bạn trai Kevin Lin (Ken Leung) </li>
                                    <li>đi du lịch Colombia. Sau vài ngày không liên lạc, cô con gái Ali (Storm Reid) bàng hoàng nhận ra mẹ mình đã mất tích một cách bí ẩn. </li>
                                    <li>Hết cách, Ali đành phải cố đăng nhập vào các tài khoản liên lạc hay mạng xã hội của mẹ để tìm manh mối. Cô dần khám phá ra những bí mật</li> 
                                    <li>đen tối mà Grace che giấu suốt bấy lấu. Hàng loạt câu hỏi ập xuống đầu cô gái trẻ.</li>
                                    <li>Những mối quan hệ xã hội của Grace là ai? Thân phận thật sự của Kevin là gì? Liệu gã có phải tội phạm và lên kế hoạch bắt cóc Grace?</li>
                                </ul>
                            </div>
                            <div class="infomations__footer">
                                <h1>MEGA +</h1>
                            </div>
                        </div>
                    </div>

                    <div class="grid__colum-5">
                        <div class="buy__phim">
                            <div class="buy__header">
                                <h1>MUA VÉ</h1>
                            </div>
                            <div class="btn__kind_of_tickets">
                                <ul class="btn__kind_of_tickets-list">
                                    <span>LOẠI VÉ: </span>
                                    <li class="btn__kind_of_tickets-item">THUÒNG</li>
                                    <li class="btn__kind_of_tickets-item">VIP</li>
                                </ul>
                                <ul class="btn__kind_of_tickets-list">
                                    <span>THỜI GIAN: </span>
                                    <li class="btn__kind_of_tickets-item">12:00am</li>
                                    <li class="btn__kind_of_tickets-item">12:00pm</li>
                                </ul>
                                <ul class="btn__kind_of_tickets-list soluong">
                                    <span>SỐ LƯỢNG: </span>
                                    <input type="number" name="soluong">
                                </ul>
                                 <hr>
                                <ul class="btn__kind_of_tickets-list check">
                                    <input type="checkbox"> <span>Tôi đã đọc và chấp nhận</span>
                                </ul>
                                <div class="xacnhan">
                                    <input type="submit" value="XÁC NHẬN">
                                </div>
                            </div>
                        </div>
                    </div>

                    </div>
                </div>    
                </div>
            </div>
        </div>