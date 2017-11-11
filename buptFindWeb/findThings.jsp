<%@ page language="java" import="java.util.*,java.io.*" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String realPath = request.getRealPath("/");
%>

    
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
  <base href="<%=basePath%>">
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
        <div class="navbar-brand">北邮找回网</div>
    </div>
    <div id="navbar" class="collapse navbar-collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a herf><img src="img/search.png">&nbsp&nbsp&nbsp搜索失物</a></li>
        <li><a herf><img src="img/login.png">&nbsp&nbsp&nbsp[学生登陆]</a></li>
        <li><a herf><img src="img/login.png">&nbsp&nbsp&nbsp[教师注册]</a></li>
      </ul>

    </div>

      </div>
    </div>

    <div id="TopBar">
    <div id="navbar" class="collapse navbar-collapse">
    <div class="container">
    <div class="navbar-header">
        <div class="navbar-brand"><img src="img/findThings.png" class="bar"></div>
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

    <div class="container">
      <div class="row">
      <div class="news col-md-12">
        <div class="ba ba1">
        寻物启事
    </div>
    <div class="kuai1">
           <%  
        String filename1 = realPath+"txt\\findThings.txt";
        pageContext.setAttribute("filename1", filename1);
		BufferedReader in1;
		try {
			in1 = new BufferedReader(new FileReader(filename1));
			String line1 = null;
			String[] s1 = null;
			while((line1 = in1.readLine())!=null){
				s1 = line1.split(" ");
				%>
				<div class="dianji"><form action="findThingsDetails.jsp" method="post"><input type="hidden" name="ttitle" value="<%=s1[0] %>"><input type="hidden" name="tcontent" value="<%=s1[1] %>"><input type="hidden" name="tdate" value="<%=s1[2] %>"><button type="submit" class="dianji1">
				[进入详情]</button></form><div class="dianji1">&nbsp&nbsp失物寻主&nbsp:&nbsp<%=s1[0] %></div><div class="dianji2"><%=s1[2] %></div></div>
				<%
			}
			in1.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		%> 
    </div>
     <form action="ServAddFindThings" method="post" class="form-horizontal" style="width:100%;margin-top:20px;margin-bottom:20px">
      <div class="control-group">
        <label class="control-label" style="margin-left:50%">题目</label>
        <div class="controls">
          <input type="text" name="titleFindThings" placeholder="题目" style="width:100%">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" style="margin-left:50%">内容</label>
        <div class="controls">
          <textarea rows="3" name="contentFindThings" placeholder="内容" style="width:100%"></textarea>
        </div>
      </div>
      <div class="control-group" style="margin-left:50%">
        <div class="controls">
          <button type="submit" class="btn">提交</button>
        </div>
      </div>
    </form>
    
    </div>
    <br/>
    <br/>
    <div class="info">---------------------------</div>
    <div class="info">北邮找回网 in 北京邮电大学 </div>
    <div class="info">版权所有&nbsp©&nbsp邮电Return&nbsp&nbsp地址:北京市西土城路10号&nbsp&nbsp邮编:100876 </div>
  </body>
</html>