<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="Example._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" ></script>
    <link href="<%="https://www.passle.net/Style/PublishedPassleCSS?passleId="+PassleFeedShortCode%>" rel="stylesheet" />
    <link href="https://d14tqcyg1o920w.cloudfront.net/Wordpress/css/WordPressPlugin.css?v=1.0.0.0" rel="stylesheet" />
    <script type="text/javascript" src="https://d14tqcyg1o920w.cloudfront.net/Wordpress/js/wordpressplugin.js"></script>
    <title>Passle Feed Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="passle-shortcode">
            <%=PassleFeed.RenderXml(String.Format("https://www.passle.net/pluginfeed/{0}/{1}/{2}", PassleFeedShortCode, PassleFeedPageToDisplay, PassleFeedNumberOfPostsToDisplayPerPage), "https://d14tqcyg1o920w.cloudfront.net/Wordpress/XSLT/PassleFeed.xsl", Nothing)%>
        </div>
    </form>
</body>
</html>
