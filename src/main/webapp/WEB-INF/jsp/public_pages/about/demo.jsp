

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_Head1"><meta name="viewport" content="width=device-width, initial-scale=1.0" /><meta http-equiv="Content-type" content="text/html;charset=UTF-8" /><title>
    Google Maps V3 API: Calculate distance between two addresses / points / locations
</title><meta http-equiv="Keywords" content="Mudassar,Mudassar Khan, Mudassar Ahmed Khan,asp.net articles,C#.NET Articles,ASP,ASP.NET,C#,VB,CSharp,C Sharp,dotnet,GridView,DropDownList,Visual Studio,AJAX,CSS, CSS3, JavaScript,JQuery,XML,Crystal Reports,SSIS,SSRS,DetailsView,winforms,windows forms,windows application,code samples,.net code examples,WCF tutorial,WebService tutorial,LINQ,,authoring,programming,learning,beginners guide,primer,lessons,school,howto,reference,free,examples,samples,source code,demos,tips,links,FAQ,tag list,forms,Crystal Reports,Reporting,RDLC Reports,ReportViewer,FaceBook,Twiiter,Google, Google Maps" /><meta http-equiv="Description" content="
ASP.NET,C#.NET,VB.NET,JQuery, Json,JavaScript,Gridview,SQL Server,Ajax,jQuery Plugins,jQuery UI,SSRS,RDLC,Crystal Reports,Reports,FaceBook, Twitter, Google, Google Maps, API, Windows Forms, Windows, WinForms, XML,HTML, CSS, CSS3, jQuery demos,code,snippets, examples, articles" /><link rel="alternate" type="application/rss+xml" title="Free ASP.Net Code Snippets, Tutorials, Articles, Technical Stuff, Tips, Solutions and much more. | ASP.Net, C#.Net, VB.Net, AJAX,JQuery, JavaScript, GridView,SQL Server, RDLC, SSRS, Crystal Reports, XML, JSON, FaceBook, Twitter, Google Maps examples" href="https://www.aspsnippets.com/Rss.ashx" /><link rel="icon" type="image/x-icon" href="https://aspsnippets.com/images/Metro/Blue/ASPSmall.png" /><meta content="Mudassar Ahmed Khan" name="author" /><meta content="index,follow" name="robots" /><meta content="index, follow" name="Googlebot" />


    <!--[if gt IE 8]>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css" media="screen" />
    <![endif]-->
    <!--[if !IE]><!-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css" media="screen" />
    <!--<![endif]-->
    <!--[if lt IE 9]>
    <link rel="stylesheet" href="/Demos/Bootstrap-3.0/css/bootstrap.min.css" media="screen" />
    <![endif]-->

    <link rel="stylesheet" href="https://www.aspsnippets.com/Demos/Bootstrap-3.0/css/override.css?15_12_2016" /><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css" media="screen" />
    <!--[if !IE]><!-->
    <link rel="stylesheet" href="https://www.aspsnippets.com/Demos/Bootstrap-3.0/media/Above_1024.css?06_05_2014" /><link rel="stylesheet" media="all and (max-width: 767px)" href="https://aspsnippets.com/Demos/Bootstrap-3.0/media/below_767.css" />
    <!--<![endif]-->
    <!--[if gt IE 8]>
    <link rel="stylesheet" href="https://aspsnippets.com/Demos/Bootstrap-3.0/media/Above_1024.css?06_05_2014" /><link rel="stylesheet" media="all and (max-width: 767px)" href="https://aspsnippets.com/Demos/Bootstrap-3.0/media/below_767.css" />
    <![endif]-->
    <!--[if lt IE 9]>
    <link rel="stylesheet" href="https://aspsnippets.com/Demos/Bootstrap-3.0/css/IE.css?06_05_2014" />
    <![endif]-->
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>

    <!--[if lt IE 9]>
    <script type="text/javascript"  src='https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js'></script>
    <![endif]-->
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.24/jquery-ui.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.24/themes/start/jquery-ui.css" type="text/css" /></head>
<body>

<script src='https://www.aspsnippets.com/scripts/min141.js?27_08_2018_897' type="text/javascript"></script>
<script>
    var GoogleEnabled = true;
    $(function () {
        LoadAds();
    });
</script>

