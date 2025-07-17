
Partial Class contact
    Inherits System.Web.UI.Page
    Dim BLL As New BusinessLogicLayer
    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        If Page.IsValid Then
            Try
                If validation.isMobileNumber(txtMobile.Text) Then
                    Dim pageurl As String = Request.UrlReferrer.ToString
                    Dim templateVars As New Hashtable()
                    templateVars.Add("Name", txtName.Text)
                    templateVars.Add("Contact", txtMobile.Text)
                    templateVars.Add("Email", txtEmail.Text)
                    templateVars.Add("Message", txtMsg.Text)
                    templateVars.Add("IPAddress", Request.ServerVariables("remote_addr"))
                    Email.SendEmail("contact_email.htm", templateVars, System.Configuration.ConfigurationManager.AppSettings("email"), System.Configuration.ConfigurationManager.AppSettings("infoemail"), "Contact Enquiry From Website")
                    txtName.Text = ""
                    txtMsg.Text = ""
                    txtMobile.Text = ""
                    Page.ClientScript.RegisterClientScriptBlock(Me.GetType(), "error", "alert('Your details has been submited successfully. We will contact you as soon!!');window.location.href='/';", True)
                End If
            Catch ex As Exception

            End Try
        End If
    End Sub

End Class
