<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="vn">
<head>
    <tiles:insertAttribute name="meta_description"></tiles:insertAttribute>
    <link href="/public/public_pages/templates/css/style.css?v=1.2.5" rel="stylesheet"/>
    <link href="/public/public_pages/templates/css/main.css?v=1.2.5" rel="stylesheet"/>
    <link type="text/css" rel="stylesheet" href="/public/public_pages/templates/js/jscrollpane/jquery.jscrollpane.css"/>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="/public/public_pages/templates/js/jquery.min.js"></script>
    <script src="/public/public_pages/templates/js/modernizr.js"></script>
    <script src="/public/public_pages/templates/js/jquery.browser.js"></script>
    <script src="/public/public_pages/templates/js/smoothscroll.js"></script>
    <script src="/public/public_pages/templates/js/bootstrap.min.js"></script>
    <script src="/public/public_pages/templates/js/bootstrap-select.min.js"></script>
    <script src="/public/public_pages/templates/fancybox/jquery.fancybox.min.js"></script>
    <script src="/public/public_pages/templates/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="/public/public_pages/templates/owlcarousel/owl.carousel.min.js"></script>
    <script src="/public/public_pages/templates/js/equalheight.js"></script>
    <!--Coding add-->
    <script src="/public/public_pages/templates/js/jquery.validate.min.js"></script>
    <script src="/public/public_pages/templates/js/jquery.validate.bootstrap.popover.min.js"></script>
    <script type="text/javascript" src="/public/public_pages/templates/js/jscrollpane/jquery.jscrollpane.min.js"></script>
    <!--DateTimePicker Jquery-->
    <link rel="stylesheet" type="text/css" href="/public/public_pages/templates/datetimepicker/jquery.datetimepicker.css"/>
    <script src="/public/public_pages/templates/datetimepicker/jquery.datetimepicker.full.js"></script>

</head>
<body>
<div id="loader" style="display: none;"></div>
<tiles:insertAttribute name="header"></tiles:insertAttribute>
<tiles:insertAttribute name="content"></tiles:insertAttribute>

<tiles:insertAttribute name="footer"></tiles:insertAttribute>


<script src="/public/public_pages/templates/js/message/vn/message.js?v=1.2.5"></script>
<script src="/public/public_pages/templates/js/script.js?v=1.2.5"></script>
<script src="/public/public_pages/templates/js/init.js?v=1.2.5"></script>
<script src="/public/public_pages/templates/js/nhahang.js?v=1.2.5"></script>

<a class="scroll-top"></a>
</body>
</html>