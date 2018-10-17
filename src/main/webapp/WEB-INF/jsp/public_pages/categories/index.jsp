<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<section class="sec-thuc-don clearfix">
    <div class="container wap-sec-thuc-don">
        <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="row">
            <div class="col-md-12 menu-home-title">
                <h1>Thực đơn</h1>
            </div>
            <div class="col-md-12">
                <div id="menu-list-thuc-don" class="menu-list-thuc-don clearfix">
                    <select id="selectpicker_menu" onclick="menuAjax(this.value)" class="selectpicker form-control">
                        <c:forEach var="cat" items="${categories}">
                            <option myid="${cat.getIdCategory()}" value="phan-an-combo" data-content="<span class='text'><h2>${cat.getName()}</h2></span>"  href="#tab_combo" class="tab_product"    style="text-transform: uppercase;">${cat.getName()}</option>

                        </c:forEach>
                    </select>
                </div>
                <div class="tag">
                    <h2>Phần ăn Combo</h2>
                    <h2>Gà Rán & Quay</h2>
                    <h2>BURGER - CƠM</h2>
                    <h2>Thức Ăn Nhẹ</h2>
                    <h2>Tráng Miệng & Thức Uống</h2>
                </div>
            </div>
            <div class="col-md-12">
                <div id="tab-wap" class="tab-content">
                    <div id="tab_combo" class="tab-pane fade active in ">
                        <div class="list-thuc-don-items">
                            <div class="row">
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="79">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(79);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/126bfc9bbe41ba8102b21c79cd6112b1.png" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Double Dip 1A</h4>
                                            </div>
                                            <div class="price clearfix">39.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="80">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(80);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/4764bb738eec2c8a5d5f2557963f2633.png" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Double Dip 1B</h4>
                                            </div>
                                            <div class="price clearfix">57.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="81">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(81);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/e12963376fcf2f814fe5c5aec2d3c19d.png" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Double Dip 2A</h4>
                                            </div>
                                            <div class="price clearfix">81.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="93">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(93);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/1fd1e1dad281cd197fcd90e6e936fe70.png" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Double Dip 2B</h4>
                                            </div>
                                            <div class="price clearfix">109.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="87">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(87);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/501a67a0e9cf2bb95b20c6d8ad8dc07d.png" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Combo Kiddie 1</h4>
                                            </div>
                                            <div class="price clearfix">55.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="88">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(88);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/7bc5decd5660aae26a0ba73e8ed139b6.png" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Combo Kiddie 2</h4>
                                            </div>
                                            <div class="price clearfix">55.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="89">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(89);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/12ac9b1ee724a3f1c01bd1c5db0ba6b3.png" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Combo Kiddie 3</h4>
                                            </div>
                                            <div class="price clearfix">72.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="90">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(90);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/347268ee187294140e12914eb3345489.png" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Combo Kiddie 4</h4>
                                            </div>
                                            <div class="price clearfix">72.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="91">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(91);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/8ea4d4e682f1ff9f2e49b90bb3cd4f90.png" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Combo Kiddie Family 1</h4>
                                            </div>
                                            <div class="price clearfix">209.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="92">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(92);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/3b5c8143469b3e83481fdd0b4c450196.png" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Combo Kiddie Family 2</h4>
                                            </div>
                                            <div class="price clearfix">209.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="85">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(85);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/0edd82099bb22b758b053e6cfb4a9cd9.png" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Combo Teriyaki 1</h4>
                                            </div>
                                            <div class="price clearfix">76.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="86">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(86);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/421d002199cd0961828262eaf9de5ddd.png" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Combo Teriyaki 2</h4>
                                            </div>
                                            <div class="price clearfix">76.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="82">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(82);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/9d5d2c401aa66eec189884aaca58ffea.png" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Veggie Combo 69K A</h4>
                                            </div>
                                            <div class="price clearfix">69.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="83">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(83);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/2163c8acc119ebc42060166003eaa9fc.png" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Veggie Combo 69K B</h4>
                                            </div>
                                            <div class="price clearfix">69.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="84">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(84);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/4ae7c1822a121cec167ae8432f86e307.png" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Veggie Combo 69K C</h4>
                                            </div>
                                            <div class="price clearfix">69.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="59">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(59);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/eff86fb3f7b405bba10bff7434b901f4.png" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Combo Kiddie</h4>
                                            </div>
                                            <div class="price clearfix">55.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="2">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(2);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/fa297da80ab080684f5c90b6b6c568ce.jpg" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Combo gà rán A</h4>
                                            </div>
                                            <div class="price clearfix">81.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="3">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(3);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/a6f768912bd3141c9d65277b7f47719d.jpg" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Combo gà rán B</h4>
                                            </div>
                                            <div class="price clearfix">81.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="18">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(18);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/6ebd8915fd12ac097f8f6f957eff4c9b.jpg" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Phần ăn XL</h4>
                                            </div>
                                            <div class="price clearfix">99.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="21">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(21);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/12b4401a434bce91cbf2e66143abb73c.jpg" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Gà Quay Tiêu / Gà Big'n Juicy</h4>
                                            </div>
                                            <div class="price clearfix">81.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="22">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(22);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/afa5e34cdd25acd9add4f8b5b34a23ea.jpg" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Combo Teen's Choice</h4>
                                            </div>
                                            <div class="price clearfix">63.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="23">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(23);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/2b3e396cc1ebb5128d5866d5267d353a.jpg" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Combo Double Meal</h4>
                                            </div>
                                            <div class="price clearfix">180.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-xs-6 call-combo" data-id="24">
                                    <div class="item">
                                        <a href="javascript:void(0);" onclick="call_combo(24);" >
                                            <div class="image clearfix"><img src="https://kfcvietnam.com.vn/uploads/combo/28bf21925ab2f57029b31e7f61354a09.jpg" class="img-responsive center-block"></div>
                                            <div class="title clearfix">
                                                <h4>Combo Family Meal 3</h4>
                                            </div>
                                            <div class="price clearfix">250.<small>000</small> <small>VNĐ</small></div>
                                            <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>