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
    <!-- ����3��meta��ǩ*����*������ǰ�棬�κ��������ݶ�*����*������� -->
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
        <div class="navbar-brand">���԰�</div>
    </div>
    <div id="navbar" class="collapse navbar-collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href><img src="img/search.png">&nbsp&nbsp&nbsp����ʧ��</a></li>
        <li><a href><img src="img/login.png">&nbsp&nbsp&nbsp[ѧ����½]</a></li>
        <li><a href><img src="img/login.png">&nbsp&nbsp&nbsp[��ʦע��]</a></li>
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
        <li><a  class="im" href><img src="img/home.png"><div class="top">��&nbsp&nbspҳ</div></a></li>
        <li><a class="im" href><img src="img/share.png"><div class="top">ʧ������</div></a></li>
        <li><a class="im" href><img src="img/information.png"><div class="top">Ѱ������</div></a></li>
        <li><a class="im" href><img src="img/words.png"><div class="top">���԰�</div></a></li>
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
    <div class="info">�����һ��� in �����ʵ��ѧ </div>
    <div class="info">��Ȩ����&nbsp�0�8&nbsp�ʵ�Return&nbsp&nbsp��ַ:������������·10��&nbsp&nbsp�ʱ�:100876 </div>
  </body>
</html>