<form method="post" action="./" id="aspnetForm">
    <div class="aspNetHidden">
        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTEwMDUyNjYzMjgPZBYCZg9kFgICBQ9kFhBmD2QWAmYPDxYGHgVXaWR0aBsAAAAAAMCGQAEAAAAeBkhlaWdodBsAAAAAAIBWQAEAAAAeBF8hU0ICgANkFgICAQ8WAh4EVGV4dAVpPGRpdiBkYXRhLXR5cGU9ImFkIiBkYXRhLXB1Ymxpc2hlcj0ibHFtLmFzcHNuaXBwZXRzLnNpdGUiIGRhdGEtem9uZT0icm9uIiBkYXRhLWZvcm1hdD0iNzI4eDkwIj4gICAgPC9kaXY+ZAIBD2QWAmYPDxYGHwAbAAAAAADAckABAAAAHwEbAAAAAABAb0ABAAAAHwICgANkFgICAQ8WAh8DBWo8ZGl2IGRhdGEtdHlwZT0iYWQiIGRhdGEtcHVibGlzaGVyPSJscW0uYXNwc25pcHBldHMuc2l0ZSIgZGF0YS16b25lPSJyb24iIGRhdGEtZm9ybWF0PSIzMDB4MjUwIj4gICAgPC9kaXY+ZAIDD2QWAmYPDxYGHwAbAAAAAADAckABAAAAHwEbAAAAAABAb0ABAAAAHwICgANkFgICAQ8WAh8DBWo8ZGl2IGRhdGEtdHlwZT0iYWQiIGRhdGEtcHVibGlzaGVyPSJscW0uYXNwc25pcHBldHMuc2l0ZSIgZGF0YS16b25lPSJyb24iIGRhdGEtZm9ybWF0PSIzMDB4MjUwIj4gICAgPC9kaXY+ZAIFD2QWAmYPDxYGHwAbAAAAAADAckABAAAAHwEbAAAAAABAb0ABAAAAHwICgANkFgICAQ8WAh8DBWo8ZGl2IGRhdGEtdHlwZT0iYWQiIGRhdGEtcHVibGlzaGVyPSJscW0uYXNwc25pcHBldHMuc2l0ZSIgZGF0YS16b25lPSJyb24iIGRhdGEtZm9ybWF0PSIzMDB4MjUwIj4gICAgPC9kaXY+ZAIHD2QWAmYPDxYGHwAbAAAAAADAckABAAAAHwEbAAAAAABAb0ABAAAAHwICgANkFgICAQ8WAh8DBWo8ZGl2IGRhdGEtdHlwZT0iYWQiIGRhdGEtcHVibGlzaGVyPSJscW0uYXNwc25pcHBldHMuc2l0ZSIgZGF0YS16b25lPSJyb24iIGRhdGEtZm9ybWF0PSIzMDB4MjUwIj4gICAgPC9kaXY+ZAIID2QWAmYPDxYGHwAbAAAAAADAckABAAAAHwEbAAAAAABAb0ABAAAAHwICgANkFgICAQ8WAh8DBWo8ZGl2IGRhdGEtdHlwZT0iYWQiIGRhdGEtcHVibGlzaGVyPSJscW0uYXNwc25pcHBldHMuc2l0ZSIgZGF0YS16b25lPSJyb24iIGRhdGEtZm9ybWF0PSIzMDB4MjUwIj4gICAgPC9kaXY+ZAIJD2QWAmYPDxYGHwAbAAAAAADAckABAAAAHwEbAAAAAABAb0ABAAAAHwICgANkFgICAQ8WAh8DBWo8ZGl2IGRhdGEtdHlwZT0iYWQiIGRhdGEtcHVibGlzaGVyPSJscW0uYXNwc25pcHBldHMuc2l0ZSIgZGF0YS16b25lPSJyb24iIGRhdGEtZm9ybWF0PSIzMDB4MjUwIj4gICAgPC9kaXY+ZAILD2QWAmYPDxYGHwAbAAAAAADAckABAAAAHwEbAAAAAABAb0ABAAAAHwICgANkFgICAQ8WAh8DBWo8ZGl2IGRhdGEtdHlwZT0iYWQiIGRhdGEtcHVibGlzaGVyPSJscW0uYXNwc25pcHBldHMuc2l0ZSIgZGF0YS16b25lPSJyb24iIGRhdGEtZm9ybWF0PSIzMDB4MjUwIj4gICAgPC9kaXY+ZGS7R6LzfLIk5TGwNFs13oFj57eUUAd+Erh5hXsE5MH77w==" />
    </div>

    <div class="aspNetHidden">

        <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="85C254F3" />
        <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAP/Y5c08JsDz794Nqyjm3o/Xp3EpotYos6+5gcyVY5/3GdtDurTrKyn5xR0AhrIXm8WNtXv2hIDMHK4ArVburQ80H1tctleXNWPciix9nWOMw==" />
    </div>
    <script type="text/javascript">
        $(function () {
            Load();
            BindHoverMenu("lnkCategories", "ulCategoryMenu");
        });
    </script>
    <div class="page-header-wrap">
        <div class="page-header">
            <div class="logo">
                <div class="heading-sep hidden-xs">
                </div>
                <a href="https://www.aspsnippets.com/" target="_blank">
                    <img src='https://www.aspsnippets.com/images/Metro/blue/ASP.png' alt="ASP" class="asp" />
                    <img src='https://www.aspsnippets.com/images/Metro/blue/Logo.png' alt="ASP Snippets"
                         class="aspsnippets" />
                </a>
            </div>
            <div class="leaderboard_ad hidden-xs">

                <div id="ctl00_ucAds1_adContainer" style="height:90px;width:728px;clear: both">

                    <div data-type="ad" data-publisher="lqm.aspsnippets.site" data-zone="ron" data-format="728x90">    </div>


                    <script type='text/javascript'>
                        function HideIFrame() {
                            window.onload = function () {
                                try {
                                    var dvArticleTextAd = window.parent.document.getElementById('dvArticleTextAd');
                                    window.parent.document.getElementById('dvArticleTextAd').style.display = "none";
                                    dvArticleTextAd.removeChild(dvArticleTextAd.getElementsByTagName("IFRAME")[0]);
                                } catch (e) {
                                }
                            }
                        }
                    </script>

                </div>

            </div>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar">
                </span>
            </button>
        </div>
        <div class="navbar-wrapper">
            <div class="navbar-header">
            </div>
            <div class="navbar-collapse collapse navbar-responsive-collapse">
                <div class="row">
                    <div class="visible-xs">
                        <ul class="nav navbar-nav-mobile" style="height: 571px;">
                            <li class=""><a href="/Home.aspx">
                                Home</a></li>
                            <li><a href="https://www.aspforums.net/" target="_blank">
                                Forums</a></li>
                            <li class=""><a href="/Contact.aspx">
                                Contact</a></li>
                            <li>
                                <div class="visible-xs" style="width: 100%; padding: 15px 10px; float: left">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <input id="txtSearch" type="text" value="" class="search-field form-control col-xs-8" placeholder="Eg. Send Email ASP.Net">
                                        </div>
                                        <div class="col-md-12">
                                            <button type="submit" class="search-submit btn btn-red" onclick="return Search()">
                                                <span class="fa fa-search fa-fw" style="font-size: inherit"></span>
                                                Search</button>
                                        </div>
                                    </div>
                                </div>
                            </li>

                        </ul>
                    </div>
                    <div class="media hidden-xs" style="background: #fff; border-bottom: 1px solid #ddd;
                        border-top: 1px solid #ddd;">
                        <div class="pull-left">
                            <div id="site-nav" class=" col-md-7 site-nav-with-admin  col-last col-xs-12 hidden-xs">
                                <ul class="nav navbar-nav">
                                    <li class=""><a href="/Home.aspx"><span class="fa fa-home fa-fw"></span>Home</a></li>
                                    <li class="dropdown  hidden-xs"><a id="lnkCategories" class="dropdown-toggle" href="#">
                                        Categories <i class="sub-indicator fa fa-chevron-circle-down fa-fw text-muted"></i>
                                        <b class="caret" style="display: none"></b></a>
                                        <ul class="dropdown-menu menu" id="ulCategoryMenu">
                                            <li class="grid-demo" style="padding: 5px">
                                                <div class="row">
                                                    <div class="col-md-12">

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/ASP.Net.aspx">
                                                                ASP.Net</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/C.Net.aspx">
                                                                C#.Net</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/JavaScript.aspx">
                                                                JavaScript</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/ADO.Net.aspx">
                                                                ADO.Net</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Excel.aspx">
                                                                Excel</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/AJAX.aspx">
                                                                AJAX</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/VB.Net.aspx">
                                                                VB.Net</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/SQL-Server.aspx">
                                                                SQL Server</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/GridView.aspx">
                                                                GridView</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Issues-and-Exceptions.aspx">
                                                                Issues and Exceptions</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Silverlight.aspx">
                                                                Silverlight</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Rich-Text-Editor.aspx">
                                                                Rich Text Editor</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/jQuery.aspx">
                                                                jQuery</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/DataList.aspx">
                                                                DataList</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Snippets.aspx">
                                                                Snippets</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/XML.aspx">
                                                                XML</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/New-Features.aspx">
                                                                New Features</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/.Net-4.0.aspx">
                                                                .Net 4.0</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/TreeView.aspx">
                                                                TreeView</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/AJAX-Control-Toolkit.aspx">
                                                                AJAX Control Toolkit</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/jQuery-Plugins.aspx">
                                                                jQuery Plugins</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Third-Party-Controls.aspx">
                                                                Third Party Controls</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/ASP.Net-Validators.aspx">
                                                                ASP.Net Validators</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/WCF.aspx">
                                                                WCF</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Repeater.aspx">
                                                                Repeater</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Regular-Expressions.aspx">
                                                                Regular Expressions</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Yahoo-API.aspx">
                                                                Yahoo API</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/iTextSharp.aspx">
                                                                iTextSharp</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/FaceBook.aspx">
                                                                FaceBook</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Charts.aspx">
                                                                Charts</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/ListView.aspx">
                                                                ListView</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Tweeter.aspx">
                                                                Tweeter</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Google.aspx">
                                                                Google</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/CSS.aspx">
                                                                CSS</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/SMS.aspx">
                                                                SMS</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/DotNetZip.aspx">
                                                                DotNetZip</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Crystal-Reports.aspx">
                                                                Crystal Reports</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Entity-Framework.aspx">
                                                                Entity Framework</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/HyperLink.aspx">
                                                                HyperLink</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/RDLC-Report.aspx">
                                                                RDLC Report</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/SqlDataSource.aspx">
                                                                SqlDataSource</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Menu.aspx">
                                                                Menu</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/YouTube.aspx">
                                                                YouTube</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Twitter.aspx">
                                                                Twitter</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/HTML.aspx">
                                                                HTML</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/XmlDataSource.aspx">
                                                                XmlDataSource</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/ListBox.aspx">
                                                                ListBox</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Tips.aspx">
                                                                Tips</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/DataGridView.aspx">
                                                                DataGridView</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Cryptography.aspx">
                                                                Cryptography</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Windows-Forms.aspx">
                                                                Windows Forms</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/LinkedIn.aspx">
                                                                LinkedIn</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/WebUserControl.aspx">
                                                                WebUserControl</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/RSS-Feeds.aspx">
                                                                RSS Feeds</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/HTML5.aspx">
                                                                HTML5</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Sitemap.aspx">
                                                                Sitemap</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/IIS.aspx">
                                                                IIS</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/LINQ.aspx">
                                                                LINQ</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/DataPager.aspx">
                                                                DataPager</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/URL-Routing.aspx">
                                                                URL Routing</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/SqlBulkCopy.aspx">
                                                                SqlBulkCopy</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/OCR.aspx">
                                                                OCR</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/ASPNet-45.aspx">
                                                                ASP.Net 4.5</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Master-Pages.aspx">
                                                                Master Pages</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/MySQL.aspx">
                                                                MySQL</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/CSV.aspx">
                                                                CSV</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Stored-Procedures.aspx">
                                                                Stored Procedures</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/JSON.aspx">
                                                                JSON</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Web-Services.aspx">
                                                                Web Services</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Bootstrap.aspx">
                                                                Bootstrap</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Windows-Service.aspx">
                                                                Windows Service</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/DataTable.aspx">
                                                                DataTable</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/AppConfig.aspx">
                                                                App.Config</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Visual-Studio.aspx">
                                                                Visual Studio</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/RadioButton.aspx">
                                                                RadioButton</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/CheckBox.aspx">
                                                                CheckBox</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Generic-Handler.aspx">
                                                                Generic Handler</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/DropDownList.aspx">
                                                                DropDownList</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/FileUpload.aspx">
                                                                FileUpload</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/RadioButtonList.aspx">
                                                                RadioButtonList</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/CheckBoxList.aspx">
                                                                CheckBoxList</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Flash.aspx">
                                                                Flash</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/HtmlEditorExtender.aspx">
                                                                HtmlEditorExtender</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Div.aspx">
                                                                Div</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Table.aspx">
                                                                Table</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/AngularJS.aspx">
                                                                AngularJS</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/DataReader.aspx">
                                                                DataReader</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/DataSet.aspx">
                                                                DataSet</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Console-Applications.aspx">
                                                                Console Applications</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/FTP.aspx">
                                                                FTP</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/DetailsView.aspx">
                                                                DetailsView</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Password-TextBox.aspx">
                                                                Password TextBox</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Enum.aspx">
                                                                Enum</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/ComboBox.aspx">
                                                                ComboBox</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Sponsored.aspx">
                                                                Sponsored</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/SqlDataAdapter.aspx">
                                                                SqlDataAdapter</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/OpenXml.aspx">
                                                                OpenXml</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/ClosedXml.aspx">
                                                                ClosedXml</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/SiteMapPath.aspx">
                                                                SiteMapPath</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link" href="/Categories/Arrays.aspx">
                                                                Arrays</a>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <a class="btn btn-xs btn-link last" href="/Categories/FormView.aspx">
                                                                FormView</a>
                                                        </div>

                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="//www.aspforums.net/Forums/" target="_blank" rel="nofollow">Forums</a></li>
                                    <li class=""><a href="/Contact.aspx">Contact</a></li>
                                    <li style="overflow: hidden"></li>
                                </ul>
                            </div>
                        </div>
                        <div class="media-body">
                            <div class="media">
                                <div class="pull-right" style="padding-right: 10px; margin-left: 5px;">
                                    <button type="button" class="search-submit btn btn-red btn-sm pull-right" style="padding: 5px 10px;
                                        margin: 4px 0" onclick="return Search()">
                                        <span class="fa fa-search fa-fw" style="font-size: inherit;"></span>Search</button>
                                </div>
                                <div class="media-body">
                                    <input id="txtSearch" type="text" value="" class="search-field form-control pull-right col-last"
                                           placeholder="Eg. Send Email ASP.Net" style="margin-top: 4px; height: 30px; background-color: #ddd;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.nav-collapse -->
        <!-- /.container -->
        <div id="dvMenu" style="display: none; position: absolute; left: 0px; top: 0px; z-index: 10000;">
        </div>
    </div>

    <div id="main" class="site-main clearfix">
        <div class="content-area">
            <div class="row">
                <div class="col-xs-18 col-md-12">

                    <div class="section-title">
                        <div class="icon">
                            <span class="fa fa-desktop fa-fw" style="padding-top: 2px;"></span>
                        </div>
                        <div class="title pull-left">
                            Demo
                        </div>

                        <div class="pull-right hidden-xs social-wrap" align="right">
                            <div class="visible-xs">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <iframe src="//www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2Fpages%2FASPSnippets%2F306994206006035&amp;width=50&amp;layout=button&amp;action=like&amp;show_faces=false&amp;share=false&amp;height=35&amp;appId=1449212552011175"
                                                scrolling="no" frameborder="0" style="border: none; overflow: hidden; width: 50px;
                                                    height: 35px;" allowtransparency="true"></iframe>
                                    </div>
                                    <div class="col-xs-8">
                                        <a href="https://twitter.com/ASPSnippets" class="twitter-follow-button" data-show-count="false"
                                           data-size="small">Follow @ASPSnippets</a>
                                        <script>
                                            !function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https'; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = p + '://platform.twitter.com/widgets.js'; fjs.parentNode.insertBefore(js, fjs); } } (document, 'script', 'twitter-wjs');</script>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-5">
                                        <!-- Place this tag in your head or just before your close body tag. -->
                                        <script src="https://apis.google.com/js/platform.js" async defer></script>
                                        <!-- Place this tag where you want the widget to render. -->
                                        <div class="g-follow" data-annotation="none" data-height="20" data-href="//plus.google.com/u/0/110371172807820981480"
                                             data-rel="publisher">
                                        </div>
                                    </div>
                                    <div class="col-xs-3">
                                        <a href="/Rss.ashx" target="_blank" class="SocialLink rss" data-container="body" data-toggle="popover"
                                           data-placement="top" data-content="Subscribe to RSS feed."><span
                                                class="fa fa-rss-square fa-fw"></span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="hidden-xs">
                                <div class="SocialButtonWrap">
                                    <iframe src="//www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2Fpages%2FASPSnippets%2F306994206006035&amp;width=150&amp;layout=button_count&amp;action=like&amp;show_faces=true&amp;share=false&amp;height=21&amp;appId=1449212552011175"
                                            scrolling="no" frameborder="0" style="border: none; overflow: hidden; width: 90px;
                                                height: 22px; position: relative; top: 4px;" allowtransparency="true"></iframe>
                                </div>
                                <div class="SocialButtonWrap">
                                    <a href="https://twitter.com/ASPSnippets" class="twitter-follow-button" data-show-count="false"
                                       data-size="large">Follow @ASPSnippets</a>
                                    <script>
                                        !function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https'; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = p + '://platform.twitter.com/widgets.js'; fjs.parentNode.insertBefore(js, fjs); } } (document, 'script', 'twitter-wjs');</script>
                                </div>
                                <div class="SocialButtonWrap" style="position: relative; top: 3px;">
                                    <!-- Place this tag in your head or just before your close body tag. -->
                                    <script src="https://apis.google.com/js/platform.js" async defer></script>
                                    <!-- Place this tag where you want the widget to render. -->
                                    <div class="g-follow" data-annotation="bubble" data-height="24" data-href="//plus.google.com/u/0/110371172807820981480"
                                         data-rel="publisher">
                                    </div>
                                </div>
                                <div class="SocialButtonWrap" style="position: relative; top: 4px;">
                                    <a href="/Rss.ashx" target="_blank" class="SocialLink rss" data-container="body" data-toggle="popover"
                                       data-placement="top" data-content="Subscribe to RSS feed."><span
                                            class="fa fa-rss-square fa-fw"></span></a>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="heading-sep heading-sep-15">
                    </div>
                    <div class="media" style="margin-top: 0;">

                        <div class="pull-right hidden-xs">

                            <div id="ctl00_ucRightAds1_adContainer" style="height:250px;width:300px;clear: both">

                                <div data-type="ad" data-publisher="lqm.aspsnippets.site" data-zone="ron" data-format="300x250">    </div>


                                <script type='text/javascript'>
                                    function HideIFrame() {
                                        window.onload = function () {
                                            try {
                                                var dvArticleTextAd = window.parent.document.getElementById('dvArticleTextAd');
                                                window.parent.document.getElementById('dvArticleTextAd').style.display = "none";
                                                dvArticleTextAd.removeChild(dvArticleTextAd.getElementsByTagName("IFRAME")[0]);
                                            } catch (e) {
                                            }
                                        }
                                    }
                                </script>

                            </div>

                            <div id="ctl00_Ad1Gap" class="heading-sep">
                            </div>
                            <div id="ctl00_ucRightAds2_adContainer" style="height:250px;width:300px;clear: both">

                                <div data-type="ad" data-publisher="lqm.aspsnippets.site" data-zone="ron" data-format="300x250">    </div>


                                <script type='text/javascript'>
                                    function HideIFrame() {
                                        window.onload = function () {
                                            try {
                                                var dvArticleTextAd = window.parent.document.getElementById('dvArticleTextAd');
                                                window.parent.document.getElementById('dvArticleTextAd').style.display = "none";
                                                dvArticleTextAd.removeChild(dvArticleTextAd.getElementsByTagName("IFRAME")[0]);
                                            } catch (e) {
                                            }
                                        }
                                    }
                                </script>

                            </div>

                            <div id="ctl00_Ad2Gap" class="heading-sep">
                            </div>
                            <div id="ctl00_ucRightAds3_adContainer" style="height:250px;width:300px;clear: both">

                                <div data-type="ad" data-publisher="lqm.aspsnippets.site" data-zone="ron" data-format="300x250">    </div>


                                <script type='text/javascript'>
                                    function HideIFrame() {
                                        window.onload = function () {
                                            try {
                                                var dvArticleTextAd = window.parent.document.getElementById('dvArticleTextAd');
                                                window.parent.document.getElementById('dvArticleTextAd').style.display = "none";
                                                dvArticleTextAd.removeChild(dvArticleTextAd.getElementsByTagName("IFRAME")[0]);
                                            } catch (e) {
                                            }
                                        }
                                    }
                                </script>

                            </div>

                            <div id="ctl00_Ad3Gap" class="heading-sep">
                            </div>
                            <div id="ctl00_ucRightAds4_adContainer" style="height:250px;width:300px;clear: both">

                                <div data-type="ad" data-publisher="lqm.aspsnippets.site" data-zone="ron" data-format="300x250">    </div>


                                <script type='text/javascript'>
                                    function HideIFrame() {
                                        window.onload = function () {
                                            try {
                                                var dvArticleTextAd = window.parent.document.getElementById('dvArticleTextAd');
                                                window.parent.document.getElementById('dvArticleTextAd').style.display = "none";
                                                dvArticleTextAd.removeChild(dvArticleTextAd.getElementsByTagName("IFRAME")[0]);
                                            } catch (e) {
                                            }
                                        }
                                    }
                                </script>

                            </div>

                        </div>

                        <div class="media-body">
                            <div class="visible-xs">
                                <div id="ctl00_Ads1_adContainer" style="height:250px;width:300px;clear: both">

                                    <div data-type="ad" data-publisher="lqm.aspsnippets.site" data-zone="ron" data-format="300x250">    </div>


                                    <script type='text/javascript'>
                                        function HideIFrame() {
                                            window.onload = function () {
                                                try {
                                                    var dvArticleTextAd = window.parent.document.getElementById('dvArticleTextAd');
                                                    window.parent.document.getElementById('dvArticleTextAd').style.display = "none";
                                                    dvArticleTextAd.removeChild(dvArticleTextAd.getElementsByTagName("IFRAME")[0]);
                                                } catch (e) {
                                                }
                                            }
                                        }
                                    </script>

                                </div>

                                <div class="heading-sep">
                                </div>
                            </div>
                            <div class="visible-xs">
                                <div id="ctl00_Ads3_adContainer" style="height:250px;width:300px;clear: both">

                                    <div data-type="ad" data-publisher="lqm.aspsnippets.site" data-zone="ron" data-format="300x250">    </div>


                                    <script type='text/javascript'>
                                        function HideIFrame() {
                                            window.onload = function () {
                                                try {
                                                    var dvArticleTextAd = window.parent.document.getElementById('dvArticleTextAd');
                                                    window.parent.document.getElementById('dvArticleTextAd').style.display = "none";
                                                    dvArticleTextAd.removeChild(dvArticleTextAd.getElementsByTagName("IFRAME")[0]);
                                                } catch (e) {
                                                }
                                            }
                                        }
                                    </script>

                                </div>

                                <div class="heading-sep">
                                </div>
                            </div>

                            <a class="title" href="javascript:history.back();">Google Maps V3: Calculate Distance, Travel Duration, draw (plot) Route and display Directions between two locations</a>
                            <hr />
                            <script type="text/javascript" src="//maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>
                            <script type="text/javascript">
                                var source, destination;
                                var directionsDisplay;
                                var directionsService = new google.maps.DirectionsService();
                                google.maps.event.addDomListener(window, 'load', function () {
                                    new google.maps.places.SearchBox(document.getElementById('txtSource'));
                                    new google.maps.places.SearchBox(document.getElementById('txtDestination'));
                                    directionsDisplay = new google.maps.DirectionsRenderer({ 'draggable': true });
                                });

                                function GetRoute() {
                                    var mumbai = new google.maps.LatLng(18.9750, 72.8258);
                                    var mapOptions = {
                                        zoom: 7,
                                        center: mumbai
                                    };
                                    map = new google.maps.Map(document.getElementById('dvMap'), mapOptions);
                                    directionsDisplay.setMap(map);
                                    directionsDisplay.setPanel(document.getElementById('dvPanel'));

                                    //*********DIRECTIONS AND ROUTE**********************//
                                    source = document.getElementById("txtSource").value;
                                    destination = document.getElementById("txtDestination").value;

                                    var request = {
                                        origin: source,
                                        destination: destination,
                                        travelMode: google.maps.TravelMode.DRIVING
                                    };
                                    directionsService.route(request, function (response, status) {
                                        if (status == google.maps.DirectionsStatus.OK) {
                                            directionsDisplay.setDirections(response);
                                        }
                                    });

                                    //*********DISTANCE AND DURATION**********************//
                                    var service = new google.maps.DistanceMatrixService();
                                    service.getDistanceMatrix({
                                        origins: [source],
                                        destinations: [destination],
                                        travelMode: google.maps.TravelMode.DRIVING,
                                        unitSystem: google.maps.UnitSystem.METRIC,
                                        avoidHighways: false,
                                        avoidTolls: false
                                    }, function (response, status) {
                                        if (status == google.maps.DistanceMatrixStatus.OK && response.rows[0].elements[0].status != "ZERO_RESULTS") {
                                            var distance = response.rows[0].elements[0].distance.text;
                                            var duration = response.rows[0].elements[0].duration.text;
                                            var dvDistance = document.getElementById("dvDistance");
                                            dvDistance.innerHTML = "";
                                            dvDistance.innerHTML += "Distance: " + distance + "<br />";
                                            dvDistance.innerHTML += "Duration:" + duration;

                                        } else {
                                            alert("Unable to find the distance via road.");
                                        }
                                    });
                                }
                            </script>
                            <div class = "NoTable">
                                <table border="0" cellpadding="0" cellspacing="3">
                                    <tr>
                                        <td colspan="2">
                                            Source:
                                            <input type="text" id="txtSource" value="" style="width: 250px" />
                                            &nbsp;&nbsp; Destination:
                                            <input type="text" id="txtDestination" value="" style="width: 250px" />
                                            <br />
                                            <br />
                                            <input type="button" value="Get Route" onclick="GetRoute()" />
                                            <hr />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div id="dvDistance">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div id="dvMap" style="width: 500px; height: 500px">
                                            </div>
                                        </td>
                                        <td>
                                            <div id="dvPanel" style="width: 500px; height: 500px;overflow-y:auto">
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>

                            <div class="heading-sep">
                            </div>
                            <div class="visible-xs">
                                <div id="ctl00_Ads2_adContainer" style="height:250px;width:300px;clear: both">

                                    <div data-type="ad" data-publisher="lqm.aspsnippets.site" data-zone="ron" data-format="300x250">    </div>


                                    <script type='text/javascript'>
                                        function HideIFrame() {
                                            window.onload = function () {
                                                try {
                                                    var dvArticleTextAd = window.parent.document.getElementById('dvArticleTextAd');
                                                    window.parent.document.getElementById('dvArticleTextAd').style.display = "none";
                                                    dvArticleTextAd.removeChild(dvArticleTextAd.getElementsByTagName("IFRAME")[0]);
                                                } catch (e) {
                                                }
                                            }
                                        }
                                    </script>

                                </div>

                                <div class="heading-sep">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="heading-sep">
    </div>
    <div class="row page-footer">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-8 well" align="left" style="padding-left: 40px;">
                    ©
                    2018
                    <a href="//www.aspsnippets.com/">www.aspsnippets.com</a>
                    All rights reserved | <a href="//aspsnippets.com/PrivacyPolicy.aspx">Privacy Policy</a>
                    | Powered by <a href="//www.excelasoft.com/">Excelasoft Solutions</a>
                    <img src="//www.aspsnippets.com/images/excelasoft.png" class="excelasoft-img" alt="Excelasoft Solutions">
                </div>
                <div class="col-md-4" align="right" style="font-size: 30px;">
                    <a href="//www.facebook.com/pages/ASPSnippets/306994206006035" target="_blank">
                        <span class="fa fa-facebook-square fa-fw"></span></a><a href="https://plus.google.com/110371172807820981480"
                                                                                target="_blank"><span class="fa fa-google-plus-square fa-fw"></span></a>
                    <a href="https://twitter.com/aspsnippets" target="_blank"><span class="fa fa-twitter-square fa-fw">
                    </span></a><a href='/Rss.ashx' target="_blank"><span class="fa fa-rss-square fa-fw"></span>
                </a>
                </div>
            </div>
        </div>
    </div>
    <input type="hidden" name="IsPostBack" id="IsPostBack" value="false" />
    <input type="hidden" name="PostbackControl" id="PostbackControl" value="" />
    <div class="menu-modal" style="display: none">
    </div>
    <input type="hidden" name="ctl00$hfArticleTitle" id="ctl00_hfArticleTitle" value="Google Maps V3 API: Calculate distance between two addresses / points / locations" />
    <input type="hidden" name="ctl00$hfArticleUrl" id="ctl00_hfArticleUrl" value="http://www.aspsnippets.com/Articles/Google-Maps-V3-API-Calculate-distance-between-two-addresses-points-locations.aspx" />
