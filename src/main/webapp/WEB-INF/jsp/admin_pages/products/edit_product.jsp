<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="main-content">
    <div class="page-title">
        <i class="icon-custom-left"></i>
        <h3><strong>Update Product</strong></h3>
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
                                <form id="edit-product" method="POST" action="/admin/products/${product.getIdProduct()}/edit" enctype="multipart/form-data" class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Product Name <span class="asterisk">*</span>
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" name="name" value="${product.getName()}" required>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Description <span class="asterisk">*</span>
                                        </label>
                                        <div class="col-sm-7">
                                            <textarea rows="6" name="description" class="form-control" placeholder="Description goes here..." required>${product.getDescription()}</textarea>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Categories <span class="asterisk">*</span></label>
                                        <div class="col-sm-7">
                                            <select name="category" class="form-control" title="Choose one category">
                                                <c:forEach var="category" items="${categories}">
                                                    <c:choose>
                                                        <c:when test="${category.getIdCategory() == product.getCategory().getIdCategory()}">
                                                            <option selected value="${category.getIdCategory()}">${category.getName()}</option>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <option value="${category.getIdCategory()}">${category.getName()}</option>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Price <span class="asterisk">*</span>
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="number" class="form-control" name="price" value="${product.getPrice()}" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Image
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="file" class="form-control" name="img">
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
            <a href="javascript:;" onclick="submitForm($('#edit-product'))" class="btn btn-success m-t-10"><i class="fa fa-check"></i> Save Changes</a>
        </div>
    </div>

</div>