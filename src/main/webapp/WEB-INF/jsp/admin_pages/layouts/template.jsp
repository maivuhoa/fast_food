<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js sidebar-large lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js sidebar-large lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js sidebar-large lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js sidebar-large"> <!--<![endif]-->

<head>
    <!-- BEGIN META SECTION -->
    <meta charset="utf-8">
    <title>Pixit - Responsive Boostrap3 Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta content="" name="description" />
    <meta content="themes-lab" name="author" />
    <link rel="shortcut icon" href="/public/admin_pages/img/favicon.png">
    <!-- END META SECTION -->
    <!-- BEGIN MANDATORY STYLE -->
    <link href="/public/admin_pages/css/icons/icons.min.css" rel="stylesheet">
    <link href="/public/admin_pages/css/bootstrap.min.css" rel="stylesheet">
    <link href="/public/admin_pages/css/plugins.css" rel="stylesheet">
    <link href="/public/admin_pages/css/style.min.css" rel="stylesheet">
    <link href="#" rel="stylesheet" id="theme-color">
    <!-- END  MANDATORY STYLE -->
    <!-- BEGIN PAGE LEVEL STYLE -->
    <tiles:insertAttribute name="level_style"></tiles:insertAttribute>
    <!-- END PAGE LEVEL STYLE -->
    <script src="/public/admin_pages/plugins/modernizr/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>

<body data-page="invoice">
<!-- BEGIN TOP MENU -->
<tiles:insertAttribute name="header"></tiles:insertAttribute>
<!-- END TOP MENU -->
<!-- BEGIN WRAPPER -->
<div id="wrapper">
    <!-- BEGIN MAIN SIDEBAR -->
    <tiles:insertAttribute name="left_bar"></tiles:insertAttribute>
    <!-- END MAIN SIDEBAR -->
    <!-- BEGIN MAIN CONTENT -->
    <tiles:insertAttribute name="content"></tiles:insertAttribute>
    <!-- END MAIN CONTENT -->
</div>
<!-- END WRAPPER -->
<!-- BEGIN CHAT MENU -->

<!-- END CHAT MENU -->
<!-- BEGIN MANDATORY SCRIPTS -->
<script src="/public/admin_pages/plugins/jquery-1.11.js"></script>
<script src="/public/admin_pages/plugins/jquery-migrate-1.2.1.js"></script>
<script src="/public/admin_pages/plugins/jquery-ui/jquery-ui-1.10.4.min.js"></script>
<script src="/public/admin_pages/plugins/jquery-mobile/jquery.mobile-1.4.2.js"></script>
<script src="/public/admin_pages/plugins/bootstrap/bootstrap.min.js"></script>
<script src="/public/admin_pages/plugins/bootstrap-dropdown/bootstrap-hover-dropdown.min.js"></script>
<script src="/public/admin_pages/plugins/bootstrap-select/bootstrap-select.js"></script>
<script src="/public/admin_pages/plugins/mcustom-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="/public/admin_pages/plugins/mmenu/js/jquery.mmenu.min.all.js"></script>
<script src="/public/admin_pages/plugins/nprogress/nprogress.js"></script>
<script src="/public/admin_pages/plugins/charts-sparkline/sparkline.min.js"></script>
<script src="/public/admin_pages/plugins/breakpoints/breakpoints.js"></script>
<script src="/public/admin_pages/plugins/numerator/jquery-numerator.js"></script>
<script src="/public/admin_pages/plugins/jquery.cookie.min.js" type="text/javascript"></script>
<!-- END MANDATORY SCRIPTS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<tiles:insertAttribute name="level_scripts"></tiles:insertAttribute>
<!-- END PAGE LEVEL SCRIPTS -->
<script src="/public/admin_pages/js/application.js"></script>
<script src="/public/admin_pages/js/custom.js"></script>
</body>
</html>
