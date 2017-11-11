<%@ page language="java" import="java.util.*,java.io.*" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String realPath = request.getRealPath("/");
%>

<!DOCTYPE html>
<html lang="zh-CN">
<base href="<%=basePath%>">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>homePageOfBUPTFind</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/test.css" rel="stylesheet">
  </head>
  <body>


    <div class="navbar navbar-default navbar-test">
      <div class="container">
        <div class="navbar-header">
        <div class="navbar-brand">您好，欢迎来到北邮找回网！</div>
    </div>
    <div id="navbar" class="collapse navbar-collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href=""><img src="img/comment.jpg">&nbsp&nbsp&nbsp联系客服</a></li>
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
        <div class="navbar-brand"><img src="img/topTitle.png" class="bar"></div>
    </div> 
      <ul class="nav navbar-nav navbar-right">
        <li><a class="im" href="./index.jsp"><img src="img/home.png"><div class="top">首&nbsp&nbsp页</div></a></li>
        <li><a class="im" href="./findOwners.jsp"><img src="img/share.png"><div class="top">失物招领</div></a></li>
        <li><a class="im" href="./findThings.jsp"><img src="img/information.png"><div class="top">寻物启事</div></a></li>
        <li><a class="im" href="./message.jsp"><img src="img/words.png"><div class="top">留言板</div></a></li>
      </ul>
    </div>
      </div>
    </div>

    <div id="picture"></div>

    <div class="container">
      <div class="row">
      <div class="news col-md-12">
        <div class="ba">
          失物招领<a class="zhu" href="./findOwners.jsp">更多+</a>
        </div>

     <div class="kuai">
         <%  
        String filename1 = realPath+"txt\\findOwners.txt";
		BufferedReader in1;
		int i1 = 1;
		try {
			in1 = new BufferedReader(new FileReader(filename1));
			String line1 = null;
			String[] s1 = null;
			while((line1 = in1.readLine())!=null & i1<=10){
				s1 = line1.split(" ");
				%>
				<div class="dianji"><form action="findOwnersDetails.jsp" method="post"><input type="hidden" name="otitle" value="<%=s1[0] %>"><input type="hidden" name="ocontent" value="<%=s1[1] %>"><input type="hidden" name="odate" value="<%=s1[2] %>"><button type="submit" class="dianji1">
				[进入详情]</button></form><div class="dianji1">&nbsp&nbsp失物寻主&nbsp:&nbsp<%=s1[0] %></div><div class="dianji2"><%=s1[2] %></div></div>
				<%
				i1++;
			}
			in1.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		%> 
     </div>

    <div class="ba">
        寻物启事<a class="zhu" href="./findThings.jsp">更多+</a>
    </div>
    <div class="kuai">
    <%  
        String filename = realPath+"txt\\findThings.txt";
		BufferedReader in;
		int i = 1;
		try {
			in = new BufferedReader(new FileReader(filename));
			String line = null;
			String[] s = null;
			while((line = in.readLine())!=null & i<=10){
				s = line.split(" ");
				%>
				<div class="dianji"><form action="findThingsDetails.jsp" method="post"><input type="hidden" name="ttitle" value="<%=s[0] %>"><input type="hidden" name="tcontent" value="<%=s[1] %>"><input type="hidden" name="tdate" value="<%=s[2] %>"><button type="submit" class="dianji1">
				[进入详情]</button></form><div class="dianji1">&nbsp&nbsp寻找失物&nbsp:&nbsp<%=s[0] %></div><div class="dianji2"><%=s[2] %></div></div>
				<%
				i++;
			}
			in.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		%>
             </div>

    <div class="ba">
        留言板<a class="zhu" href="./message.jsp">更多+</a>
    </div>
    <div class="kuai">
             <%  
        String filename2 = realPath+"txt\\message.txt";
		BufferedReader in2;
		int i2 = 1;
		try {
			in2 = new BufferedReader(new FileReader(filename2));
			String line2 = null;
			String[] s2 = null;
			while((line2 = in2.readLine())!=null & i2<=10){
				s2 = line2.split(" ");
				%>
				<div class="dianji"><form action="messageDetails.jsp" method="post"><input type="hidden" name="mtitle" value="<%=s2[0] %>"><input type="hidden" name="mcontent" value="<%=s2[1] %>"><input type="hidden" name="mdate" value="<%=s2[2] %>"><button type="submit" class="dianji1">
				[进入详情]</button></form><div class="dianji1">&nbsp&nbsp<%=s2[0] %></div><div class="dianji2"><%=s2[2] %></div></div>
				<%
				i2++;
			}
			in2.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		%>
    </div>
    </div>
    <br/>
    <br/>
    <div class="info">---------------------------</div>
    <div class="info">北邮找回网 in 北京邮电大学 </div>
    <div class="info">版权所有&nbsp©&nbsp邮电Return&nbsp&nbsp地址:北京市西土城路10号&nbsp&nbsp邮编:100876 </div>
  </body>
</html>