</form>

<script type="text/javascript">
    var SearchUrl = "/Search.aspx"; </script>
<script type="text/javascript">
    <!--
    var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
    //-->
</script>
<script type="text/javascript">
    <!--
    try {
        var pageTracker = _gat._getTracker("UA-7533693-1");
        pageTracker._trackPageview();
    } catch (err) { }
    //-->
</script>


<!-- AddThis Button END -->
<!-- DeveloperMedia BEGIN -->

<style type ="text/css">.leaderboard_ad, .leaderboard_ad .dvAdContainer{background-color:#0090CB !important}</style>
<script type="text/javascript">
    var Browser = "Other";
    function CheckBrowser() {
        if (!!navigator.userAgent.match(/Trident\/7\./) && navigator.userAgent.indexOf("Edge") == -1) {
            Browser = "IE";
            return;
        }
        if (navigator.userAgent.indexOf("Edge") != -1) {
            Browser = "Edge";
            return;
        }
    };
    //CheckBrowser();
</script>
<script type="text/javascript">
    function _dmBootstrap(file) {
        var _dma = document.createElement('script');
        _dma.type = 'text/javascript';
        _dma.async = true;
        _dma.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + file;
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(_dma);
    }
    function _dmFollowup(file) {  if (typeof DMAds === 'undefined') _dmBootstrap('cdn2.DeveloperMedia.com/a.min.js'); }
    (function () {  _dmBootstrap('cdn1.DeveloperMedia.com/a.min.js'); setTimeout(_dmFollowup, 2000); } )();
</script>
<!-- DeveloperMedia END -->
<!-- SetTitleFromSlug BEGIN -->
<script type="text/javascript">
    $(function () {
        if (!$(".visible-xs").is(":visible")) {
            $(".visible-xs").remove();
        }
        else {
            $(".hidden-xs").remove();
        }

        if ($("[id*=hfArticleTitle]").val() != "") {
            document.title = $("[id*=hfArticleTitle]").val();
            $(".title").not(".section-title .title").html($("[id*=hfArticleTitle]").val());
        }
        if ($("[id*=hfArticleUrl]").val() != "") {
            $(".title").not(".section-title .title").attr("href", $("[id*=hfArticleUrl]").val());
        }
    });
    $(".navbar-toggle").on("click", function () {
        $(".navbar-nav-mobile").css("height", $(window).height() - 55 + "px");
        if ($(".navbar-collapse").hasClass("in")) {
            $(".navbar-wrapper").animate({ left: "100%" }, 350, function () {
                $(".menu-modal").hide();
                $(".navbar-collapse").removeClass("in");
            });
        }
        else {
            $(".navbar-collapse").addClass("in");
            $(".menu-modal").show();
            $(".navbar-wrapper").animate({ left: "30%" }, 350);
        }
    });
</script>
<!-- SetTitleFromSlug END -->

</body>
</html>
