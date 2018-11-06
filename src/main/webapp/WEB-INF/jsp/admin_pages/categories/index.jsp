<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<div id="main-content">
    <div class="m-b-20 clearfix">
        <div class="page-title pull-left">
            <h3 class="pull-left"><strong>Manage Categories</strong></h3>
        </div>
        <div class="pull-right">
            <a href="/admin/categories/new" class="btn btn-success m-t-10"><i class="fa fa-plus p-r-10"></i> Add a category</a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12 table-responsive table-red filter-right">
                            <c:if test="${success != null}">
                                <div class="alert alert-success" style="width:100%; margin-top:18px;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
                                    <strong>Success!</strong> ${success}.
                                </div>
                            </c:if>
                            <c:if test="${error != null}">
                                <div class="alert alert-danger" style="width:100%; margin-top:18px;">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
                                    <strong>Error!</strong> ${error}.
                                </div>
                            </c:if>
                            <table class="table table-tools table-hover">
                                <thead>
                                    <tr>
                                        <th style="min-width:70px"><strong>ID</strong></th>
                                        <th><strong>Category</strong></th>
                                        <th><strong>Image</strong></th>
                                        <th><strong>Date added</strong></th>
                                        <th class="text-center"><strong>Actions</strong></th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="category" items="${categories}">
                                    <tr>
                                        <td>${category.getIdCategory()}</td>
                                        <td>${category.getName()}</td>
                                        <td><img width="200" height="150" src="${pageContext.request.contextPath}/public/public_pages/uploads/images/${category.getImage()}"></td>
                                        <td>${category.getCreateAt()}</td>
                                        <td class="text-center ">
                                            <a href="/admin/categories/${category.getIdCategory()}/edit" class="edit btn btn-sm btn-default"><i class="fa fa-pencil"></i> Edit</a>
                                            <a href="/admin/categories/${category.getIdCategory()}/delete" onclick="return confirm('Bạn có muốn xóa?')" class="delete btn btn-sm btn-default"><i class="fa fa-times-circle"></i> Remove</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>