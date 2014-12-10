Passle ASP.Net Webforms vb.net .net 2.0 feed example
==================

This solution is an example of how the Passle XML feed can be used in a 
ASP.NET webforms application when using vb.net .net 2.0. It was implemented 
in ASP.NET webforms, and created in Visual Studio 2012. To see the example 
feed, simply run the solution.

These are the steps for embedding your Passle blog into your website. The 
following steps assume that your site was built using Visual Studio.

1. Please open the example solution using Visual Studio (VS). This solution was created using VS 2012. If you are using an earlier version of VS, find and open the `.vbprog` file instead; this should generate a new solution file for the VS version you are using.

2. Copy the following file (from the example solution) into your VS solution: `/Example/App_Code/PassleFeed.vb` This class has a static method `RenderFeed`. This method takes the shortcode of your Passle as well as some details about how you want to display things. See point 6 for an explanation on these.

3. In your VS solution, open the `.aspx` file (the Webform) that you wish to embed the blog into. In the example solution, this file is `Default.aspx`. `Default.aspx` is a Webform which uses the `PassleFeed.RenderFeed` method to render the feed. This method takes the `xml` feed and a path to an `xslt` file and transforms the `xml` using the `xslt` to generate the markup, which is returned as an `HtmlString`.

4. Include the following CSS files in the `<head>` tag for your html document (Webform). Note that the first has a reference to a property called `PassleFeedShortCode`. See point 6 for more details on this.

        <link href="<%="https://www.passle.net/Style/PublishedPassleCSS?passleId="+PassleFeedShortCode%>" rel="stylesheet" />
        <link href="https://d14tqcyg1o920w.cloudfront.net/Wordpress/css/WordPressPlugin.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Goudy+Bookletter+1911|Open+Sans:300,400,600,700|Sansita+One:400,600,700|Satisfy:400,600,700">

5. Include the following JavaScript file in the `<head>` tag for your html document (Webform):

        <script src="https://d14tqcyg1o920w.cloudfront.net/Wordpress/js/wordpressplugin.js" type="text/javascript" ></script>

6. You will need to add some ASP.Net code that your Webform can access to initialise some variables. In the example, `Default.aspx` has a Code-behind page, `Default.aspx.vb`, which has a `Page_Load` method that sets 3 properties:

	    PassleFeedShortCode = "2cxn"
	    PassleFeedNumberOfPostsToDisplayPerPage = 15
	    PassleFeedPageToDisplay = 1

 - `PassleFeedShortCode` is the unique identifier for your blog. You can get this from the settings page of your Passle. 
 - `PassleFeedNumberOfPostsToDisplayPerPage` specifies how many posts to display. 
 - `PassleFeedPageToDisplay` specifies which batch of posts to show (for example, if you decide to show 15 posts per page, setting this to 1 will show the first 15, setting it to 2 will show the second 15, and so on).

7. Finally, add the following code to your html document (the Webform) where you want the blog to appear.

        <div class="passle-shortcode">
          <%=PassleFeed.RenderFeed(
            PassleFeedShortCode, 
            PassleFeedPageToDisplay, 
            PassleFeedNumberOfPostsToDisplayPerPage
          )%>
        </div>

Build and run your solution.

-----------------------------------------------------------------------

Please note: 

  1. You'll need to replace the shortcode in the view with the shortcode of the Passle you are trying to display
> You can get this from the settings page of your Passle.
  2. The feed depends on JQuery >= v1.8.3 (It may work with some earlier versions of JQuery)
  3. The container `div` for the feed must have a class of `passle-shortcode`

-----------------------------------------------------------------------

© Passle Ltd, 2014