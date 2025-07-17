<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="service.aspx.vb" Inherits="works" %> <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="assets/css/css/style.css">
    <link rel="stylesheet" href="assets/css/css/responsive.min.css">
    <style>
        img {
            max-width: 100%;
            height: auto;
            vertical-align: middle;
            display: inline-block;
        }

        /* Main CSS */
        .grid-wrapper>div {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .grid-wrapper>div>img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 5px;
        }

        .grid-wrapper {
            display: grid;
            grid-gap: 10px;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            grid-auto-rows: 300px;
            grid-auto-flow: dense;
        }

        .grid-wrapper .wide {
            grid-column: span 2;
        }

        .grid-wrapper .tall {
            grid-row: span 2;
        }

        .grid-wrapper .big {
            grid-column: span 2;
            grid-row: span 2;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="sub-banner">
        <section class="banner-section">
            <div class="container-fluid pb-5">
                <div class="row">
                    <div class="col-lg-5 col-md-12 col-sm-12 col-12 order-lg-1 order-2 banner-column">
                        <div class="banner_content" data-aos="fade-left">
                            <div class="content">
                                <h1>Our Services</h1>
                                <p>"Elevate Designs: Transforming spaces with innovative architecture and delivering exceptional results that inspire and captivate."</p>
                                <div class="box">
                                    <span class="mb-0">Home</span>
                                    <span class="mb-0 dash">-</span>
                                    <span class="mb-0 box_span">Portfolio</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-12 col-sm-12 col-12 order-lg-2 order-1">
                        <div class="banner_wrapper">
                            <figure class="sub-bannerimage mb-0" data-aos="fade-up">
                                <img src="assets/images/works/portfolio-bannerimage.jpg" alt="" class="img-fluid">
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="site-main">
        <div class="section">
            <div class="wrapper-inner">
                <div class="widget-filter-top">
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
                </div>
                <div class="widget-gallery-grid">
                    <div class="row">
                        <asp:Repeater ID="rptBindGallery" runat="server">
                            <ItemTemplate>
                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 isotope-item <%# Eval("ClassName")%>">
                                    <div class="gallery-item">
                                        <a href="images/gallary/<%# Eval("ImageName")%>" data-background="images/gallarythumbnail/<%# Eval("ImageName")%>" class="popup-gallery">
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