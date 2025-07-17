<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" ValidateRequest="false" CodeFile="tourpackagemaster.aspx.vb" Inherits="Admin_tourpackagemaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" src="tinymce/tinymce.min.js"></script>
<script type="text/javascript">
    tinymce.init({
        selector: "textarea",
        extended_valid_elements: 'span',
        theme: "modern",
        plugins: [
        "advlist autolink lists link image charmap print preview hr anchor pagebreak",
        "searchreplace wordcount visualblocks visualchars code fullscreen",
        "insertdatetime media nonbreaking save table contextmenu directionality",
        "emoticons template paste textcolor colorpicker textpattern imagetools"
    ],
        toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
        toolbar2: "print preview media | forecolor backcolor emoticons",
        image_advtab: true,
        templates: [
        { title: 'Test template 1', content: 'Test 1' },
        { title: 'Test template 2', content: 'Test 2' }
    ]
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="C1" Runat="Server">
<!-- Form components -->
            <div class="form-horizontal" >



                <!-- Basic inputs -->
                <div class="panel panel-default" id="div1" runat="server">
                    <div class="panel-heading"><h6 class="panel-title">Add/Edit Tour Package </h6> </div>
                    <div class="panel-body">
                        <asp:HiddenField ID="hfId" runat="server" />
                       <%-- <div class="alert alert-info fade in widget-inner">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            Default form components, including bootstrap additions and tags
                        </div>--%>
                        <asp:Literal ID="litmsg" runat="server"></asp:Literal>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Category </label>
                            <div class="col-sm-10">
                                <asp:dropdownlist id="ddlCategory" class="form-control" AppendDataBoundItems="true"  runat="server">
                                    <asp:ListItem Value="">Select Category</asp:ListItem>
                                </asp:dropdownlist>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Tour Package Name </label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txtProductName" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Package Days </label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txtPackageDays" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Package Price (Per Person) </label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txtPackagePricePP" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Image </label>
                            <div class="col-sm-10">
                                <asp:FileUpload ID="FileUpload" CssClass="form-control" runat="server" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Short Description </label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txtShortDesc" class="form-control" Height="100px" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Tour Package Description </label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txtProductDesc" class="form-control" Height="200px" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Tour Package Itinerary </label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txtPackageItinerary" class="form-control" Height="200px" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Tour Package Road Map </label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txtRoadMap" class="form-control" Height="200px" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Location Map Embed</label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="txtLocationEmbed" class="form-control" Height="50px" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="col-sm-2 control-label">Status </label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="ddlStatus" class="select-full" runat="server">
                                 <asp:ListItem Value="0">Active</asp:ListItem>
                                <asp:ListItem Value="1">Deactive</asp:ListItem>
                                </asp:DropDownList>
                                 
                            </div>
                        </div>

                         <div class="form-actions text-right">
                                <asp:Button ID="btnSubmit" runat="server" ValidationGroup="UserRegistration" class="btn btn-primary" Text="Submit" />
                       
                        </div>
                        </div></div>

                         <div class="panel panel-default" id="div2" runat="server">
                            <asp:HiddenField ID="HiddenField1" runat="server" />
                <div class="panel-heading"><h6 class="panel-title">Tour Package List</h6>
                    <span style="text-align:right;display:block;">
                        <asp:Button ID="btnAdd" runat="server" Text="Add New" CssClass="btn btn-primary" />
                    </span>

                </div>
                <div class="table-responsive">
                
                        <asp:GridView ID="DataDisplay" class="table table-bordered table-check" AutoGenerateColumns="false" runat="server">
                        <Columns>
                            <asp:TemplateField HeaderText="S.No" >
                            <ItemTemplate>
                                <%#Container.DataItemIndex + 1%>
                            </ItemTemplate>
                                                          
                            </asp:TemplateField>
                             <asp:TemplateField ItemStyle-Width="200px">
                                 <HeaderTemplate>Tour Package Name</HeaderTemplate>
                                 <ItemTemplate>
                                     <%#Eval("PackageName") %>                                                        
                                 </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField ItemStyle-Width="200px">
                                 <HeaderTemplate>Category</HeaderTemplate>
                                 <ItemTemplate>
                                     <%#Eval("ProductCategory") %>                                                        
                                 </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField>
                                 <ItemTemplate>
                                     <a href='../images/tours/<%#Eval("ImageName") %>' target="_blank" >
                                    <img style="width:150px" alt="" src='../images/tours/<%#Eval("ImageName") %>'></img></a>
                                 </ItemTemplate>
                             </asp:TemplateField>
                             <asp:BoundField DataField="PackageDays" HeaderText="Package Days"></asp:BoundField>
                             <asp:BoundField DataField="PackagePricePP" HeaderText="Price PP"></asp:BoundField>
                             <asp:BoundField DataField="Status" HeaderText="Status"></asp:BoundField>
                         
                   

                         <asp:TemplateField>
                         <ItemTemplate>
                             <asp:LinkButton ID="LinkButton3" CommandArgument='<%#Eval("PackageId") %>' CommandName="Deactivate1" runat="server">Edit</asp:LinkButton>
                         </ItemTemplate>
                         
                         </asp:TemplateField>
                         
                         <asp:TemplateField>
                         <ItemTemplate>
                             <asp:LinkButton ID="LinkButton2" CommandArgument='<%#Eval("PackageId") %>' CommandName="Delete1" runat="server">Delete</asp:LinkButton>
                         </ItemTemplate>
                         
                         </asp:TemplateField>
                         </Columns>
                        </asp:GridView>
                        </div></div>
</div>
</asp:Content>

