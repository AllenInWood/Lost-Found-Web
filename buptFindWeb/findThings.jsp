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
    <!-- ����3��meta��ǩ*����*������ǰ�棬�κ��������ݶ�*����*������� -->
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
        <div class="navbar-brand">�����һ���</div>
    </div>
    <div id="navbar" class="collapse navbar-collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a herf><img src="img/search.png">&nbsp&nbsp&nbsp����ʧ��</a></li>
        <li><a herf><img src="img/login.png">&nbsp&nbsp&nbsp[ѧ����½]</a></li>
        <li><a herf><img src="img/login.png">&nbsp&nbsp&nbsp[��ʦע��]</a></li>
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
        <li><a class="im" href="./index.jsp"><img src="img/home.png"><div class="top">��&nbsp&nbspҳ</div></a></li>
        <li><a class="im" href="./findOwners.jsp"><img src="img/share.png"><div class="top">ʧ������</div></a></li>
        <li><a class="im" href="./findThings.jsp"><img src="img/information.png"><div class="top">Ѱ������</div></a></li>
        <li><a class="im" href="./message.jsp"><img src="img/words.png"><div class="top">���԰�</div></a></li>
      </ul>
    </div>
      </div>
    </div>

    <div class="container">
      <div class="row">
      <div class="news col-md-12">
        <div class="ba ba1">
        Ѱ������
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
				[��������]</button></form><div class="dianji1">&nbsp&nbspʧ��Ѱ��&nbsp:&nbsp<%=s1[0] %></div><div class="dianji2"><%=s1[2] %></div></div>
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
        <label class="control-label" style="margin-left:50%">��Ŀ</label>
        <div class="controls">
          <input type="text" name="titleFindThings" placeholder="��Ŀ" style="width:100%">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" style="margin-left:50%">����</label>
        <div class="controls">
          <textarea rows="3" name="contentFindThings" placeholder="����" style="width:100%"></textarea>
        </div>
      </div>
      <div class="control-group" style="margin-left:50%">
        <div class="controls">
          <button type="submit" class="btn">�ύ</button>
        </div>
      </div>
    </form>
    
    </div>
    <br/>
    <br/>
    <div class="info">---------------------------</div>
    <div class="info">�����һ��� in �����ʵ��ѧ </div>
    <div class="info">��Ȩ����&nbsp�0�8&nbsp�ʵ�Return&nbsp&nbsp��ַ:������������·10��&nbsp&nbsp�ʱ�:100876 </div>
  </body>
</html>