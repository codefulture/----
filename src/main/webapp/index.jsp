<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>哈尔滨养老社区</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/footer.css">

    <!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	
    <!--导航条-->
<div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <!--导航条头部-->
        <div class="navbar-header">
            <a href="index.jsp" class="navbar-brand">哈尔滨养老社区</a>
            <a href="my-navbar-collapse" class="navbar-toggle" data-toggle="collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
        </div>

        <!--导航条：折叠部分-->
        <div class="navbar-collapse collapse" id="my-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.html">首页</a></li>
                <li><a href="introduce.jsp">社区服务</a></li>
                <li><a href="job.jsp">行业就业</a></li>
                <li><a href="volunteer.jsp">志愿服务</a></li>
                <li><a href="#">地产投资</a></li>
            </ul>

            <!--注册-->
            <c:if test="${sessionScope.error!=null}">
            	<script>window.onload = function(){alert('${sessionScope.error}');}</script>
            	<button class="btn btn-info navbar-btn navbar-right" type="button" id="exitlogin">退出登录</button>
            </c:if>
            <c:if test="${sessionScope.error==null}">
            	<button class="btn btn-info navbar-btn navbar-right" type="button" data-target="#modal-register" data-toggle="modal">用户注册</button>
            </c:if>
            <span class="navbar-text navbar-right">  </span>
            
            
            <c:if test="${sessionScope.user_session.username!=null}">
            	<button class="btn btn-info navbar-btn navbar-right" type="button">${sessionScope.user_session.username}</button>
            </c:if>
            <c:if test="${sessionScope.user_session.username==null}">
            	<button class="btn btn-info navbar-btn navbar-right" type="button" data-target="#olduser-login" data-toggle="modal">登录</button>
            </c:if>
            
            
            <form action="" class="navbar-form navbar-right">
                <div class="form-group has-feedback">
                    <label for="search" class="sr-only"></label>
                    <input type="text" id="search" class="form-control" placeholder="您想了解什么...">
                    <span class="glyphicon glyphicon-search form-control-feedback"></span>
                </div>
            </form>
        </div>
    </div>
</div>
<!--第一页-->
<div class="first-page">        <!--首页-->
    <div class="bg_first">      <!--背景图-->
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h1 class="home-title fadeIn">养老社区</h1>
                    <p class="home-subtitle fadeIn">致力于提供优质服务的创新型养老服务中心</p>
                    <p class="home-subtitle2 fadeIn">Innovative pension center is committed to providing high quality service</p>
                </div>
            </div>
        </div>
        <!--插件-->
        <div class="page-scroll">
            <a href="#overview">
                <span class="glyphicon glyphicon-menu-down"></span>
            </a>
        </div>
    </div>
</div>
<!--第二页-->
<div class="second-page" id="overview">
    <div class="bg_second">
        <div class="container">
            <div class="home text-center">
                <div class="home-title">源于养老、助力养老、圆梦养老</div>
                <p>哈尔滨养老社区，以互联网科技驱动，以优质的服务为前提和基石，将移动互联网、数据技术应用于养老领域</p>
                <p>哈尔滨养老社区，决解养老的效率和连续性；用科技，让优质医疗资源惠及更多的家庭；用科技，让更多的人受惠于医疗保健的预防价值，而不只是“因病治疗”</p>
                <p>哈尔滨养老社区，帮助您获得更便捷的医疗健康服务与更优质的健康维护方案</p>
            </div>
            <div class="row subpage">
                <div class="col-lg-4 col-sm-12">
                    <div class="coldiv">
                        <figure class="icon fuwu"><img src="icons/fuwu.png" alt="服务"></figure>
                        <h4>服务</h4>
                        <div class="f12">为老年人提供高品质的养老服务</div>
                        <div class="f12">解决日益严重的人口老龄化问题</div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-12">
                    <div class="coldiv">
                        <figure class="icon yiliao"><img src="icons/yiliao.png" alt="医疗"></figure>
                        <h4>保障</h4>
                        <div class="f12">协同现有医疗体系，养老与医疗相结合</div>
                        <div class="f12">更好的维护老年人健康，倡导健康生活</div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-12">
                    <div class="coldiv">
                        <figure class="icon innovation"><img src="icons/innovation.png" alt="创新"></figure>
                        <h4>创新</h4>
                        <div class="f12">互联网+养老 开辟新一代养老浪潮</div>
                        <div class="f12">用科技的眼光、互联网的思想面对养老</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--第四页-->
