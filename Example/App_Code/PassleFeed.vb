Imports System.Xml.Xsl
Imports System.Xml
Imports System.IO

Public Class PassleFeed
    Public Shared Function RenderXml(xmlPath As String, xsltPath As String, parameters As IDictionary(Of String, String)) As String
        Dim args As New XsltArgumentList()
        If parameters IsNot Nothing Then
            For Each key As String In parameters.Keys
                args.AddParam(key, "", parameters(key))
            Next
        End If

        Dim t As New XslCompiledTransform()
        t.Load(xsltPath)

        Dim settings As New XmlReaderSettings()
        settings.ValidationType = ValidationType.DTD

        Using reader As XmlReader = XmlReader.Create(xmlPath, settings)
            Dim writer As New StringWriter()
            t.Transform(reader, args, writer)
            Return writer.ToString()
        End Using
    End Function

End Class
