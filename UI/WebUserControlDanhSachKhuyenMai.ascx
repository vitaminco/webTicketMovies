<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlDanhSachKhuyenMai.ascx.cs" Inherits="UI_WebUserControlDanhSachKhuyenMai" %>

<div class="grid">
            <!-- PHẦN ĐĂNG NHẬP -->
            <div id="Login__tab" class="loginTab">
                <div class="container__SL">
                    <div class="trangchu">
                        <div class="left">
                            <a href="./Index.html">Trang chủ</a>
                            <i class="fa-sharp fa-solid fa-chevron-right"></i>
                            <span>Khuyến mãi</span>
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
                
                <div class="grid__row">
                    <%for(int i=0; i<listKhuyenMai.Count; i++){ %>
                        <div class="container__evens container__evens-lust">
                            
                            <a href='<%="ChiTietKhuyenMai.aspx?IdNews="+listKhuyenMai[i].IDKHUYENMAI.ToString() %>' class="container__evens-link">
                                <img src='<%="./Asset/images/"+listKhuyenMai[i].HINHANHKHUYENMAI %>' alt="">
                                
                                <div class="content__evens">
                                    <span><%=listKhuyenMai[i].CHUDEKHUYENMAI %></span>
                                </div>
                            </a>
                            <span>
                                <i class="fa-sharp fa-solid fa-play"></i>
                                Thời gian ưu đãi: <%=listKhuyenMai[i].NGAYBANHANH %> - <%=listKhuyenMai[i].NGAYKETTHUC %></span>
                            <span class="container__evens-link-nhan"><%=listKhuyenMai[i].MUCUUDAI %></span>
                        </div>
                    <%} %>
                </div>
            </div>

        </div>