<div class="fourth_page">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2 class="section-title">Get In Touch</h2>
                <p class="section-subtitle">如果您对我们的社区感兴趣，或者想要加入我们的社区，请在下方留言</p>
            </div>
        </div>
        <form action="/action" id="contact-form" class="contact" method="post">
            <div class="row">
                <div class="col-md-6">
                    <input type="text" class="contact-input white-input" required name="contact-names" placeholder=" Your Name"><br>
                    <input type="email" class="contact-input white-input" required name="contect-email" placeholder=" Email Adress"><br>
                    <input type="text" class="contact-input white-input" required name="contact-phone" placeholder=" Phone-Number">
                </div>
                <div class="col-md-6">
                    <textarea name="contact-message" class="contact-commnent white-input" placeholder="Your Message..."></textarea>
                </div>
                <div class="col-md-12">
                    <input type="submit" id="submit-button" value="Send Message" class="contact-submit">
                </div> 
            </div> 
        </form>  
    </div>
</div>
<!--底部-->
<footer class="footer">
    <span class="returnTop"><img src="icons/returntop.png" alt="returnTop"><br>返回顶部</span>
    <div style="overflow-x: hidder;">
        <div class="footer_content">
            <div class="footer_box container">
                <div class="row">
                    <div class="col-md-2 col-xs-2 col_1" >
                        <h4>关于社区</h4>
                        <ul>
                            <li><a href="#">社区简介</a></li>
                            <li><a href="#">领导团队</a></li>
                            <li><a href="#">社区环境</a></li>
                            <li><a href="#">社区文化</a></li>
                            <li><a href="#">社区业务</a></li>
                            <li><a href="#">来访登记</a></li>
                        </ul>
                    </div>
                    <div class="col-md-2 col-xs-2 col_2">
                        <h4>主要业务</h4>
                        <ul>
                            <li><a href="#">养老服务</a></li>
                            <li><a href="#">志愿服务</a></li>
                            <li><a href="#">医疗服务</a></li>
                            <li><a href="#">业务往来</a></li>
                        </ul>
                    </div>
                    <div class="col-md-2 col-xs-2 col_3">
                        <h4>新闻动态</h4>
                        <ul>
                            <li><a href="#">社区新闻</a></li>
                            <li><a href="#">行业新闻</a></li>
                            <li><a href="#">媒体报道</a></li>
                        </ul>
                    </div>
                    <div class="col-md-2 col-xs-2 col_4">
                        <h4>加入社区</h4>
                        <ul>
                            <li><a href="">社区印象</a></li>
                            <li><a href="">社会招聘</a></li>
                            <li><a href="">校园招聘</a></li>
                            <li><a href="">培训发展</a></li>
                            <li><a href="">社区发展</a></li>
                        </ul>
                    </div>
                    <div class="col-md-2 col-xs-2 col_5">
                        <h4>投资合作</h4>
                        <ul>
                            <li><a href="">社区建设</a></li>
                            <li><a href="">合作加盟</a></li>
                            <li><a href="">地产投资</a></li>
                        </ul>
                    </div>
                    <div class="col-md-2 col-xs-2 col_6">
                        <h4>相关链接</h4>
                        <ul>
                            <li><a href="">社区建设</a></li>
                            <li><a href="">合作加盟</a></li>
                            <li><a href="">了解更多</a></li>
                        </ul>
                    </div>
                </div>
                <div class="footer_icon" style="display: none">
                    <img src="icons/bottom_logo.png" alt="bottom_logo">
                </div>
                <div id="footer_qr" style="display: none">
                    <img src="icons/erweima.png" alt="erweima">
                    <div>咨询电话：</div>
                    <div>社区邮箱：</div>
                </div>
            </div>
            <div class="footer_logoqr" style="display: block">
                <img src="icons/bottom_logoqr.png" alt="bottom_logoqr">
            </div>
            <div class="copyright">
                    Copyright © 版权 2017哈尔滨养老社区有限公司，本公司保留一切版权 沪ICP备05013545号-1
            </div>
        </div>
    </div>
