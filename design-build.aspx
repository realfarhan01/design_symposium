<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="design-build.aspx.vb" Inherits="design_build" %> <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="assets/css/css/style.css">
    <link rel="stylesheet" href="assets/css/css/responsive.min.css"> 
    <style>
        .popup-sec-box .title {
            display:;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <%--<section class="singleblog-section">
        <div class="container-fluid popup-sec-box">            
            <section>
                <asp:Repeater ID="2" runat="server">
                    <ItemTemplate> 
                        <ul class="hover-text">
                            <div class="main-box gallery-item">                                
                                <img src="images/gallary/<%# Eval("ImageName")%>" loading="lazy" />
                            </div>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater> 
            </section> 
            <section>
                <img src="assets/images/banner-backgroundimage.jpg" title="1" alt="1" loading="lazy" />
                <img src="assets/images/blog-image3.jpg" title="2" alt="2" loading="lazy" />
                <img src="assets/images/aboutpage-image1.jpg" title="3" alt="3" loading="lazy" />
                <img src="assets/images/Architecture-img-01.jpg" title="4" alt="4" loading="lazy" />
                <img src="assets/images/team-Paridhi-Jain-img.png" title="5" alt="5" loading="lazy" />
                <img src="assets/images/banner-img-06.png" title="6" alt="6" loading="lazy" />
                <img src="assets/images/blog-image6.png" title="7" alt="7" loading="lazy" />
            </section>
            <div class="lightbox">
                <div class="title"></div>
                <div class="filter"></div>
                <div class="arrowr"></div>
                <div class="arrowl"></div>
                <div class="close"></div>
            </div>            
        </div>
    </section>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
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
    <div class="site-main">
        <div class="section">
            <div class="wrapper-inner">
                <%--<div class="widget-filter-top">
                    <div class="d-flex justify-content-center">
                        <ul>
                            <li class="active">
                                <a href="#" data-filter="*">ALL</a>
                            </li>
                            <li>
                                <a href="#" data-filter=".cat1">Architectural Design</a>
                            </li>
                            <li>
                                <a href="#" data-filter=".cat2">Interior Design</a>
                            </li>
                            <li>
                                <a href="#" data-filter=".cat3">Urban / Town Planning</a>
                            </li>
                            <li>
                                <a href="#" data-filter=".cat4">Furniture Design & Art Installation</a>
                            </li>
                        </ul>
                    </div>
                    <div class="d-flex justify-content-center">
                        <ul>
                            <li>
                                <a href="#" data-filter=".cat5">Landscape Design</a>
                            </li>
                            <li>
                                <a href="#" data-filter=".cat6">Turnkey /Construction / Vaastu</a>
                            </li>
                            <li>
                                <a href="#" data-filter=".cat7">Project Management</a>
                            </li>
                        </ul>
                    </div>
                </div>--%>
                <div class="widget-gallery-grid">
                    <div class="row">
                        <asp:Repeater ID="rptBindGallery" runat="server">
                            <ItemTemplate>
                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 isotope-item <%# Eval("ClassName")%>">
                                    <div class="gallery-item">
                                        <a href="images/gallary/<%# Eval("ImageName")%>" loading="lazy" data-background="images/gallarythumbnail/<%# Eval("ImageName")%>" class="popup-gallery">
                                        </a>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>