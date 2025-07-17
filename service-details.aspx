<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="service-details.aspx.vb" Inherits="service_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="assets/css/css/style.css">
    <link rel="stylesheet" href="assets/css/css/responsive.min.css">  
    <style>
        .gallery-item.main-box {
            background: #282726;
            padding: 15px;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="site-main">
        <div class="section">
            <div class="wrapper-inner">
                <div class="widget-gallery-grid">
                    <div class="row">
                        <asp:Repeater ID="RptTable" runat="server">
                            <ItemTemplate>
                                <div class="col-lg-4 isotope-item">
                                    <div class="gallery-item main-box">
                                        <a href="images/productcategory/actual/<%#Eval("ImageName") %>" data-background="images/productcategory/<%# Eval("ImageName")%>" alt="<%#Eval("ProductName") %>" title="<%#Eval("ProductName") %>" loading="lazy"/ class="popup-gallery">
                                        </a>
                                        <h4><%#Eval("ProductName") %></h4>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="text-center mt-4"><button onclick="window.history.back(-1); return false;" class="back-btn text-uppercase"><i class="fa-solid fa-arrow-left"></i> Previous Page</button></div>
                </div>
            </div>
        </div>
    </div>
    <%--<section class="singleblog-section">
        <div class="container-fluid popup-sec-box">            
            <section>
                <asp:Repeater ID="RptTable" runat="server">
                    <ItemTemplate> 
                        <div class="main-box">                                
                            <img src="images/productcategory/actual/<%#Eval("ImageName") %>" alt="<%#Eval("ProductName") %>" title="<%#Eval("ProductName") %>" loading="lazy"/>                             
                            <h4><%#Eval("ProductName") %></h4>
                        </div>
                    </ItemTemplate>
                </asp:Repeater> 
            </section>  
            <div class="lightbox">
                <div class="title"></div>
                <div class="filter"></div>
                <div class="arrowr"></div>
                <div class="arrowl"></div>
                <div class="close"></div>
            </div>
            <div class="text-center mt-4"><button onclick="window.history.back(-1); return false;" class="back-btn text-uppercase"><i class="fa-solid fa-arrow-left"></i> Previous Page</button></div>
        </div>
    </section>--%>
    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script>
        $(window).load(function () {

            $("section img").click(function () {
                $(".lightbox").fadeIn(300);
                $(".lightbox").append("<img src='" + $(this).attr("src") + "' alt='" + $(this).attr("alt") + "' />");
                $(".filter").css("background-image", "url(" + $(this).attr("src") + ")");
                $(".title").append("<h4>" + $(this).attr("alt") + "</h4>");
                $("html").css("overflow", "hidden");
                if ($(this).is(":last-child")) {
                    $(".arrowr").css("display", "none");
                    $(".arrowl").css("display", "block");
                } else if ($(this).is(":first-child")) {
                    $(".arrowr").css("display", "block");
                    $(".arrowl").css("display", "none");
                } else {
                    $(".arrowr").css("display", "block");
                    $(".arrowl").css("display", "block");
                }
            });

            $(".close").click(function () {
                $(".lightbox").fadeOut(300);
                $("h4").remove();
                $(".lightbox img").remove();
                $("html").css("overflow", "auto");
            });

            $(document).keyup(function (e) {
                if (e.keyCode == 27) {
                    $(".lightbox").fadeOut(300);
                    $("h4").remove();
                    $(".lightbox img").remove();
                    $("html").css("overflow", "auto");
                }
            });

            $(".arrowr").click(function () {
                var imgSrc = $(".lightbox img").attr("src");
                var search = $("section").find("img[src$='" + imgSrc + "']");
                var nextImg = search.next();
                $(".lightbox img").attr("src", nextImg.attr("src"));
                $(".filter").css("background-image", "url(" + nextImg.attr("src") + ")");
                $(".lightbox h4").html(nextImg.attr("alt"));

                if (!search.next().is(":last-child")) {
                    $(".arrowl").css("display", "block");
                } else {
                    $(".arrowr").css("display", "none");
                }
            });

            $(".arrowl").click(function () {
                var imgSrc = $(".lightbox img").attr("src");
                var search = $("section").find("img[src$='" + imgSrc + "']");
                var prevImg = search.prev();
                $(".lightbox img").attr("src", prevImg.attr("src"));
                $(".filter").css("background-image", "url(" + prevImg.attr("src") + ")");
                $(".lightbox h4").html(prevImg.attr("alt"));

                if (!search.prev().is(":first-child")) {
                    $(".arrowr").css("display", "block");
                } else {
                    $(".arrowl").css("display", "none");
                }
            });

        });
    </script>--%>
</asp:Content>