</footer>
<script src="js/jquery-1.11.3.js"></script>
<script src="jquery/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>

<!--新用户注册-->
<div id="modal-register" class="modal fade">     <!--半透明遮罩层-->
    <div class="modal-dialog">    <!--宽高，定位-->
        <div class="modal-content">       <!--背景、边框、阴影-->
            <div class="modal-header">      <!--对话框头-->
                <span class="close" data-dismiss="modal">&times;</span>
                <h3 class="middle-title">新用户注册</h3>
            </div>
            <div class="modal-body">        <!--主题部分-->
            	<form action="user" method="POST" id="regform">
                    <div class="form-group">
                        <label for="username">用户名：</label>
                        <input type="text" class="form-control" id="username" name="username"/>
                    </div>
                    <div class="form-group">
                        <label for="userpassword">密码：</label>
                        <input type="password" class="form-control" id="userpassword" name="password"/>
                    </div>
                    <div class="form-group">
                        <label for="userpassword">手机号码：</label>
                        <input type="text" class="form-control" id="telephone" name="telephone"/>
                    </div>
                    <div class="form-group">
                        <div class="checkbox">
                            <label><input type="checkbox"/>同意相关协议</label>
                        </div>
                    </div>
            	</form>
            </div>
        	<div class="modal-footer">      <!--对话框尾部-->
               <input type="submit" value="register" class="btn btn-success" name="action" form="regform"/>
               <input type="submit" value="exit" class="btn btn-danger" data-dismiss="modal" id="pwd" form="regform"/>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="alertbox">      <!--提示框-->
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 id="alertbox1"></h4>
            </div>
        </div>
    </div>
</div>
<!--用户登录-->
<div class="modal fade" id="olduser-login">        <!--半透明遮罩层-->
    <div class="modal-dialog">    <!--宽高，定位-->
        <div class="modal-content">       <!--背景、边框、阴影-->
            <div class="modal-header">      <!--对话框头-->
                <span class="close" data-dismiss="modal">&times;</span>
                <h3 class="middle-title">用户登录</h3>
            </div>
            <div class="modal-body">        <!--主题部分-->
                <form action="user" method="POST" id="loginform">
                    <div class="form-group">
                        <label for="username">用户名：</label>
                        <input type="text" class="form-control" id="username" name="username"/>
                    </div>
                    <div class="form-group">
                        <label for="userpassword">密码：</label>
                        <input type="password" class="form-control" id="userpassword" name="password"/>
                    </div>
                    <div class="form-group">
                        <div class="checkbox">
                            <label><input type="checkbox"/>7天之内自动登录</label>
                        </div>
                    </div> 
                </form>
            </div>
            <div class="modal-footer">      <!--对话框尾部-->
                <input type="submit" value="login" class="btn btn-success" name="action" form="loginform"/>
                <input type="button" value="exit" class="btn btn-danger" data-dismiss="modal" id="pwd" form="loginform"/>
           	</div>
        </div>
    </div>
</div>
<div class="modal fade" id="alertbox">      <!--提示框-->
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 id="alertbox1">${sessionScope.error}</h4>
            </div>
        </div>
    </div>
</div>
</html>

