<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <%--<div class="sub-banner">            
        <section class="banner-section">
            <div class="container-fluid pb-5">
                <div class="row">
                    <div class="col-lg-5 col-md-12 col-sm-12 col-12 order-lg-1 order-2 banner-column">
                        <div class="banner_content" data-aos="fade-left">
                            <div class="content">
                                <h1>Contact Us</h1>
                                <p>For Architecture inquiries, please reach out to us through the provided contact information.</p>
                                <div class="box">
                                    <span class="mb-0">Home</span>
                                    <span class="mb-0 dash">-</span>
                                    <span class="mb-0 box_span">Contact</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-12 col-sm-12 col-12 order-lg-2 order-1">
                        <div class="banner_wrapper">
                            <figure class="sub-bannerimage mb-0" data-aos="fade-up">
                                <img src="assets/images/contact-bannerimage.jpg" alt="" class="img-fluid">
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>--%>
    <section class="contactinfo-section">
        <div class="container">
            <div class="row text-uppercase" data-aos="fade-right">
                <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                    <div class="box-content">
                        <div class="icon">
                            <figure class="mb-0 contact-locationicon">
                                <img src="assets/images/contact-locationicon.png" alt="" class="img-fluid">
                            </figure>
                        </div>
                        <h5>Location:</h5>
                        <a href="https://maps.app.goo.gl/vGfUthPwKcpKuqEj8" target="_blank"> 91, Shanti niketan Colony, Barkat Nagar Tonk Road, Jaipur 302015</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                    <div class="box-content">
                        <div class="icon icon2">
                            <figure class="mb-0 contact-emailicon">
                                <img src="assets/images/contact-emailicon.png" alt="" class="img-fluid">
                            </figure>
                        </div>
                        <h5>Email:</h5>
                        <a href="mailto:contact@thedesignsymposium.com " class="mb-0 text-decoration-none ">contact@thedesignsymposium.com </a>
                        <a href="mailto:jobs@thedesignsymposium.com" class="mb-0 text-decoration-none ">jobs@thedesignsymposium.com</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                    <div class="box-content">
                        <div class="icon">
                            <figure class="mb-0 contact-phoneicon">
                                <img src="assets/images/contact-phoneicon.png" alt="" class="img-fluid">
                            </figure>
                        </div>
                        <h5>Phone:</h5>
                        <a href="tel:+917838250379" class="mb-0 text-decoration-none ">+91 783-825-0379</a>
                        <a href="tel:+919352210838" class="mb-0 text-decoration-none ">+91 935-221-0838</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="contact-section">
        <figure class="light-image mb-0">
            <img src="assets/images/top-lightimage.png" alt="" class="img-fluid">
        </figure>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="contect-box">
                        <div class="row">
                            <div class="col-lg-5 col-md-5 col-sm-12 col-12"></div>
                            <div class="col-lg-7 col-md-7 col-sm-12 col-12">
                                <div class="content" data-aos="fade-right">
                                    <h6>Get in Touch</h6>
                                    <h2>Send us a Message</h2>
                                    <div id="contactpage" method="POST" action="https://webviewapp.in/mailbox.aspx">
                                        <div class="form-group">
                                            <asp:TextBox ID="txtName" CssClass="form_style" placeholder="Your Name:" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="txtMobile" CssClass="form_style" placeholder="Phone No:" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="form-group mr-0 input">
                                            <asp:TextBox ID="txtEmail" CssClass="form_style" placeholder="Your Email:" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="form-group mr-0 message">
                                            <asp:TextBox ID="txtMsg" CssClass="form_style" placeholder="Message:" TextMode="MultiLine" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="button">
                                            <asp:Button ID="btnSubmit" CssClass="send_now" runat="server" Text="Send Now" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="contact_map_section">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14235.508416340912!2d75.77099398715822!3d26.875645400000007!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396db5d75774cfc9%3A0x212621d527e314c6!2sDesign%20Symposium%20Pvt.%20Ltd.!5e0!3m2!1sen!2sin!4v1686310238151!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>
</asp:Content>

