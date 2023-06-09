﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlDanhSachPhim.ascx.cs" Inherits="UI_WebUserControlDanhSachPhim" %>
 <div class="grid">
            <div class="container__SL">
                <div class="trangchu">
                    <div class="left">
                        <a href="TrangChu.aspx">Trang chủ</a>
                        <i class="fa-sharp fa-solid fa-chevron-right"></i>
                        <span>Phim</span>
                    </div>
                    <a href="https://www.facebook.com/" class="right">
                        <i class="fa-brands fa-facebook"></i>
                        Share 62k
                    </a>
                </div>
            </div>

            <div class="grid__row">
                
                 <%for(int i=0; i<listPhim.Count; i++){ %>
                    <div class="container__movies">
                         
                      
                    <a href='<%="ChiTietPhim.aspx?IdNews="+listPhim[i].IDCACBOPHIM.ToString() %>'>
                        <div class="grid__row-item">
                            <div class="home-product-item">
                               
                                <div class="home-product-item__img">
                                    <img class="imgmain" src='<%="./Asset/images/"+listPhim[i].HINHANHPHIM %>' alt="" width="100%" height="300">
                                </div>
                               
                               
                            </div>
                        </div>
                    </a>
                 
                        <div class="container__movies-content">
                            <a href="" ><%=listPhim[i].TENPHIM %></a>
                            <ul class="container__movies-list">
                                <li class="container__movies-content__list-item">Thời lượng: 11 phút</li>
                                <li class="container__movies-content__list-item">Thể loại: <%=listPhim[i].XUATCHIEU %></li>
                                <li class="container__movies-content__list-item">Khởi chiếu: <%=listPhim[i].NGDAYDANG %></li>
                                <li class="container__movies-content__list-item container__movies-content__list-item-content">Nội dung: <%=HttpUtility.HtmlDecode(listPhim[i].NOIDUNGPHIM) %></li>
                            
                            </ul>
                            
                            <div class="twobutton">
                            <div class="container__movies-like">
                                <a href="#">
                                    <i class="fa-sharp fa-solid fa-cart-shopping"></i>
                                    Mua vé
                                </a>
                            </div>
                            <div class="container__movies-like container__movies-love">
                                <a href="#">
                                    <i class="fa-sharp fa-solid fa-heart"></i>
                                    Lovely 0
                                </a>
                            </div>
                            </div>
                        </div>
                        
                    </div>
              
               
                <%} %>
            </div>
</div>