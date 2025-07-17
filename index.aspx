<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

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
            position: relative;
            display: block;
            height: 100%;
            float: left;
            border: 0;
            width: 290%;
            left: -380px;
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
                                            <asp:Button id="btnSubmit" CssClass="send_now" runat="server" Text="Check Rate" />
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
    <div class="contact_map_section">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14235.508416340912!2d75.77099398715822!3d26.875645400000007!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396db5d75774cfc9%3A0x212621d527e314c6!2sDesign%20Symposium%20Pvt.%20Ltd.!5e0!3m2!1sen!2sin!4v1686310238151!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>
 </asp:Content>

