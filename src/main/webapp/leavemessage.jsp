<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>给我们留言</title>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/leavemessage.css">
    <link rel="stylesheet" href="css/footer.css">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
  <!--导航栏-->
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
                 <li><a href="../index.jsp">首页</a></li>
                <li class="active"><a href="../introduce.jsp">社区服务</a></li>
                <li><a href="../job.jsp">行业就业</a></li>
                <li><a href="../volunteer.jsp">志愿服务</a></li>
                <li><a href="#">地产投资</a></li>
            </ul>
            <!--注册-->
            <button class="btn btn-info navbar-btn navbar-right" type="button" data-target="#modal-register" data-toggle="modal">用户注册</button>
            <span class="navbar-text navbar-right">  </span>
            <button class="btn btn-info navbar-btn navbar-right" type="button" data-target="#olduser-login" data-toggle="modal">登录</button>
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


<div class="message">
<div class="container"> 
  <form class="form-horizontal">
    <fieldset>
      <div id="legend" class="">
        <legend class="">留言</legend>
      </div>
    <div class="control-group">

          <!-- Text input-->
          <label class="control-label" for="input01">用户名</label>
          <div class="controls">
            <input type="text" placeholder="用户名..." class="input-xlarge">
            <p class="help-block"></p>
          </div>
        </div>

    <div class="control-group">

          <!-- Text input-->
          <label class="control-label" for="input01">邮箱</label>
          <div class="controls">
            <input type="email" placeholder="邮箱..." class="input-xlarge">
            <p class="help-block"></p>
          </div>
        </div>

    <div class="control-group">

          <!-- Textarea -->
          <label class="control-label">您的留言</label>
          <div class="controls">
            <div class="textarea">
                  <textarea type="" class="" rows="5" cols="50"> </textarea>
            </div>
          </div>
        </div>

    <div class="control-group">
          <label class="control-label"></label>

          <!-- Button -->
          <div class="controls">
            <button class="btn btn-success" type="submit">提交</button>
             <button class="btn btn-warning" type="reset">重置</button>
             <button class="btn btn-info"><a href="../introduce.jsp" >返回</a></button>
          </div>
        </div>
    </fieldset>
  </form>
</div>
</div>
<footer class="footer">
    <span class="returnTop"><img src="../icons/returntop.png" alt="returnTop"><br>返回顶部</span>
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
                    <img src="../icons/bottom_logo.png" alt="bottom_logo">
                </div>
                <div id="footer_qr" style="display: none">
                    <img src="../icons/erweima.png" alt="erweima">
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
</html>
<script src="jquery/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>