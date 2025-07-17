
Partial Class architecture_interior_desing
    Inherits System.Web.UI.Page
    Dim BLL As New BusinessLogicLayer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            BindGallery()
        End If
    End Sub
    Sub BindGallery()
        Dim dtlGallery As DataTable = BLL.ExecDataTableProc("Get_Gallery", "@GallaryId", 0, "@User", "admin", "@UserName", System.Configuration.ConfigurationManager.AppSettings("UserName"))
        'rptBindGallery.DataSource = dtlGallery
        'rptBindGallery.DataBind()
    End Sub

End Class
