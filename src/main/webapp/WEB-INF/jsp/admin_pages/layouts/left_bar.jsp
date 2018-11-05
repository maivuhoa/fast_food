<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<nav id="sidebar">
    <div id="main-menu">
        <ul class="sidebar-nav">
            <li>
                <a href="index.html"><i class="fa fa-dashboard"></i><span class="sidebar-text">Dashboard</span></a>
            </li>
            <li>
                <a href="#"><i class="fa fa-edit"></i><span class="sidebar-text">Products</span><span class="fa arrow"></span></a>
                <ul class="submenu collapse">
                    <li>
                        <a href="/admin/products"><span class="sidebar-text">All Products</span></a>
                    </li>
                    <li>
                        <a href="/admin/combo"><span class="sidebar-text">All Combo</span></a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="/admin/categories"><i class="glyph-icon flaticon-frontend"></i><span class="sidebar-text">Categories</span></a>
            </li>
        </ul>
    </div>
</nav>