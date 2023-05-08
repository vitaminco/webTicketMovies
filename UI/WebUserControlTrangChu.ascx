<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlTrangChu.ascx.cs" Inherits="UI_WebUserControlTrangChu" %>


<script lang="javascript">
    //chuyển động ngang
    var hinh = [
             <%for (int i = 0; i < listHinh.Count; i++ ){%>
             "<%="./Asset/images/"+listHinh[i].HINHANHBANNER%>",
             
             <%}%>
         ];
         var num = 0;

         function next() {
             var slider = document.getElementById("slider");
             num++;
             if (num >= hinh.length) {
                 num = 0;
             }
             slider.src = hinh[num];

             slider.setAttribute("style", "transition: all cubic-bezier(1,-0.31, 0.25, 1) 10s;")
         }
         setInterval("next()", 10000);

         function prev() {
             var slider = document.getElementById("slider");
             num--;
             if (num < 0) {
                 num = hinh.length - 1;
             }
             slider.src = hinh[num];
         }
    </script>

        <!-- /*banner*/ -->

            <!--the slideshow--> <!--cần phải thêm hình vào từng div thì mới chạy thành 1 chuỗi( cố định div đầu tiên bằng cách thêm active)-->
    <div class="container">
                  
            <img src='<%="./Asset/images/" + listHinh[0].HINHANHBANNER%>' alt="los Angeles" width="1200" height="500" id="slider">
                    
        <div class="navigation">
            <div class="prev nav-btn" onclick="prev()"><</div>
            <div class="next nav-btn" onclick="next()">></div>
        </div>
    </div>

            


        <div class="grid">
            <!-- /*mua vé online*/ -->
            <div class="container__body">
                <div class="container__body-header">
                    <h1>MUA VÉ ONLINE</h1>
                    <h3>(*) Chọn vào suất chiếu để dặt vé trực tuyến</h3>
                </div>

                <div class="container__body-body">
                    <ul class="container__body-body--list">
                        <li class="container__body-body--item">
                            MEGA GS CAO THẮNG
                            <i class="fa-sharp fa-solid fa-angle-down"></i>
                            <!-- /*CON*/ -->
                            <div class="container__body-body-function">
                                <ul class="container__body-body-function--list">
                                    <li class="container__body-body-function--item">MEGA CAO THẮNG</li>
                                    <li class="container__body-body-function--item">MAGA GS LÝ CHÍNH THẮNG</li>
                                </ul>
                            </div>
                        </li>
                        <li class="container__body-body--item">
                            Chọn phim
                            <i class="fa-sharp fa-solid fa-angle-down"></i>
                            <!-- con -->
                           
                            <div class="container__body-body-function">
                                <ul class="container__body-body-function--list">
                                     <%for(int i=0; i<listPhim.Count; i++){ %>
                                    <li class="container__body-body-function--item">
                                        <a href='<%="ChiTietPhim.aspx?IdNews="+listPhim[i].IDCACBOPHIM.ToString() %>'>
                                            <%=listPhim[i].TENPHIM %>
                                        </a>
                                    </li>  
                                    <%} %>
                                </ul>
                            </div>
                            
                        </li>
                        <li class="container__body-body--item">
                            Chọn ngày
                            <i class="fa-sharp fa-solid fa-angle-down"></i>
                        </li>
                    </ul>
                </div>
            </div>

            <!-- phim đang chiếu or phim sắp chiếu -->
            <div class="container__body-second">
               <!-- <button class="container__body-second--button-one">PHIM ĐANG CHIẾU</button>-->
                <button onclick="mua();" class="container__body-second--button-two">MUA PHIM NGAY</button>
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

        </div>
        <!-- product -->
        <div class="grid">
            <div class="home-product">
                <div class="grid__row-oo grid__row-boder">
                    <!-- item -->
                    <%for (int i = 0; i < listPhim.Count; i++)
                      { %>
                    <a href='<%="ChiTietPhim.aspx?IdNews="+listPhim[i].IDCACBOPHIM.ToString() %>'>
                        <div class="grid__row-item">
                            <div class="home-product-item">
                                
                                <div class="home-product-item__img">
                                    <img class="imgmain" src='<%="./Asset/images/"+listPhim[i].HINHANHPHIM %>' alt="" width="100%" height="300px">
                                </div>
                                
                                <div class="home-product-item__infomation">
                                    <h4 class="home-product-item__name"><%=listPhim[i].TENPHIM %></h4>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        THỜI LƯỢNG: 
                                        <%=listPhim[i].THOILUONG %>
                                    </p>
                                     <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                         THỂ LOẠI: 
                                        <%=listPhim[i].THELOAIPHIM %>
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                         GIÁ BÁN: 
                                        <%=listPhim[i].GIABAN %>
                                    </p>
                                     <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                         NỘI DUNG: 
                                            <%=HttpUtility.HtmlDecode(listPhim[i].NOIDUNGPHIM) %>
                                        
                                    </p>
                                </div>
                            </div>
                        </div>
                    </a>
                    <%} %>
                </div>
            </div>
        </div>
        <div>
            <a class="seemore" href="DanhSachPhim.aspx">XEM TẤT CẢ</a>
        </div>
        <!-- cắt -->
        <div class="uu-dai">
            <div class="grid">
                <img class="uu-dai--img" src="./Asset/images/uudai.png" alt="">
            </div>
        </div>


        <div class="app__container">
            <!-- chia ra 2 bên phần thân -->
            <div class="grid">
                <!-- row là dòng, colum la cột -->
                <div class="grid__row app__content">
                    <div class="grid__colum-6">
                        <div class="grid__colum-6--uudai">
                            <span class="grid__colum-6--item-one">ƯU ĐÃI</span>
                            <a href="./indexGT.html" class="grid__colum-6--item">Xem tất cả</a>
                        </div>
                        <div class="grid__colum-6--poster">
                            <img src="./Asset/images/mgs-lixi.jpg" alt="">
                        </div>
                        <!-- uu dai posster -->
                        
                        <div class="ss">
                            <div class="grid__row" style=" margin-right: 5px;">
                           
                           <%for(int i=0; i<listKhuyenMai.Count; i++){ %>
                            
                            <div class="container__evens">
                                <a href='<%="ChiTietKhuyenMai.aspx?IdNews="+listKhuyenMai[i].IDKHUYENMAI.ToString() %>' class="container__evens-link">
                                    
                                    <img src='<%="./Asset/images/"+listKhuyenMai[i].HINHANHKHUYENMAI %>' alt="">
                                   
                                    <div class="content__evens">
                                        <span><%=listKhuyenMai[i].CHUDEKHUYENMAI %></span>
                                    </div>
                                </a>
                                <span class="hhh">Thời gian ưu đãi: <%=listKhuyenMai[i].NGAYBANHANH %> - <%=listKhuyenMai[i].NGAYKETTHUC %></span>
                                <span class="container__evens-link-nhan suanhan"><%=listKhuyenMai[i].MUCUUDAI %></span>
                            </div>
                             <%} %>
                           
                           </div>
                        </div>
                            <div>
                                <a class="seemore" href="DanhSachPhim.aspx">XEM TẤT CẢ</a>
                            </div>
                    </div>

                    <!-- cột ngang -->
                    <div class="grid__colum-4">
                        <div class="colum-4--header">
                            <div class="conten--4--header">
                                <div class="colum-4--header-logo">
                                    <a href="TrangChu.aspx"><img src="./Asset/images/logo.png" alt=""></a>
                                </div>
                                <div class="colum-4--header-banner">
                                    <div class="colum-4--header-banner__heading">
                                        <a href="./Index.html">MEGA GS Cinama</a>
                                        <i class="fa-sharp fa-solid fa-circle-check"></i>
                                    </div>
                                    <span>170,000 likes</span>
                                </div>
                            </div>

                            <div class="like__shop">
                                <div class="likepage">
                                    <a href="https://www.facebook.com/" class="likepage-link">
                                        <i class="fa-brands fa-facebook"></i>
                                        Like Page
                                    </a>
                                </div>
                                <div class="shop">
                                    <a href="#" class="shop-link">
                                        <i class="fa-sharp fa-solid fa-bag-shopping"></i>
                                        Shop on Website
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- evens -->
                        <div class="evens">
                            <div class="evens__heading">
                                <h1>SỰ KIỆN</h1>
                                <a href="./indexGT.html">Xem tất cả</a>
                            </div>

                            <div class="evens__list">
                                <!-- list even item -->
                                <%for(int i=0; i<listTin.Count; i++){ %>
                                <a href='<%="ChiTietTin.aspx?IDTINTUC="+listTin[i].IDTIN.ToString() %>' class="evens__list-item">
                                        <div class="evens__list-item__img">
                                            <img src='<%="./Asset/images/"+listTin[i].HINHANH %>' alt="">
                                        </div>
                                        <div class="evens__list-item-link">
                                            <span><%=listTin[i].TENTIN %></span>
                                            <p>Địa điểm: <%=listTin[i].DIADIEM %></p>
                                            <p>Ngày: <%=listTin[i].THOIGIAN %></p>
                                        </div>
                                    </a>
                               
                                <%} %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

