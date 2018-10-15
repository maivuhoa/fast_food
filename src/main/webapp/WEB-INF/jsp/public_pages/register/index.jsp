<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<section class="sec-thuc-don sec-dktv clearfix">
    <div class="container wap-sec-thuc-don">
        <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <form action="/vn/user/do_dangky.html" method="post" accept-charset="utf-8" id="frm_register"><div style="display:none">
            <input type="hidden" name="csrf_kfc_name" value="db19c1f51c94f3c9204d245fb957cb20" />
        </div>    <div class="row">
            <div class="col-md-12 menu-home-title"><h1>Đăng ký thành viên</h1></div>
            <div class="col-md-12 menu-home-des">Vui lòng điền đầy đủ thông tin cá nhân bên dưới.</div>
            <div class="col-md-12">
                <div class="wap-dktv popup-login">
                    <div class="row">
                        <div class="col-md-4">
                            <label class="nhan">Họ và tên <span>(*)</span>:</label>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <input name="name" id="name" type="text" class="form-control input-lg"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label class="nhan">Email <span>(*)</span>:</label>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <input name="email" id="email" type="text" class="form-control input-lg" onblur="checkEMAIL(this.value)"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label class="nhan">Mật khẩu <span>(*)</span>:</label>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <input name="password" id="password" type="password" class="form-control input-lg"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label class="nhan">Lặp lại mật khẩu <span>(*)</span>:</label>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <input name="repassword" id="repassword" type="password" class="form-control input-lg"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label class="nhan">Giới tính <span>(*)</span>:</label>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-4 col-xs-6">
                                        <div class="radio chapnhan gioitinh">
                                            <label>
                                                <input type="radio" value="1" name="gender" checked="true"/>
                                                <span class="cr"><i class="cr-icon fa fa-check"></i></span>
                                                <em>Nam </em>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-xs-6">
                                        <div class="radio chapnhan gioitinh">
                                            <label>
                                                <input type="radio" value="0" name="gender"/>
                                                <span class="cr"><i class="cr-icon fa fa-check"></i></span>
                                                <em>Nữ</em>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label class="nhan">Ngày sinh <span>(*)</span>:</label>
                        </div>
                        <div class="col-md-8 col-xs-8">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-4 date">
                                        <select name="day" id="day" class="form-control selectpicker" data-style="btn btn-findkfc">
                                            <option class="bs-title-option" value="">Ngày</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10">10</option>
                                            <option value="11">11</option>
                                            <option value="12">12</option>
                                            <option value="13">13</option>
                                            <option value="14">14</option>
                                            <option value="15">15</option>
                                            <option value="16">16</option>
                                            <option value="17">17</option>
                                            <option value="18">18</option>
                                            <option value="19">19</option>
                                            <option value="20">20</option>
                                            <option value="21">21</option>
                                            <option value="22">22</option>
                                            <option value="23">23</option>
                                            <option value="24">24</option>
                                            <option value="25">25</option>
                                            <option value="26">26</option>
                                            <option value="27">27</option>
                                            <option value="28">28</option>
                                            <option value="29">29</option>
                                            <option value="30">30</option>
                                            <option value="31">31</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-4 month">
                                        <select name="month" id="month" class="form-control selectpicker" data-style="btn btn-findkfc">
                                            <option class="bs-title-option" value="">Tháng</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10">10</option>
                                            <option value="11">11</option>
                                            <option value="12">12</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-4 year">
                                        <select name="year" id="year" class="form-control selectpicker" data-style="btn btn-findkfc">
                                            <option class="bs-title-option" value="">Năm</option>
                                            <option value="1958">1958</option>
                                            <option value="1959">1959</option>
                                            <option value="1960">1960</option>
                                            <option value="1961">1961</option>
                                            <option value="1962">1962</option>
                                            <option value="1963">1963</option>
                                            <option value="1964">1964</option>
                                            <option value="1965">1965</option>
                                            <option value="1966">1966</option>
                                            <option value="1967">1967</option>
                                            <option value="1968">1968</option>
                                            <option value="1969">1969</option>
                                            <option value="1970">1970</option>
                                            <option value="1971">1971</option>
                                            <option value="1972">1972</option>
                                            <option value="1973">1973</option>
                                            <option value="1974">1974</option>
                                            <option value="1975">1975</option>
                                            <option value="1976">1976</option>
                                            <option value="1977">1977</option>
                                            <option value="1978">1978</option>
                                            <option value="1979">1979</option>
                                            <option value="1980">1980</option>
                                            <option value="1981">1981</option>
                                            <option value="1982">1982</option>
                                            <option value="1983">1983</option>
                                            <option value="1984">1984</option>
                                            <option value="1985">1985</option>
                                            <option value="1986">1986</option>
                                            <option value="1987">1987</option>
                                            <option value="1988">1988</option>
                                            <option value="1989">1989</option>
                                            <option value="1990">1990</option>
                                            <option value="1991">1991</option>
                                            <option value="1992">1992</option>
                                            <option value="1993">1993</option>
                                            <option value="1994">1994</option>
                                            <option value="1995">1995</option>
                                            <option value="1996">1996</option>
                                            <option value="1997">1997</option>
                                            <option value="1998">1998</option>
                                            <option value="1999">1999</option>
                                            <option value="2000">2000</option>
                                            <option value="2001">2001</option>
                                            <option value="2002">2002</option>
                                            <option value="2003">2003</option>
                                            <option value="2004">2004</option>
                                            <option value="2005">2005</option>
                                            <option value="2006">2006</option>
                                            <option value="2007">2007</option>
                                            <option value="2008">2008</option>
                                            <option value="2009">2009</option>
                                            <option value="2010">2010</option>
                                            <option value="2011">2011</option>
                                            <option value="2012">2012</option>
                                            <option value="2013">2013</option>
                                            <option value="2014">2014</option>
                                            <option value="2015">2015</option>
                                            <option value="2016">2016</option>
                                            <option value="2017">2017</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label class="nhan">Điện thoại <span>(*)</span>:</label>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <input name="phone" id="phone" type="text" class="form-control input-lg"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label class="nhan note"><span>(*)</span> Thông tin bắt buộc </label>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <button onclick="registerUser()" class="btn btn-danger btn-block btn-lg btn-dk">Đăng ký</button>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group form-group-lg"><a href="javascript:void(0)" onclick="loginFB()" class="fb btn-block">
                                <div class="input-group"> <span class="input-group-addon"><i class="fa fa-facebook"></i></span>
                                    <div class="form-control">Đăng ký bằng Facebook</div>
                                </div>
                            </a> </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group form-group-lg"><a href="javascript:void(0)" id="loginGoogle" class="gm btn-block">
                                <div class="input-group"> <span class="input-group-addon"><i class="fa fa fa-google-plus"></i></span>
                                    <div class="form-control">Đăng ký bằng Google</div>
                                </div>
                            </a> </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="checkbox chapnhan">
                                <label>
                                    <input type="checkbox" name="quydinh" id="quydinh" value="1" checked="checked"/>
                                    <span class="cr"><i class="cr-icon fa fa-check"></i></span>
                                    Tôi đồng ý với các <a onclick="call_Popup('#terms-and-conditions')" ><b>Chính Sách Và Quy Định Chung</b></a> của KFC Vietnam              </label>
                            </div><div class="clearfix"></div>
                            <div class="checkbox chapnhan">
                                <label>
                                    <input type="checkbox" name="sendmail" id="sendmail" value="1" checked="checked"/>
                                    <span class="cr"><i class="cr-icon fa fa-check"></i></span>
                                    Nhận tin từ KFC qua email.              </label>
                            </div>
                            <div class="clearfix"></div>
                            <div class="chapnhan form-group"><span class="text-note">Hệ thống sẽ không đăng bài viết hoặc chia sẻ thông tin mà chưa được sự đồng ý của bạn.</span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </form>  </div>
</section>