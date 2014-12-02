Passle ASP.Net Webforms vb.net .net 2.0 feed example
==================

This solution is an example of how the Passle XML feed can be used in a 
ASP.NET webforms application when using vb.net .net 2.0. It was implemented 
in ASP.NET webforms, and created in Visual Studio 2012. To see the example 
feed, simply run the solution.

The files which will be of most interest are:

`PassleFeed.vb` 

This class has one static method `RenderXml`. This method takes the `xml` feed 
and a path to an `xslt` file and transforms the `xml` using the `xslt` to 
generate the markup, which is returned as an `HtmlString`.

`Default.aspx`

This is a webform which uses the `RenderXml` method to render the feed and 
includes two CSS files and a javascript file from Passle. These files are 
required for the appearance and layout of the feed and it will not work without 
them. It also includes jquery which is required by the Passle script.

`Default.aspx.vb` 

The `Page_Load` method sets three properties that are used to define the feed 
that is displayed, shortcode (see below), page number (if you want to do 
paging), and number of items per page.

-----------------------------------------------------------------------

Please note: 

  1. You'll need replace the shortcode in the view with the shortcode of the Passle you are trying to display
> You can get this from the settings page of your Passle.
  2. The feed depends on JQuery >= v1.8.3 (It may work with some earlier versions of JQuery)
  3. The container `div` for the feed must have a class of `passle-shortcode`

-----------------------------------------------------------------------

© Passle Ltd, 2014