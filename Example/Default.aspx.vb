Public Class _Default
    Inherits System.Web.UI.Page

    Public Property PassleFeedShortCode As String
    Public Property PassleFeedPageToDisplay As Integer
    Public Property PassleFeedNumberOfPostsToDisplayPerPage As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        PassleFeedShortCode = "2cxn"
        PassleFeedNumberOfPostsToDisplayPerPage = 15
        PassleFeedPageToDisplay = 1
    End Sub
End Class