<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>志愿服务</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/introduce.css">
    <link rel="stylesheet" href="css/footer.css">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
  <!--导航栏-->
<div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <!--导航条头部-->
        <div class="navbar-header">
            <a href="index.html" class="navbar-brand">哈尔滨养老社区</a>
            <a href="my-navbar-collapse" class="navbar-toggle" data-toggle="collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
        </div>
        <!--导航条：折叠部分-->
        <div class="navbar-collapse collapse" id="my-navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="index.jsp">首页</a></li>
                <li class="active"><a href="introduce.jsp">社区服务</a></li>
                <li><a href="job.jsp">行业就业</a></li>
                <li><a href="volunteer.jsp">志愿服务</a></li>
                <li><a href="#">地产投资</a></li>
            </ul>
            <!--注册-->
            <c:if test="${sessionScope.error!=null}">
            	<button class="btn btn-info navbar-btn navbar-right" type="button" data-target="#modal-register" data-toggle="modal">${sessionScope.error}</button>
            </c:if>
            <c:if test="${sessionScope.error==null}">
            	<button class="btn btn-info navbar-btn navbar-right" type="button" data-target="#modal-register" data-toggle="modal">用户注册</button>
            </c:if>
            
            <span class="navbar-text navbar-right">  </span>
            <c:if test="${sessionScope.user_session.username!=null}">
            	<button class="btn btn-info navbar-btn navbar-right" type="button" data-target="#olduser-login" data-toggle="modal">${sessionScope.user_session.username}</button>
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
<!-- 填充 -->
<div class="empty"></div>
<!-- 第一页 -->
<div class="first">
    <div class="container">
		<div class="container">
       <div class="row">
           <div class="col-md-12">
               <div class="panel-title">
                   <h2>服务入口</h2>
                </div>
           </div>
           <div class="col-md-12">
               <!--展板1-->
               <div class="col-md-4">
                   <div class="bg-icons1">
                       <h3>企业加盟</h3>
                   </div>
                   <p>加入我们的社区，为更多的老年人提供优质的服务。</p>
                   <p><a href="join.jsp">点击进入 >></a></p>
               </div>
               <!--展板2-->
               <div class="col-md-4">
                   <div class="bg-icons2">
                       <h3>老年人加入</h3>
                   </div>
                   <p>加入我们的社区，我们将为您提供方方面面的服务。</p>
                   <p><a href="server/older.jsp">点击进入 >></a></p>
               </div>
               <!--展板3-->
               <div class="col-md-4">
                   <div class="bg-icons3">
                       <h3>医疗服务</h3>
                   </div>
                   <p>医疗、医药服务合作。</p>
                   <p><a href="">点击进入 >></a></p>
               </div>
            </div>
            <div class="col-md-12">
               <!--展板4-->
               <div class="col-md-4">
                   <div class="bg-icons4">
                       <h3>行业就业</h3>
                   </div>
                   <p>我们会提供各种各样的就业机会，总有一项适合你！</p>
                   <p><a href="">点击进入 >></a></p>
               </div>
               <!--展板5-->
               <div class="col-md-4">
                   <div class="bg-icons5">
                       <h3>志愿服务</h3>
                   </div>
                   <p>爱心志愿，帮助别人就是最大的美德！</p>
                   <p><a href="volunteer.jsp">点击进入 >></a></p>
               </div>
               <!--展板6-->
               <div class="col-md-4">
                   <div class="bg-icons6">
                       <h3>爱心捐助</h3>
                   </div>
                   <p>为老年人献出你的爱心，您的捐助我们将分发到老人手中。</p>
                   <p><a href="">点击进入 >></a></p>
               </div>
            </div>
            <div class="col-md-12">
               <!--展板7-->
               <div class="col-md-4">
                   <div class="bg-icons7">
                       <h3>地产投资</h3>
                   </div>
                   <p>仅限于养老行业的地产投资建设。</p>
                   <p><a href="">点击进入 >></a></p>
               </div>
               <!--展板8-->
               <div class="col-md-4">
                   <div class="bg-icons8">
                       <h3>商业宣传</h3>
                   </div>
                   <p>有什么需要宣传的，我们将竭尽所能。</p>
                   <p><a href="">点击进入 >></a></p>
               </div>
               <!--展板9-->
               <div class="col-md-4">
                   <div class="bg-icons9">
                       <h3>行业信息</h3>
                   </div>
                   <p>全国各地的养老信息，都可以在这里找到。</p>
                   <p><a href="">点击进入 >></a></p>
               </div>
           </div>
           <div class="col-md-12">
               <!--展板10-->
               <div class="col-md-4">
                   <div class="bg-icons10">
                       <h3>敬请期待</h3>
                   </div>
                   <p>如果您希望我们提供何种服务，请给我们留言。</p>
                   <p><a href="server/leavemessage.jsp">点击进入 >></a></p>
               </div>
           </div>
       </div>
    </div>
    </div>
</div>
<!--第二页-->
<div class="second">
    <div class="container">
        <h2>社区展示</h2>
        <div role="tabpanel">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">室内环境</a></li>
                <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">室外公园</a></li>
                <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">健康服务</a></li>        
            </ul>
          <!-- Tab panes -->
          <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">
        <img src="image/introduce/one1.jpg" alt="pic1" style="width: 350px; height: 200px">
        <img src="image/introduce/one2.jpg" alt="pic2" style="width: 350px; height: 200px">
        <img src="image/introduce/one3.jpg" alt="pic3" style="width: 350px; height: 200px">
    </div>
    <div role="tabpanel" class="tab-pane" id="profile">
        <img src="image/introduce/two1.jpg" alt="pic1" style="width: 350px; height: 200px">
        <img src="image/introduce/two2.jpg" alt="pic2" style="width: 350px; height: 200px">
        <img src="image/introduce/two3.jpg" alt="pic3" style="width: 350px; height: 200px">
    </div>
    <div role="tabpanel" class="tab-pane" id="messages">
        <img src="image/introduce/three1.jpg" alt="pic1" style="width: 350px; height: 200px">
        <img src="image/introduce/three2.jpg" alt="pic2" style="width: 350px; height: 200px">
        <img src="image/introduce/three3.jpg" alt="pic3" style="width: 350px; height: 200px">
    </div>
  </div>
        </div>
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
</body>
<script src="jquery/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</html>
