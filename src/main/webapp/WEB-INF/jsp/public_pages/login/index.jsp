<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="sec-thuc-don sec-dktv clearfix">
    <div class="container wap-sec-thuc-don">
        <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
            <form th:action="@{/login}" method="post" accept-charset="utf-8" id="frm_register">
                <div class="row">
                    <div class="col-md-12 menu-home-title"><h1>Đăng nhập</h1></div>
                    <div class="col-md-12">
                        <div class="wap-dktv popup-login">
                            <div class="row">
                                <div class="col-md-4">
                                    <label class="nhan">Email <span>(*)</span>:</label>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input name="email" id="email" type="text" class="form-control input-lg" required/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label class="nhan">Mật khẩu <span>(*)</span>:</label>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input name="password" id="password" type="password" class="form-control input-lg" required/>
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-4">

                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input name="submit" id="submit" type="submit" class="btn btn-danger btn-block btn-lg btn-dk" value="Đăng nhập"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
</section>