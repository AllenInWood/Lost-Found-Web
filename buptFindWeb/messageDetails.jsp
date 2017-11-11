<%@ page language="java" import="java.util.*,java.io.*" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>messageDetailsOfBUPTFind</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/test.css" rel="stylesheet">
  </head>
  <body>


    <div class="navbar navbar-default navbar-test">
      <div class="container">
        <div class="navbar-header">
        <div class="navbar-brand">留言板</div>
    </div>
    <div id="navbar" class="collapse navbar-collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href><img src="img/search.png">&nbsp&nbsp&nbsp搜索失物</a></li>
        <li><a href><img src="img/login.png">&nbsp&nbsp&nbsp[学生登陆]</a></li>
        <li><a href><img src="img/login.png">&nbsp&nbsp&nbsp[教师注册]</a></li>
      </ul>

    </div>

      </div>
    </div>

    <div id="TopBar">
    <div id="navbar" class="collapse navbar-collapse">
    <div class="container">
    <div class="navbar-header">
        <div class="navbar-brand"><img src="img/message.png" class="bar"></div>
    </div> 
      <ul class="nav navbar-nav navbar-right">
        <li><a  class="im" href><img src="img/home.png"><div class="top">首&nbsp&nbsp页</div></a></li>
        <li><a class="im" href><img src="img/share.png"><div class="top">失物招领</div></a></li>
        <li><a class="im" href><img src="img/information.png"><div class="top">寻物启事</div></a></li>
        <li><a class="im" href><img src="img/words.png"><div class="top">留言板</div></a></li>
      </ul>
    </div>
      </div>
    </div>
    <%  String mtitle = request.getParameter("mtitle");
        byte b[] = mtitle.getBytes("ISO-8859-1");
        mtitle = new String(b);
		String mcontent = request.getParameter("mcontent");
		b = mcontent.getBytes("ISO-8859-1");
		mcontent = new String(b);
		String mdate = request.getParameter("mdate"); %>
    
    <div class="container">
      <div class="row">
      <div class="news col-md-12">
    <div class="ba ba1">
        <%=mtitle %><div class="zhu"><%=mdate %></div>
    </div>
    <div class="kuai">
       <%=mcontent %>
    </div>
    </div>
    <br/>
    <br/>
    <div class="info">---------------------------</div>
    <div class="info">北邮找回网 in 北京邮电大学 </div>
    <div class="info">版权所有&nbsp©&nbsp邮电Return&nbsp&nbsp地址:北京市西土城路10号&nbsp&nbsp邮编:100876 </div>
  </body>
</html>