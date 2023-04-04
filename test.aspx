<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>King movie &#8211; Vui giải trí</title>
    <link rel="icon" href="./Asset/images/logo.png" type="images/x-icon"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" /> <!--làm mất magine cho về =0-->
    <link rel="stylesheet" href="./Asset/CSS/Main.css"/>
    <link rel="stylesheet" href="./Asset/CSS/Base.css"/>
    <link rel="stylesheet" href="./AssetBuy/cssBuy/cssBuyFilms.css"/>
    <link rel="stylesheet" href="./AssetGT/CssGT/MainGT.css"/>
    <link rel="stylesheet" href="./AssetInfor/CssInforFiml/MainInforFilm.css"/>
    <link rel="stylesheet" href="./AssetListfilms/CssListFimls/MainFilms.css"/>
    <link rel="stylesheet" href="./AssetSL/CSSSL/MainSL.css"/>

    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https: //fonts.googleapis.com/css2? family = Roboto: wght @ 300; 400; 500; 700 & display = swap " rel=" stylesheet "/>
    <link rel="stylesheet" href="./Asset/Fonts/fontawesome-free-6.2.1-web/css/all.min.css"/><!--icon-->

    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="./Asset/bootstrap-4.6.2-dist/css/bootstrap.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <script language="JavaScript" src="./Javascript/mainAll.js"></script>
    <style>
        /* Make the image fully responsive */
        .carousel-inner img {
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <!-- đăng nhập và đăng kí -->
    <div class="grid">
        <div id="lopphu__dkdn" class="lopphu" onclick="phu();">
            <div id="DN__DK" class="DK__DN">
                <div class="grid">
                    <div class="close__tab" onclick="close__dk_dn();">
                        <i class="fa-solid fa-xmark"></i>
                    </div>
                    <!-- PHẦN ĐĂNG NHẬP -->
                    <div id="Login__tab" class="loginTab">
                        <div class="container__SL">
                            <div class="trangchu">
                                <div class="left">
                                    <span>ĐĂNG NHẬP</span>
                                    <i class="fa-sharp fa-solid fa-chevron-right"></i>
                                    <span style="cursor: pointer;" onclick="hienthiDK();">ĐĂNG KÍ</span>
                                </div>
                                <a href="https://www.facebook.com/" class="right">
                                    <i class="fa-brands fa-facebook"></i>
                                    Share 62k
                                </a>
                            </div>
                        </div>

                        <div class="Login">
                            <h1><b>ĐĂNG NHẬP</b></h1>
                        </div>
                        <div class="grid__row">
                            <div class="grid__colum-5">
                                <div class="card">
                                    <img src="./AssetSL/IMGSL/card.png" alt="Danh thiép">
                                </div>
                            </div>

                            <div class="grid__colum-5">
                                <div class="login__right">
                                    <h1>BẠN ĐÃ LÀ THÀNH VIÊN ?</h1>
                                    <span>Vui lòng nhập email và mật khẩu của bạn để đăng nhập.</span>
                                    <form class="form__login" action="" method="post">
                                        <label for="Email">Nhập email</label>
                                        <input type="text" id="your__email" name="your__email"> <br>
                                        <label for="password">Nhập mật khẩu</label>
                                        <input type="password" id="your__password" name="your__password">

                                        <div class="btn__password">
                                            <div class="btn__login">
                                                <button>ĐĂNG NHẬP</button>
                                            </div>
                                            <div class="forgot__password">
                                                <a href="">Quên mật khẩu</a>
                                            </div>
                                        </div>
                                        <span>Bạn chưa là thành viên? <a class="Link__sigin" href="">Đăng kí thành viên</a></span>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- PHẦN ĐĂNG KÍ -->
                    <div id="Sigin__tab" class="siginTab">
                        <div class="container__SL">
                            <div class="trangchu">
                                <div class="left">
                                    <span>ĐĂNG KÍ</span>
                                    <i class="fa-sharp fa-solid fa-chevron-right"></i>
                                    <span style="cursor: pointer;" onclick="hienthiDN();">ĐĂNG NHẬP</span>
                                </div>
                                <a href="https://www.facebook.com/" class="right">
                                    <i class="fa-brands fa-facebook"></i>
                                    Share 62k
                                </a>
                            </div>
                        </div>

                        <div class="Login">
                            <h1><b>ĐĂNG KÍ</b></h1>
                        </div>

                        <div class="grid__row">
                            <div class="grid__colum-5">
                                <div class="card">
                                    <img src="./AssetSL/IMGSL/card.png" alt="Danh thiép">
                                </div>
                                <div class="name__card">
                                    <span>MEGA +</span>
                                </div>

                                <div class="dieukhoang">
                                    <h1>ĐIỀU KIỆN ÁP DỤNG</h1>
                                    <ul class="list__dieukhoang">
                                        <li class="list__dieukhoang-item"> Xuất trình thẻ trước khi mua vé tại các quầy của Mega GS Cinemas.</li>
                                        <li class="list__dieukhoang-item"> Thẻ thành viên Mega+ là tài sản của Mega GS Cinemas và không được chuyển nhượng.</li>
                                        <li class="list__dieukhoang-item"> Mega GS Cinemas có quyền thay đổi các chương trình điểm thưởng mà không thông báo trước.</li>
                                        <li class="list__dieukhoang-item"> Đăng ký làm thành viên tại website www.</li>Megagscinemas.</li>vn hoặc tại hệ thống cụm Rạp Mega GS.</li>
                                        <li class="list__dieukhoang-item"> Nhận thẻ thành viên tại hệ thống Rạp Mega GS để có thể tích lũy/ đổi điểm khi giao dịch tại hệ thống Rạp Mega GS.</li>
                                        <li class="list__dieukhoang-item"> Điểm tích lũy không có giá trị quy đổi thành tiền mặt.</li>
                                        <li class="list__dieukhoang-item"> Các quyền lợi chỉ áp dụng cho chủ thẻ, Mega GS có thể yêu cầu thành viên xuất trình CMND/Thẻ căn cước hoặc các giấy tờ cần thiết để chứng minh chủ thẻ khi áp dụng các chính sách ưu đãi.</li>
                                        <li class="list__dieukhoang-item"> Không áp dụng đổi điểm vào các ngày các ngày Lễ Tết.</li>
                                    </ul>
                                </div>
                            </div>

                            <div class="grid__colum-5">
                                <div class="info__lognin">
                                    <h1>THÔNG TIN ĐĂNG NHẬP</h1>
                                    <div class="email__login">
                                        <form class="input__login" action="#" method="post">

                                            <label style="display: block" for="email">Nhập Email</label>
                                            <input type="email" id="email" name="email" />
                                        </form>
                                        <form class="input__login" action="#" method="post">

                                            <label style="display: block" for="pw">Nhập password</label> <br>
                                            <input type="password" id="pw" name="pw" />
                                        </form>
                                        <form class="input__login" action="#" method="post">

                                            <label style="display: block" for="pw">Nhập lại password</label> <br>
                                            <input type="password" id="pw" name="pw" />
                                        </form>
                                    </div>
                                </div>

                                <div class="person__info">
                                    <h1>THÔNG TIN CÁ NHÂN</h1>
                                    <div class="person__write">
                                        <form action="" method="post">

                                            <label style="display: block" for="your__name">Nhập Tên</label>
                                            <input type="text" id="your__name" name="your__name" /> <br>

                                            <label style="display: block;" for="last__name">Nhập họ</label>
                                            <input type="tel" id="last__name" name="last__name" />
                                        </form>
                                        <form action="" method="post">

                                            <label style="display: block" for="your__borndate">Nhập năm sinh</label>
                                            <input type="date" id="your__borndate" name="your__borndate" />
                                        </form>
                                        <form action="" method="post">

                                            <label style="display: block" for="sex">Giới tính</label>
                                            <input type="checkbox" id="sex" name="sex" />
                                            <span class="item__personal">Nam</span> <br>
                                            <input type="checkbox" id="sex" name="sex" />
                                            <span class="item__personal">Nữ</span> <br>
                                            <input type="checkbox" id="sex" name="sex" />
                                            <span class="item__personal">Không xác định</span>
                                        </form>
                                        <form action="" method="post">

                                            <label style="display: block" for="your__phone">Nhập số điện thoại</label>
                                            <input type="text" value="+84" id="your__phone" name="your__phone" />
                                        </form>
                                        <form action="" method="post">

                                            <label style="display: block" for="your__addrest">Nhập địa chỉ</label>
                                            <input type="text" id="your__addrest" name="your__addrest" />
                                        </form>
                                        <form action="" method="post">

                                            <input type="checkbox" id="agree" name="agree" />
                                            <span class="item__personal">Chấp nhận</span>
                                        </form>
                                        <form action="" method="post">

                                            <button class="btn__signin">ĐĂNG KÝ</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- HEADER -->
    <header class="header">
        <div class="grid">
            <nav class="header__navbar">
                <ul class="header__navbar--lish">
                    <li><a href="./Index.html"><img class="img--logo" src="./Asset/images/logo.png" alt=""></a></li>
                    <li class="header__navbar--item trangchu"><a href="./Index.html">RẠP CHIẾU PHIM MEGA</a></li>
                </ul>

                <ul class="header__navbar--lish">
                    <li class="header__navbar--item notifi">
                        <i class="fa-solid fa-bell"></i>
                        THÔNG BÁO

                        <div class="notifi__contain">
                            <header class="notifi__header">
                                <h3>DANH SÁCH THÔNG BÁO MỚI</h3>
                            </header>

                            <a href="#" class="notifi__body">
                                <img src="./Asset/images/vongnhi.jpg" alt="">
                                <span>CÔ DÂU 8 TUỔI</span>
                            </a>

                        </div>


                    </li>
                    <li class="header__navbar--item notifi">
                        <i class="fa-sharp fa-solid fa-cart-shopping"></i>
                        GIỎ HÀNG
                        <div class="notifi__contain">
                            <header class="notifi__header">
                                <h3>GIỎ CÁC BỘ PHIM ĐƯỢC MUA</h3>
                            </header>

                            <a href="#" class="notifi__body">
                                <img src="./Asset/images/vongnhi.jpg" alt="">
                                <span>CÔ DÂU 8 TUỔI</span>
                            </a>

                        </div>
                    </li>
                    <li class="header__navbar--item"><button class="header__navbar--item--link header__navbar--item--link-signin" onclick="hienthiDK();">ĐĂNG KÍ</button></li>
                    <li class="header__navbar--item"><button class="header__navbar--item--link header__navbar--item--link-login" onclick="hienthiDN();">ĐĂNG NHẬP</button></li>
                </ul>
            </nav>

            <!-- tien ich -->
            <nav class="tienich">
                <div class="tienich__blog">
                    <ul class="tienich__blog-list">
                        <li><a href="./indexFilms.html" class="tienich__blog-item">LỊCH CHIẾU</a></li>
                        <li><a href="./indexFilms.html" class="tienich__blog-item">PHIM</a></li>
                        <li><a href="./indexGT.html" class="tienich__blog-item">RẠP & GIÁ VÉ</a></li>
                        <li><a href="./IndexSL.html" class="tienich__blog-item">ƯU ĐÃI</a></li>
                    </ul>

                    <ul class="tienich__blog-list">
                        <li class="tienich__blog-item">
                            <a href="https://www.facebook.com/"><i class="icon__navbar fa-brands fa-facebook"></i></a>
                        </li>
                        <li class="tienich__blog-item">
                            <a href="https://www.instagram.com/?hl=en"><i class="icon__navbar fa-brands fa-square-instagram"></i></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>

    </header>

    <div class="contaner">
        <!-- /*banner*/ -->
        <div id="poster" class="carousel slide" data-ride="carousel">

            <!--the slideshow--> <!--cần phải thêm hình vào từng div thì mới chạy thành 1 chuỗi( cố định div đầu tiên bằng cách thêm active)-->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <a href="./InForFilms.html"><img src="./Asset/images/chính-thức-kc.jpg" alt="los Angeles" width="1100" height="500"></a>
                </div>
                <div class="carousel-item">
                    <a href="./InForFilms.html"><img src="./Asset/images//banner-3-web.png" alt="Chicago" width="1100" height="500"></a>
                </div>
                <div class="carousel-item">
                    <a href="./InForFilms.html"><img src="./Asset/images/banner-1-web.png" alt="Chicago" width="1100" height="500"></a>
                </div>
            </div>

            <!--left and right controls-->
            <a class="carousel-control-prev" href="#poster" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#poster" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>

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
                                    <li class="container__body-body-function--item">VONG NHI</li>
                                    <li class="container__body-body-function--item">NHÀ BÀ NỮ</li>
                                    <li class="container__body-body-function--item">TIẾNG GÕ Ở CĂN NHÀ MỚI</li>
                                    <li class="container__body-body-function--item">MÈO BẾP SIÊU ĐẲNG</li>
                                    <li class="container__body-body-function--item">BẬC THẦY KIẾM ĐẠO</li>
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
                <button class="container__body-second--button-one">PHIM ĐANG CHIẾU</button>
                <button class="container__body-second--button-two">PHIM SẮP CHIẾU</button>
            </div>
        </div>
        <!-- product -->
        <div class="grid">
            <div class="home-product">
                <div class="grid__row-oo grid__row-boder">
                    <!-- item -->
                    <a href="./InForFilms.html" class="item">
                        <div class="grid__row-item">
                            <div class="home-product-item">
                                <div class="home-product-item__img">
                                    <img class="imgmain" src="./Asset/images/quatama.jpg" alt="" width="100%" height="300px">
                                </div>
                                <div class="home-product-item__infomation">
                                    <h4 class="home-product-item__name">VONG NHI</h4>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="./InForFilms.html" class="item">
                        <div class="grid__row-item">
                            <div class="home-product-item">
                                <div class="home-product-item__img">
                                    <img class="imgmain" src="./Asset/images/quatama.jpg" alt="" width="100%" height="300px">
                                </div>
                                <div class="home-product-item__infomation">
                                    <h4 class="home-product-item__name">VONG NHI</h4>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="./InForFilms.html" class="item">
                        <div class="grid__row-item">
                            <div class="home-product-item">
                                <div class="home-product-item__img">
                                    <img class="imgmain" src="./Asset/images/quatama.jpg" alt="" width="100%" height="300px">
                                </div>
                                <div class="home-product-item__infomation">
                                    <h4 class="home-product-item__name">VONG NHI</h4>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="./InForFilms.html" class="item">
                        <div class="grid__row-item">
                            <div class="home-product-item">
                                <div class="home-product-item__img">
                                    <img class="imgmain" src="./Asset/images/quatama.jpg" alt="" width="100%" height="300px">
                                </div>
                                <div class="home-product-item__infomation">
                                    <h4 class="home-product-item__name">VONG NHI</h4>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="./InForFilms.html" class="item">
                        <div class="grid__row-item">
                            <div class="home-product-item">
                                <div class="home-product-item__img">
                                    <img class="imgmain" src="./Asset/images/quatama.jpg" alt="" width="100%" height="300px">
                                </div>
                                <div class="home-product-item__infomation">
                                    <h4 class="home-product-item__name">VONG NHI</h4>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="./InForFilms.html" class="item">
                        <div class="grid__row-item">
                            <div class="home-product-item">
                                <div class="home-product-item__img">
                                    <img class="imgmain" src="./Asset/images/quatama.jpg" alt="" width="100%" height="300px">
                                </div>
                                <div class="home-product-item__infomation">
                                    <h4 class="home-product-item__name">VONG NHI</h4>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="./InForFilms.html" class="item">
                        <div class="grid__row-item">
                            <div class="home-product-item">
                                <div class="home-product-item__img">
                                    <img class="imgmain" src="./Asset/images/quatama.jpg" alt="" width="100%" height="300px">
                                </div>
                                <div class="home-product-item__infomation">
                                    <h4 class="home-product-item__name">VONG NHI</h4>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="./InForFilms.html" class="item">
                        <div class="grid__row-item">
                            <div class="home-product-item">
                                <div class="home-product-item__img">
                                    <img class="imgmain" src="./Asset/images/quatama.jpg" alt="" width="100%" height="300px">
                                </div>
                                <div class="home-product-item__infomation">
                                    <h4 class="home-product-item__name">VONG NHI</h4>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="./InForFilms.html" class="item">
                        <div class="grid__row-item">
                            <div class="home-product-item">
                                <div class="home-product-item__img">
                                    <img class="imgmain" src="./Asset/images/quatama.jpg" alt="" width="100%" height="300px">
                                </div>
                                <div class="home-product-item__infomation">
                                    <h4 class="home-product-item__name">VONG NHI</h4>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="./InForFilms.html" class="item">
                        <div class="grid__row-item">
                            <div class="home-product-item">
                                <div class="home-product-item__img">
                                    <img class="imgmain" src="./Asset/images/quatama.jpg" alt="" width="100%" height="300px">
                                </div>
                                <div class="home-product-item__infomation">
                                    <h4 class="home-product-item__name">VONG NHI</h4>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="./InForFilms.html" class="item">
                        <div class="grid__row-item">
                            <div class="home-product-item">
                                <div class="home-product-item__img">
                                    <img class="imgmain" src="./Asset/images/quatama.jpg" alt="" width="100%" height="300px">
                                </div>
                                <div class="home-product-item__infomation">
                                    <h4 class="home-product-item__name">VONG NHI</h4>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="./InForFilms.html" class="item">
                        <div class="grid__row-item">
                            <div class="home-product-item">
                                <div class="home-product-item__img">
                                    <img class="imgmain" src="./Asset/images/quatama.jpg" alt="" width="100%" height="300px">
                                </div>
                                <div class="home-product-item__infomation">
                                    <h4 class="home-product-item__name">VONG NHI</h4>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="./InForFilms.html" class="item">
                        <div class="grid__row-item">
                            <div class="home-product-item">
                                <div class="home-product-item__img">
                                    <img class="imgmain" src="./Asset/images/quatama.jpg" alt="" width="100%" height="300px">
                                </div>
                                <div class="home-product-item__infomation">
                                    <h4 class="home-product-item__name">VONG NHI</h4>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="./InForFilms.html" class="item">
                        <div class="grid__row-item">
                            <div class="home-product-item">
                                <div class="home-product-item__img">
                                    <img class="imgmain" src="./Asset/images/quatama.jpg" alt="" width="100%" height="300px">
                                </div>
                                <div class="home-product-item__infomation">
                                    <h4 class="home-product-item__name">VONG NHI</h4>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="./InForFilms.html" class="item">
                        <div class="grid__row-item">
                            <div class="home-product-item">
                                <div class="home-product-item__img">
                                    <img class="imgmain" src="./Asset/images/quatama.jpg" alt="" width="100%" height="300px">
                                </div>
                                <div class="home-product-item__infomation">
                                    <h4 class="home-product-item__name">VONG NHI</h4>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                    <p class="infor">
                                        <i class="fa-sharp fa-solid fa-play"></i>
                                        Thể loại phim kinh dị
                                    </p>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div>
            <a class="seemore" href="./indexFilms.html">XEM TẤT CẢ</a>
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
                            <div class="container__evens">
                                <a href="./indexGT.html" class="container__evens-link">
                                    <img src="./Asset/images/even2.png" alt="">

                                    <div class="content__evens">
                                        <span>LÌ XÌ TẾT - GIẢM 30%</span>
                                    </div>
                                </a>
                                <span>Thời gian ưu đãi: 20/02/2023 - 20/3/2023</span>
                                <span class="container__evens-link-nhan">HẾT HẠN</span>
                            </div>
                            <div class="container__evens">
                                <a href="./indexGT.html" class="container__evens-link">
                                    <img src="./Asset/images/even2.png" alt="">

                                    <div class="content__evens">
                                        <span>LÌ XÌ TẾT - GIẢM 30%</span>
                                    </div>
                                </a>
                                <span>Thời gian ưu đãi: 20/02/2023 - 20/3/2023</span>
                                <span class="container__evens-link-nhan">HẾT HẠN</span>
                            </div>
                        </div>

                    </div>

                    <!-- cột ngang -->
                    <div class="grid__colum-4">
                        <div class="colum-4--header">
                            <div class="conten--4--header">
                                <div class="colum-4--header-logo">
                                    <a href="./Index.html"><img src="./Asset/images/logo.png" alt=""></a>
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
                                <div class="evens__list-item">
                                    <div class="evens__list-item__img">
                                        <a href="./indexGT.html"><img src="./Asset/images/46.jpg" alt=""></a>
                                    </div>
                                    <div class="evens__list-item-link">
                                        <a href="./indexGT.html">SỰ KIỆN RA MẮT PHIM "CUỘC GỌI ĐỊNH MỆNH" TẠI MEGA GS</a>
                                        <p>Địa điểm: Rạp MEGA GS Cinama</p>
                                        <p>Ngày: 25/02/2023</p>
                                    </div>
                                </div>
                                <div class="evens__list-item">
                                    <div class="evens__list-item__img">
                                        <a href="./indexGT.html"><img src="./Asset/images/46.jpg" alt=""></a>
                                    </div>
                                    <div class="evens__list-item-link">
                                        <a href="./indexGT.html">SỰ KIỆN RA MẮT PHIM "CUỘC GỌI ĐỊNH MỆNH" TẠI MEGA GS</a>
                                        <p>Địa điểm: Rạp MEGA GS Cinama</p>
                                        <p>Ngày: 25/02/2023</p>
                                    </div>
                                </div>
                                <div class="evens__list-item">
                                    <div class="evens__list-item__img">
                                        <a href="./indexGT.html"><img src="./Asset/images/46.jpg" alt=""></a>
                                    </div>
                                    <div class="evens__list-item-link">
                                        <a href="./indexGT.html">SỰ KIỆN RA MẮT PHIM "CUỘC GỌI ĐỊNH MỆNH" TẠI MEGA GS</a>
                                        <p>Địa điểm: Rạp MEGA GS Cinama</p>
                                        <p>Ngày: 25/02/2023</p>
                                    </div>
                                </div>
                                <div class="evens__list-item">
                                    <div class="evens__list-item__img">
                                        <a href="./indexGT.html"><img src="./Asset/images/46.jpg" alt=""></a>
                                    </div>
                                    <div class="evens__list-item-link">
                                        <a href="./indexGT.html">SỰ KIỆN RA MẮT PHIM "CUỘC GỌI ĐỊNH MỆNH" TẠI MEGA GS</a>
                                        <p>Địa điểm: Rạp MEGA GS Cinama</p>
                                        <p>Ngày: 25/02/2023</p>
                                    </div>
                                </div>
                                <div class="evens__list-item">
                                    <div class="evens__list-item__img">
                                        <a href="./indexGT.html"><img src="./Asset/images/46.jpg" alt=""></a>
                                    </div>
                                    <div class="evens__list-item-link">
                                        <a href="./indexGT.html">SỰ KIỆN RA MẮT PHIM "CUỘC GỌI ĐỊNH MỆNH" TẠI MEGA GS</a>
                                        <p>Địa điểm: Rạp MEGA GS Cinama</p>
                                        <p>Ngày: 25/02/2023</p>
                                    </div>
                                </div>
                                <div class="evens__list-item">
                                    <div class="evens__list-item__img">
                                        <a href="./indexGT.html"><img src="./Asset/images/46.jpg" alt=""></a>
                                    </div>
                                    <div class="evens__list-item-link">
                                        <a href="./indexGT.html">SỰ KIỆN RA MẮT PHIM "CUỘC GỌI ĐỊNH MỆNH" TẠI MEGA GS</a>
                                        <p>Địa điểm: Rạp MEGA GS Cinama</p>
                                        <p>Ngày: 25/02/2023</p>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

</div>
        <div class="footer">
            <div class="grid">
                <div class="grid__row">
                    <div class="grid__colum-6">
                        <div class="footer__left">
                            <ul class="footer__left-list">
                                <li class="footer__left-item"><a href="./indexFilms.html">LỊCH CHIẾU</a></li>
                                <li class="footer__left-item"><a href="./indexFilms.html">PHIM</a></li>
                                <li class="footer__left-item"><a href="./indexGT.html">RẠP & GIÁ VÉ</a></li>
                                <li class="footer__left-item"><a href="./IndexSL.html">ƯU ĐÃI</a></li>
                            </ul>
                            <ul class="footer__left-list">
                                <li class="footer__left-item"><a href="./indexGT.html">GIỚI THIỆU</a></li>
                                <li class="footer__left-item"><a href="./IndexSL.html">SỰ KIỆN</a></li>
                                <li class="footer__left-item"><a href="./IndexSL.html">DỊCH VỤ</a></li>
                                <li class="footer__left-item"><a href="./indexGT.html">ĐIỀU KHOẢNG CHUNG</a></li>
                                <li class="footer__left-item"><a href="./indexGT.html">LIÊN HỆ</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="grid__colum-4">
                        <div class="footer__right">
                            <div class="hotline">
                                <div class="hotline-list">
                                    <span>RẠP PHIM</span>
                                    <span>000000000</span>
                                </div>
                                <div class="hotline-img">
                                    <img src="./Asset/images/footer-phone.png" alt="">
                                </div>
                            </div>

                            <div class="footer__img">
                                <img src="./Asset/images/footer-star.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="footer__bottom">
                <div class="grid">
                    <p class="footer__text">No Coppyright 2023 - Bản quyền thuộc vể Công ty ABC</p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
