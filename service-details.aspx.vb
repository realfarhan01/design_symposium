
Partial Class service_details
    Inherits System.Web.UI.Page
    Dim BLL As New BusinessLogicLayer
    Public PackagePricePP As String = ""
    Public GallaryImage As String = ""
    Public SliderImage As String = ""
    Public PackageId As String = "0"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Not Page.IsPostBack Then
                Dim PageName As String = ""
                If Not Request.QueryString("page") Is Nothing Then
                    PageName = Request.QueryString("page")
                    'PageName = PageName.Replace("detail-", "")
                    Dim rptData As SqlDataReader = BLL.ExecDataReaderProc("Prc_GetProducts", "Type", 3, "@PageURL", PageName, "@UserName", System.Configuration.ConfigurationManager.AppSettings("UserName"))
                    RptTable.DataSource = rptData
                    RptTable.DataBind()
                    'LitCatName.Text = BLL.ExecScalar("Select ProductCategory From tbl_ProductCategory Where PageURL=@PageURL", "@PageURL", PageName)
                End If

                Dim website As String = System.Configuration.ConfigurationManager.AppSettings("url")
                Dim pageurl As String = PageName
                Dim username As String = System.Configuration.ConfigurationManager.AppSettings("UserName")
                Dim IPAddress As String = Request.ServerVariables("REMOTE_ADDR")
                If IPAddress <> "127.0.0.1" Then
                    Dim IPLocation As String = BLL.IPLocation()
                    Dim Location As String = geospilt(IPLocation, 4).ToString() & " - Latitude : " & geospilt(IPLocation, 8).ToString() & ", Longitude : " & geospilt(IPLocation, 9).ToString()
                    BLL.SaveWebsiteHit(website, pageurl, username, IPAddress, Location)
                End If
            End If
        Catch ex As Exception
            Response.Write(ex.ToString())
        End Try
    End Sub
    Public Function geospilt(ByVal IPLocation As String, ByVal Number As Integer) As String
        Dim location, ReturnData As String
        location = IPLocation
        Dim arr As Array
        arr = location.Split(";")
        ReturnData = arr(Number)
        Return ReturnData
    End Function

End Class
