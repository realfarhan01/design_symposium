<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="interior-commercial.aspx.vb" Inherits="interior_commercial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <section class="blogpage-section">
        <div class="container">
            <h2 class="text-center mb-5" style="color:#e4ac04;text-transform:uppercase;">Commercial</h2>
            <div class="row architecture-sec">
                <div class="col-md-4">
                    <a href="detail-interior-commercial-storeshops">
                        <img src="assets/images/category/img-interior-commercial-store.jpg" alt="category" width="100%" />
                        <h4>Store /  Shop</h4>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href=" detail-interior-commercial-offices">
                        <img src="assets/images/category/img-interior-commercial-office.png" alt="category" width="100%" />
                        <h4>Office</h4>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href=" detail-interior-commercial-multiplexes">
                        <img src="assets/images/category/img-interior-commercial-multiplexes.jpg" alt="category" width="100%" />
                        <h4>Multiplexes</h4>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="detail-interior-commercial-restaurant">
                        <img src="assets/images/category/img-interior-commercial-restaurant.jpg" alt="category" width="100%" />
                        <h4>Restaurant</h4>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="detail-interior-commercial-warehouse">
                        <img src="assets/images/category/img-interior-commercial-warehouse.jpg" alt="category" width="100%" />
                        <h4>Warehouse</h4>
                    </a>
                </div>
            </div>
            <div class="text-center mt-4"><button onclick="window.history.back(-1); return false;" class="back-btn text-uppercase"><i class="fa-solid fa-arrow-left"></i> Previous Page</button></div>
        </div>
    </section>
</asp:Content>

