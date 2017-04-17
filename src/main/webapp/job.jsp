<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>行业就业</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/job.css">
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
                <li><a href="introduce.jsp">社区服务</a></li>
                <li class="active"><a href="job.jsp">行业就业</a></li>
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
<!-- 信息显示主体 -->
<div class="second">
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<h2>招聘信息</h2>
			<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  			<div class="panel panel-default">
    			<div class="panel-heading" role="tab" id="headingOne">
      				<h4 class="panel-title">
        			<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          			1.招聘保姆
        			</a>
      				</h4>
    			</div>
    			<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      				<div class="panel-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      				</div>
    			</div>
  			</div>
  			<div class="panel panel-default">
    			<div class="panel-heading" role="tab" id="headingTwo">
      				<h4 class="panel-title">
        				<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          				2.招聘清洁工
        				</a>
      				</h4>
    			</div>
    		<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      			<div class="panel-body">
        	Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      			</div>
    		</div>
  		</div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          3.招聘仓库管理员
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      </div>
    </div>
  </div>
</div>
		</div>
	</div>
</div>

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
</html>
<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.js"></script>
