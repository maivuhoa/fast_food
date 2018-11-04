<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<div id="main-content">
    <div class="page-title">
        <i class="icon-custom-left"></i>
        <h3><strong>Create Category</strong></h3>
        <br>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tabcordion">
                <ul id="myTab" class="nav nav-tabs">
                    <li class="active"><a href="#product_general" data-toggle="tab">General</a></li>
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade active in" id="product_general">
                        <div class="row">
                            <div class="col-md-12">
                                <c:if test="${error != null}">
                                    <div class="alert alert-danger" style="width:100%; margin-top:18px;">
                                        <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
                                        <strong>Error!</strong> ${error}.
                                    </div>
                                </c:if>
                                <form id="new-category" action="/admin/categories/new" enctype="multipart/form-data" method="POST" class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Category Name <span class="asterisk">*</span>
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" name="name" value="${category.getName()}" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Image <span class="asterisk">*</span>
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="file" class="form-control" name="img" required>
                                        </div>
                                    </div>
                                    <input type="submit" id="submit" style="display: none">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 m-t-20 m-b-40 align-center">
            <a href="" class="btn btn-danger m-r-10 m-t-10"><i class="fa fa-times"></i> Delete Product</a>
            <a href="javascript:void(0)" onclick="submitForm($('#new-category'))" class="btn btn-success m-t-10"><i class="fa fa-check"></i> Save changes</a>
        </div>
    </div>

</div>