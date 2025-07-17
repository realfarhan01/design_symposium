<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="index-old.aspx.vb" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script src="assets/js/jquery-3.0.0.min.js"></script>
     <script type="text/javascript" src="assets/js/slider.js"></script>
     <style>
         body{background:#000;}
        .home-slider {
          width: 100%;
          overflow: hidden;
          margin: 0;
          padding: 0;
          height:100% !important;
          position: absolute;
          top: 0;
          left: 0;
          z-index: 0;
        }
        .transparent-btns_tabs {
          position: absolute;
          z-index: 2;
          bottom: 0;
          width: 100%;
          text-align: center;
        }
        .transparent-btns_tabs a {
          text-indent: -9999px;
          overflow: hidden;
          -webkit-border-radius: 15px;
          -moz-border-radius: 15px;
          border-radius: 15px;
          background: #ccc;
          background: rgba(0, 0, 0, 0.2);
          display: inline-block;
          _display: block;
          *display: block;
          -webkit-box-shadow: inset 0 0 2px 0 rgba(0, 0, 0, 0.3);
          -moz-box-shadow: inset 0 0 2px 0 rgba(0, 0, 0, 0.3);
          box-shadow: inset 0 0 2px 0 rgba(0, 0, 0, 0.3);
          width: 11px;
          height: 11px;
        }
        ul.transparent-btns_tabs.transparent-btns1_tabs {
            display: none;
        }
        .rslides {
          position: relative;
          list-style: none;
          overflow: hidden;
          width: 100%;
          padding: 0;
          margin: 0;
          }

        .rslides li {
          -webkit-backface-visibility: hidden;
          position: absolute;
          display: none;
          width: 100%;
          left: 0;
          top: 0;
          }

        .rslides li:first-child {
          position: relative;
          display: block;
          float: left;
          }

        .rslides img {
          display: block;
          height: 100%;
          float: left;
          border: 0;
          width:100%;
          }
        @media only screen and (max-width: 600px) {
         .rslides img {
          display: block;
          height: 100%;
          float: left;
          border: 0;
          width:290%;
          }
        }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="home-slider">
        <ul class="rslides" id="slider1">
            <li><img src="assets/images/BNR/slider-img-01.jpg" alt="slide1"></li>
            <li><img src="assets/images/BNR/slider-img-02.jpg" alt="slide2"></li>
            <li><img src="assets/images/BNR/slider-img-03.jpg" alt="slide3"></li>
            <li><img src="assets/images/BNR/slider-img-04.jpg" alt="slide4"></li>
            <li><img src="assets/images/BNR/slider-img-05.jpg" alt="slide5"></li>
            <li><img src="assets/images/BNR/slider-img-06.jpg" alt="slide6"></li>
            <li><img src="assets/images/BNR/slider-img-07.jpg" alt="slide7"></li>
            <li><img src="assets/images/BNR/slider-img-08.jpg" alt="slide8"></li>
            <li><img src="assets/images/BNR/slider-img-09.jpg" alt="slide9"></li>
            <li><img src="assets/images/BNR/slider-img-10.jpg" alt="slide10"></li>
            <li><img src="assets/images/BNR/slider-img-11.jpg" alt="slide11"></li>
        </ul>
    </div>
    <script>
        $("#slider1").responsiveSlides({
            pager: true,
            speed: 2000,
            namespace: "transparent-btns"
        });
    </script>
    <section class="contact-section index-from" style="padding:50px 0px 50px; ">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="contect-box-index">
                        <div class="row">
                            <div class="col-lg-12 col-md-7 col-sm-12 col-12">
                                <div class="content aos-init" data-aos="fade-right">
                                    <h6>Get in Touch</h6><br />
                                    <div id="contactpage" class="index_form_sec" method="POST" action="https://webviewapp.in/mailbox.aspx">
                                        <div class="form-group">
                                            <asp:TextBox id="txtName" CssClass="form_style" placeholder="Name:" runat="server" required></asp:TextBox>
                                        </div>
                                        <div class="form-group mr-0 input2">
                                            <asp:TextBox id="txtMobile" CssClass="form_style" placeholder="Phone No:" runat="server" required></asp:TextBox>
                                        </div>
                                        <div class="form-group option-font option-sel">
                                            <i class="fa fa-caret-down"></i>
                                            <asp:DropDownList id="ddlCategory" name="ddlState" runat="server" CssClass="option-services">
                                                <asp:ListItem selected="True">Select Service</asp:ListItem>
                                                <asp:ListItem Value="Architectural">Architectural Design</asp:ListItem>
                                                <asp:ListItem Value="Interior">Interior Design</asp:ListItem>
                                                <asp:ListItem Value="Urban">Urban / Town Planning</asp:ListItem>
                                                <asp:ListItem Value="Landscape-Design">Landscape Design</asp:ListItem>
                                                <asp:ListItem Value="Furniture-Design">Furniture Design & Art Installation</asp:ListItem>
                                                <asp:ListItem Value="Turnkey-Construction-Vaastu">Turnkey /Construction / Vaastu</asp:ListItem>
                                                <asp:ListItem Value="Project-Management">Project Management</asp:ListItem>
                                                <asp:ListItem Value="Other">Other</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="button">
                                            <asp:Button id="btnSubmit" CssClass="send_now" runat="server" Text="Check Rate" /><i class="arrow fa-thin fa-arrow-right"></i>
                                        </div>
                                        <asp:TextBox id="clientname" runat="server" value="thedesignsymposium" type="hidden"></asp:TextBox>
                                        <asp:TextBox id="clientemail" runat="server" value="contact@thedesignsymposium.com" type="hidden"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="servicepage-section">
        <div class="container">
            <h2 class="text-center pb-5">Our Services</h2>
            <div class="row aos-init aos-animate" data-aos="fade-up">
                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="service-box">
                        <div class="box-image">
                            <figure class="mb-0 servicepage-image">
                                <img src="assets/images/blog-image1.png" alt="" class="img-fluid">
                            </figure>                                
                        </div>
                        <div class="box-content">
                            <h5 class="text-white">Architecture Design</h5>
                            <p class="text-size-20">We offer comprehensive architectural and interior design solutions, crafting spaces that merge beauty and innovation...</p>
                            <a class="read_more text-decoration-none" href="architecture-design">Read More <i class="fa-solid fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="service-box">
                        <div class="box-image">
                            <figure class="mb-0 servicepage-image">
                                <img src="assets/images/Graphic.jpg" alt="" class="img-fluid">
                            </figure>                                
                        </div>
                        <div class="box-content">
                            <h5 class="text-white">Interior Design</h5>
                            <p class="text-size-20">Site Measurement, Space Planning, Furniture Layout, Working Drawings, Quality checks, Snag list, Shopping visit....</p>
                            <a class="read_more text-decoration-none" href="interior-design">Read More <i class="fa-solid fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="service-box">
                        <div class="box-image">
                            <figure class="mb-0 servicepage-image">
                                <img src="assets/images/blog-image2.jpg" alt="" class="img-fluid">
                            </figure>                                
                        </div>
                        <div class="box-content">
                            <h5 class="text-white">Urban Town Planning</h5>
                            <p class="text-size-20"> Architecture plays a crucial role in urban master development plans, shaping the physical fabric and character of cities...</p>
                            <a class="read_more text-decoration-none" href="urban-town-planning">Read More <i class="fa-solid fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="service-box">
                        <div class="box-image">
                            <figure class="mb-0 servicepage-image">
                                <img src="assets/images/tab-landscape-img-02.jpg" alt="" class="img-fluid">
                            </figure>                                
                        </div>
                        <div class="box-content">
                            <h5 class="text-white">Landscape Design</h5>
                            <p class="text-size-20">WE are a professional who designs and plans outdoor spaces such as gardens, parks, trails, and other areas of land....</p>
                            <a class="read_more text-decoration-none" href="landscape-design">Read More <i class="fa-solid fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="service-box">
                        <div class="box-image">
                            <figure class="mb-0 servicepage-image">
                                <img src="assets/images/blog-image4.jpg" alt="" class="img-fluid">
                            </figure>                                
                        </div>
                        <div class="box-content">
                            <h5 class="text-white">Furniture Design & Art Installation</h5>
                            <p class="text-size-20">Furniture plays a vital role in our daily lives, providing functionality, comfort, and aesthetic value...</p>
                            <a class="read_more text-decoration-none" href="furniture-art-installation">Read More <i class="fa-solid fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="service-box">
                        <div class="box-image">
                            <figure class="mb-0 servicepage-image">
                                <img src="assets/images/tab-installation-img-02.jpg" alt="" class="img-fluid">
                            </figure>                                
                        </div>
                        <div class="box-content">
                            <h5 class="text-white">Turnkey / Construction / Vaastu</h5>
                            <p class="text-size-20">Bill of Quantities, Composite Quotations, Material Specifications, Shop Drawings, ....</p>
                            <a class="read_more text-decoration-none" href="turnkey-construction-vaastu">Read More <i class="fa-solid fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="service-box">
                        <div class="box-image">
                            <figure class="mb-0 servicepage-image">
                                <img src="assets/images/tab-installation-img-01.jpg" alt="" class="img-fluid">
                            </figure>                                
                        </div>
                        <div class="box-content">
                            <h5 class="text-white">Project Management</h5>
                            <p class="text-size-20">Project Management Master Schedule, Project Budget, Progress Meetings, Site Program Plan, Contract Administration...</p>
                            <a class="read_more text-decoration-none" href="project-management">Read More <i class="fa-solid fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="process-sec pro-sec-1">
        <div class="container">
            <h2 class="text-center pb-5">Our Process</h2>
            <div class="row prosess-box text-center">
                <div class="col-lg-5 col-md-4">
                    <h5 class="text-white justify-content-center d-flex text-center bg-dark p-3 rounded">Brief & Concept</h5>
                </div>
                <div class="col-lg-3 col-md-4 ml-35">
                    <h5 class="text-white justify-content-center d-flex text-center bg-dark p-3 rounded">Detail Design</h5>
                </div>
                <div class="col-lg-3 col-md-4 ml-35">
                    <h5 class="text-white justify-content-center d-flex text-center bg-dark p-3 rounded">Construction</h5>
                </div>
                <div class="col mt-4">
                    <div class="prosess-title">
                        <h3 style="color:#fff;">Strategic Definition</h3>
                        <div class="process-sec-btm crcl-yellow" style="color:#fff; border-top:3px solid #fff;">0</div>
                    </div>
                </div>
                <div class="col mt-4">
                    <div class="prosess-title">
                        <h3 style="color:#fff;">Preparation & Brief</h3>
                        <div class="process-sec-btm crcl-hot-pink" style="color:#e3bb10; border-bottom:3px solid #e3bb10;">1</div>
                    </div>
                </div>
                <div class="col mt-4">
                    <div class="prosess-title">
                        <h3 style="color:#fff;">Developed Design</h3>
                        <div class="process-sec-btm crcl-light-blue" style="color:#fff;border-top:3px solid #fff;">2</div>
                    </div>
                </div>
                <div class="col mt-4">
                    <div class="prosess-title">
                        <h3 style="color:#fff;">Concept Design</h3>
                        <div class="process-sec-btm crcl-hot-pink" style="color:#e3bb10;border-bottom:3px solid #e3bb10;">3</div>
                    </div>
                </div>
                <div class="col mt-4">
                    <div class="prosess-title">
                        <h3 style="color:#fff;">Technical Design</h3>
                        <div class="process-sec-btm crcl-yellow" style="color:#fff;border-top:3px solid #fff;">4</div>
                    </div>
                </div>
                <div class="col mt-4">
                    <div class="prosess-title">
                        <h3 style="color:#fff;">Enabling & Implementation</h3>
                        <div class="process-sec-btm crcl-hot-pink" style="color:#e3bb10;border-bottom:3px solid #e3bb10;">5</div>
                    </div>
                </div>
                <div class="col mt-4">
                    <div class="prosess-title">
                        <h3 style="color:#fff;">Handover</h3>
                        <div class="process-sec-btm" style="color:#fff;border-top:3px solid #fff;">6</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="process-sec pro-sec-2">
        <div class="container">
            <h1 class="text-center pb-5">Our Process</h1>
            <div class="row prosess-box">
                <div class="col-lg-5 col-md-4">
                    <h2 class="text-white justify-content-center d-flex text-center bg-dark p-3 rounded">Brief & Concept</h2>
                </div>
                <div class="col mt-12">
                    <div class="prosess-title-2">
                        <h3 style="color:#fff;"><i class="fa fa-arrow-right"></i>Strategic Definition</h3>
                        <h3 style="color:#fff;"><i class="fa fa-arrow-right"></i>Preparation & Brief</h3>
                        <h3 style="color:#fff;"><i class="fa fa-arrow-right"></i>Developed Design</h3>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 ml-35 mt-3">
                    <h2 class="text-white justify-content-center d-flex text-center bg-dark p-3 rounded">Detail Design</h2>
                </div>
                <div class="col mt-12">
                    <div class="prosess-title-2">
                        <h3 style="color:#fff;"><i class="fa fa-arrow-right"></i>Technical Design</h3>
                        <h3 style="color:#fff;"><i class="fa fa-arrow-right"></i>Concept Design</h3>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 ml-35 mt-3">
                    <h2 class="text-white justify-content-center d-flex text-center bg-dark p-3 rounded">Construction</h2>
                </div>
                <div class="col mt-12">
                    <div class="prosess-title-2">
                        <h3 style="color:#fff;"><i class="fa fa-arrow-right"></i>Enabling & Implementation</h3>
                        <h3 style="color:#fff;"><i class="fa fa-arrow-right"></i>Handover</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="process-section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="process_content" data-aos="fade-up">
                        <h6>What You Get</h6>
                        <h2>When You Hire Us</h2>
                        <h3 class="text-white hire-sec"><i>As Designers</i></h3>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-4">
                     <div class="service-box">
                        <div class="box-content">
                            <a class="text-decoration-none" href="javascript:;">COST CONSULTANCY</a>
                            <h4 class="text-white mt-3">Budgets Upfront</h4>
                            <p class="text-size-20 mt-3">Get a clear idea of your total project budget and timelines upfront. No false promises now and surprises later.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                     <div class="service-box">
                        <div class="box-content">
                            <a class="text-decoration-none" href="javascript:;">COST CONTROL</a>
                            <h4 class="text-white mt-3">Accurate BOQ</h4>
                            <p class="text-size-20 mt-3">Get an accurate bill of quantities for your project and get quoted from multiple contractors.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                     <div class="service-box">
                        <div class="box-content">
                            <a class="text-decoration-none" href="javascript:;">SEE WHAT YOU'LL GET</a>
                            <h4 class="text-white mt-3">360 Visualization</h4>
                            <p class="text-size-20 mt-3">Visualize your project in Photo-Realistic 3D all around with technical clarity.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center mt-5">
                <div class="col-lg-4">
                     <div class="service-box">
                        <div class="box-content">
                            <a class="text-decoration-none" href="javascript:;">QUALITY CONTROL</a>
                            <h4 class="text-white mt-3">Photographic Progress</h4>
                            <p class="text-size-20 mt-3">Get notified visually on daily site progress. We keep an eye on the contractor's material quality and timelines</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                     <div class="service-box">
                        <div class="box-content">
                            <a class="text-decoration-none" href="javascript:;">CLARITY ON GOVT. PROCESSES</a>
                            <h4 class="text-white mt-3">Liasoning and Approvals</h4>
                            <p class="text-size-20 mt-3">Most clients get stuck with wrong guidance related to Loans, Approvals, FSI, Deviations and Penalties. We give the real picture and also assist.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                     <div class="service-box">
                        <div class="box-content">
                            <a class="text-decoration-none" href="javascript:;">BIG SAVINGS</a>
                            <h4 class="text-white mt-3">Vendor Discounts</h4>
                            <p class="text-size-20 mt-3">Avail all vendor discounts directly to you, which most architects don't transfer. There's some big savings here.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="process-section">
        <div class="container">
            <div class="row text-justify">
                <div class="col-12">
                    <div class="process_content" data-aos="fade-up">
                        <h2>Our Unique Features</h2>
                        <h3 class="text-white Our-Unique-sec"><i>You Will Love</i></h3>
                    </div>
                </div>
                <div class="col-md-2 justify-content-center d-flex align-items-center">
                    <img src="assets/images/unique-features-img-01.png" alt="Alternate Text" style="filter: grayscale(1);" />
                </div>
                <div class="col-md-4">
                    <h3 class="text-white">Single Contact In-House Expertise</h3>
                    <p>Cross innovation & responsibility is lost when parts of work is outsourced. We've an in-house team of expertise with 3D visualisers, quantity surveyors, lighting designers and project managers</p>
                </div>
                <div class="col-md-2 justify-content-center d-flex align-items-center">
                    <img src="assets/images/unique-features-img-02.png" alt="Alternate Text" style="filter: grayscale(1);" />
                </div>
                <div class="col-md-4">
                    <h3 class="text-white">Quality Check At Site</h3>
                    <p>Our site engineers ensure the contractor follows execution standards and adheres to design. We share the site meeting reports to our clients on a regular basis to keep them informed on the developments.</p>
                </div>
                <div class="col-md-2 justify-content-center d-flex align-items-center">
                    <img src="assets/images/unique-features-img-03.png" alt="Alternate Text" style="filter: grayscale(1);" />
                </div>
                <div class="col-md-4">
                    <h3 class="text-white">Principles & Ethics Above All</h3>
                    <p>We're free of all industry-standard shady practices. We believe in being transparent to the client and do not work on a commission basis with vendors and contractors.</p>
                </div>
                <div class="col-md-2 justify-content-center d-flex align-items-center">
                    <img src="assets/images/unique-features-img-04.png" alt="Alternate Text" style="filter: grayscale(1);" />
                </div>
                <div class="col-md-4">
                    <h3 class="text-white">We're Heart-Fully Flexible</h3>
                    <p>We're a humane company. We hate rigid terms, conditions and red-tapes. We do everything within and beyond our scope to support our clients.</p>
                </div>
                <div class="col-md-2 justify-content-center d-flex align-items-center">
                    <img src="assets/images/unique-features-img-05.png" alt="Alternate Text" style="filter: grayscale(1);" />
                </div>
                <div class="col-md-4">
                    <h3 class="text-white">Progressive Design Revisions</h3>
                    <p>No take-it-or-leave-it-attitude and |-know-it-best talks. We respect opinions, revisions and love to iterate till perfection without compromises.</p>
                </div>
                <div class="col-md-2 justify-content-center d-flex align-items-center">
                    <img src="assets/images/unique-features-img-06.png" alt="Alternate Text" style="filter: grayscale(1);" />
                </div>
                <div class="col-md-4">
                    <h3 class="text-white">Quickest Turnaround</h3>
                    <p>We hate delays. While creativity cannot be rushed, we keep up ahead of time through quick turnarounds. We understand time is a truly non-renewable resource.</p>
                </div>
            </div>
        </div>
    </section>
    <%--<section class="work-section" >
        <div class="container work-exp">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-12 text-center" sty>
                    <h1 class="mt-40">10<sup>+</sup> YEARS</h1>
                    <h2>Experience</h2>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="work_wrapper">
                        <figure class="work-image mb-0" data-aos="fade-right">
                            <img src="assets/images/work-image.png" alt="" class="img-fluid">
                        </figure>
                        <figure class="work-imagebackground mb-0" data-aos="fade-up">
                            <img src="assets/images/work-image.png" alt="" class="img-fluid" style="filter: blur(3px);">
                        </figure>
                    </div>
                </div>
            </div>
        </div>
    </section>--%>
    <%--<section class="testimonial-section">
        <div class="container">
            <div class="row">
                <div class="owl-carousel owl-theme">
                    <div class="item">
                        <div class="box">
                            <div class="image">
                                <figure class="testimonial-image mb-0">
                                    <img src="assets/images/review-img-02.jpg" class="img-fluid" alt="">
                                </figure>
                                <figure class="quote-icon mb-0">
                                    <img src="assets/images/quote-icon.png" class="img-fluid" alt="">
                                </figure>
                            </div>
                            <div class="box-content">
                                <p class="text-size-18">Architecture is a fascinating field that combines art, science, and engineering to create practical and efficient structures that are both beautiful and functional...</p>
                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                </ul>
                                <div class="lower-portion">
                                    <span class="text-white text-size-16">Kapish Sharma</span>
                                    <span class="text-size-14">Happy Customer</span>
                                    <figure class="quote-image mb-0">
                                        <img src="assets/images/quote-image.png" class="img-fluid" alt="">
                                    </figure>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="box">
                            <div class="image">
                                <figure class="testimonial-image mb-0">
                                    <img src="assets/images/review-img-03.jpg" class="img-fluid" alt="">
                                </figure>
                                <figure class="quote-icon mb-0">
                                    <img src="assets/images/quote-icon.png" class="img-fluid" alt="">
                                </figure>
                            </div>
                            <div class="box-content">
                                <p class="text-size-18">Interior design can range from simple changes, like rearranging furniture or adding new accessories, to full-scale renovations that completely transform a space...</p>
                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                </ul>
                                <div class="lower-portion">
                                    <span class="text-white text-size-16">Ravi Agrawal</span>
                                    <span class="text-size-14">Happy Customer</span>
                                    <figure class="quote-image mb-0">
                                        <img src="assets/images/quote-image.png" class="img-fluid" alt="">
                                    </figure>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="box">
                            <div class="image">
                                <figure class="testimonial-image mb-0">
                                    <img src="assets/images/review-img-04.jpg" class="img-fluid" alt="">
                                </figure>
                                <figure class="quote-icon mb-0">
                                    <img src="assets/images/quote-icon.png" class="img-fluid" alt="">
                                </figure>
                            </div>
                            <div class="box-content">
                                <p class="text-size-18">It involves careful planning, consideration of various factors such as soil type, The result is a space that is not only aesthetically pleasing but also sustainable and functional...</p>
                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                </ul>
                                <div class="lower-portion">
                                    <span class="text-white text-size-16">Arsh</span>
                                    <span class="text-size-14">Happy Customer</span>
                                    <figure class="quote-image mb-0">
                                        <img src="assets/images/quote-image.png" class="img-fluid" alt="">
                                    </figure>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="box">
                            <div class="image">
                                <figure class="testimonial-image mb-0">
                                    <img src="assets/images/review-img-05.jpg" class="img-fluid" alt="">
                                </figure>
                                <figure class="quote-icon mb-0">
                                    <img src="assets/images/quote-icon.png" class="img-fluid" alt="">
                                </figure>
                            </div>
                            <div class="box-content">
                                <p class="text-size-18"> A well-designed urban landscape must balance the needs of the community with the constraints of limited space, harsh environmental conditions, to natural resources.</p>
                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                </ul>
                                <div class="lower-portion">
                                    <span class="text-white text-size-16">Vishal Shekhawat</span>
                                    <span class="text-size-14">Happy Customer</span>
                                    <figure class="quote-image mb-0">
                                        <img src="assets/images/quote-image.png" class="img-fluid" alt="">
                                    </figure>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="box">
                            <div class="image">
                                <figure class="testimonial-image mb-0">
                                    <img src="assets/images/review-img-06.jpg" class="img-fluid" alt="">
                                </figure>
                                <figure class="quote-icon mb-0">
                                    <img src="assets/images/quote-icon.png" class="img-fluid" alt="">
                                </figure>
                            </div>
                            <div class="box-content">
                                <p class="text-size-18">Furniture Services provides exceptional quality and reliable solutions for all furniture needs. Their expertise and professionalism make outstanding furniture services.</p>
                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                </ul>
                                <div class="lower-portion">
                                    <span class="text-white text-size-16">Ramji Kumar</span>
                                    <span class="text-size-14">Happy Customer</span>
                                    <figure class="quote-image mb-0">
                                        <img src="assets/images/quote-image.png" class="img-fluid" alt="">
                                    </figure>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="box">
                            <div class="image">
                                <figure class="testimonial-image mb-0">
                                    <img src="assets/images/review-img-07.jpg" class="img-fluid" alt="">
                                </figure>
                                <figure class="quote-icon mb-0">
                                    <img src="assets/images/quote-icon.png" class="img-fluid" alt="">
                                </figure>
                            </div>
                            <div class="box-content">
                                <p class="text-size-18">Furniture Project Management offers exceptional expertise and efficiency in handling furniture-related projects. Their team's attention to detail.</p>
                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-star"></i>
                                        </a>
                                    </li>
                                </ul>
                                <div class="lower-portion">
                                    <span class="text-white text-size-16">Sunil Sharma</span>
                                    <span class="text-size-14">Happy Customer</span>
                                    <figure class="quote-image mb-0">
                                        <img src="assets/images/quote-image.png" class="img-fluid" alt="">
                                    </figure>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>--%>
    <script>
        var swiper = new Swiper(".mySwiper", {
            loop: true,
            autoplay: {
              delay: 2000,
              disableOnInteraction: true,
          },
        });
      </script>
</asp:Content>

