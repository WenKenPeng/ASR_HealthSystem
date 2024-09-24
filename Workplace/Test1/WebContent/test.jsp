<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page import="java.sql.*" %>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Home</title>
<!-- load stylesheets -->

<link rel="stylesheet" href="font-awesome-4.6.3/css/font-awesome.min.css">            <!-- Font awesome 字体库-->
<link rel="stylesheet" href="css/bootstrap.min.css">                                  <!-- Bootstrap style 	Bootstrap4框架-->
<link rel="stylesheet" href="css/hero-slider-style.css">                              <!-- Hero slider style (https://codyhouse.co/gem/hero-slider/)一个简单的 CSS & jQuery 全屏响应式幻灯片 -->
<link rel="stylesheet" href="css/magnific-popup.css">                                 <!-- Magnific popup style (http://dimsemenov.com/plugins/magnific-popup/) -->

<link rel="stylesheet" href="css/templatemo-style.css">                               <!-- Templatemo style -->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
			  
<!-- Content -->
<div class="cd-hero">

	<!-- Navigation -->        
	<div class="cd-slider-nav">
		<nav class="navbar">

			<button class="navbar-toggler hidden-md-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
				&#9776;
			</button>
			<div class="collapse navbar-toggleable-sm text-xs-center text-uppercase tm-navbar" id="tmNavbar">
				<ul class="nav navbar-nav">
					<li class="nav-item active selected">
						<a class="nav-link" href="#0" data-no="1">查询主页 <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#0" data-no="2">智能问诊</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#0" data-no="3">用户体验</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#0" data-no="4">产品介绍</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#0" data-no="5">取得联系</a>
					</li>
				</ul>
			</div>
		</nav>
	</div> 
	
	<ul class="cd-hero-slider">  <!-- autoplay -->
		<li class="selected">
			<div class="cd-full-width">
				<div class="container-fluid js-tm-page-content tm-page-1" data-page-no="1">
					
					<div class="row">
					<!-- 查询栏 -->
						<div class="col-xs-12" id="select-box" style="display:block">
							
							<h2 class="tm-site-name">智能问诊系统</h2>
							<div class="tm-bg-white-translucent text-xs-left tm-textbox tm-textbox-1-col">
								
								<div class="tm-serch"><p class="tm-site-name" style="color: #D58512;">疾病名称/症状查询</p></div>
								<div class="serch-line"><form action='FirstSql'  name="selectForm"><input class="serch-blank" type="text" name="key">
								<input class= 'serch' type="submit" value="查询" name='select-ills'>
								<a onclick='selectkey(this)'>显示></a>
								</form></div>
								<div class= "serch-blank" ><a  onclick="selectbyke(this)"/>按科室查询>></div>
							</div>
						</div>
						<div class="col-xs-12" id="key-box" style="display:none;">
						<div class="tm-bg-white-translucent text-xs-left tm-textbox tm-textbox-1-col">
	                 <table border="1px">
		                <tr>
			            <th width="100">name</th>
			            <th width="100">ills</th>
		             </tr>
         
		          <c:forEach items="${key_list}" var="usr" varStatus="idx">
                      <tr>
				          <td>${usr.name}</td><td>${usr.ills}</td> 
			           </tr>
		              </c:forEach>

	             </table>
	              <div class= "serch-blank" ><a  onclick="selectback(this)"/>返回查询>></div>
                              </div></div>
                           
						<div class="col-xs-12" id="ills-box" style="display:none">							
							<div class="tm-bg-white-translucent text-xs-left tm-textbox tm-textbox-1-col">		
							<a onclick="selectGUKE(this)" ></a>						
                                       <table border="1px">
			<tr>
				<th width="50">No.</th>
				<th width="100">Name.</th>
				
			</tr>
			<tr>
				<td>1</td>
				<td id="FC-nav"><a onclick="selectFCKE(this)">产妇科</a></td>
			</tr>
			<tr>
				<td>2</td>
				<td id="ER-nav"><a onclick="selectERKE(this)">耳科</a></td>
			</tr>
			<tr>
				<td>3</td>
				<td id="GC-nav"><a onclick="selectGCKE(this)">肛肠科</a></td>
			</tr>
			<tr>
				<td>4</td>
				<td id="KU-nav"><a onclick="selectGUKE(this)">骨科</a></td>
			</tr>
			<tr>
				<td>5</td>
				<td id='JSXL-nav'><a onclick="selectJSXLKE(this)">精神心理科</a></td>
			</tr>
			<tr>
				<td>6</td>
				<td id='KQ-nav'><a onclick="selectKQKE(this)">口腔科</a></td>
			</tr>
			<tr>
				<td>7</td>
				<td id="NAN-nav"><a onclick="selectNAKE(this)">男科</a></td>
			</tr>
			<tr>
				<td>8</td>
				<td id="NEI-nav"><a onclick="selectNEIKE(this)">内科</a></td>
			</tr>
			<tr>
				<td>9</td>
				<td id="PFXB-nav"><a onclick="selectPFXBKE(this)">皮肤性病科</a></td>
			</tr>
			<tr>
				<td>10</td>
				<td id="WAI-nav"><a onclick="selectWAIKE(this)">外科</a></td>
			</tr>
			<tr>
				<td>11</td>
				<td id="YAN-nav"><a onclick="selectYANKE(this)">眼科</a></td>
			</tr>
		</table>

								
								<div class= "serch-blank" ><a  onclick="selectback(this)"/>返回查询>></div>
							</div>
						</div>
						<div class="col-xs-12" id="ERKE-box" style="display:none">							
							<div class="tm-bg-white-translucent text-xs-left tm-textbox tm-textbox-1-col">								
                                               <% 
                                               Connection con=null;
                                               Statement sql=null;
                                               ResultSet rs=null;                                              
                                                 try{Class.forName("oracle.jdbc.OracleDriver");
                                                    }
                                                catch(ClassNotFoundException e){}
                                                   try
                                  { con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Orcl","scott","tiger");
                                             //判断数据库连接是否成功
                                           if(con!=null)
                                         {
                              System.out.println("Oracle数据库间接成功");
                                       }else{
                                  System.out.println("Oracle数据库连接失败");
                                         }
                                  sql=con.createStatement();
                                  rs=sql.executeQuery("select * from ERKE");
                                  
                                  out.print("<Table Border>");
                                  out.print("<TR>");
                                  out.print("<TH width=100>"+"病症名称");
                                  out.print("<TH width=100>"+"症状");
                                  out.print("</TR>");
                                  int i = 0;
                                  while(rs.next() && i<15) //每页查询小于15
                                 { out.print("<TR>");
                                String s = rs.getString(1);                             //int n=rs.getInt(1);                                                             
                                  out.print("<td >"+s+"</td>");
                             String e=rs.getString(2);
                            
                             %>
                             <td><a >
                             <% out.print(e);  %>
                             </a></td>
                             <%
                                   out.print("</TR>") ;
                                  i+=1;
                                    }
                                 
                                  out.print("</Table>");
                                con.close();
                                     }
                          catch(SQLException e1) {out.print(""+e1);}
                                         %>
                          

								<div class="page" style="margin:0 auto;"><a/>页码<a />1<a /> 2<a/> 3<a /> 4<a />....</div>
								<div class= "serch-blank" ><a  onclick="selectbyke(this)"/>返回查询>></div>
							</div>
				</div>
						
                     	<div class="col-xs-12" id="GUKE-box" style="display:none">							
							<div class="tm-bg-white-translucent text-xs-left tm-textbox tm-textbox-1-col">								
                                               <% 
                                                                                       
                                                 try{Class.forName("oracle.jdbc.OracleDriver");
                                                    }
                                                catch(ClassNotFoundException e){}
                                                   try
                                  { con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Orcl","scott","tiger");
                                             //判断数据库连接是否成功
                                           if(con!=null)
                                         {
                              System.out.println("Oracle数据库间接成功");
                                       }else{
                                  System.out.println("Oracle数据库连接失败");
                                         }
                                  sql=con.createStatement();
                                  rs=sql.executeQuery("select * from GUKE");
                                  out.print("<Table Border>");
                                  out.print("<TR>");
                                  out.print("<TH width=100>"+"病症名称");
                                  out.print("<TH width=100>"+"症状");
                                  out.print("</TR>");
                                  int i = 0;
                                  while(rs.next() && i<15) //每页查询小于15
                                 { out.print("<TR>");
                                String s = rs.getString(1);                             //int n=rs.getInt(1);                                                             
                                  out.print("<td >"+s+"</td>");
                             String e=rs.getString(2);
                            
                             %>
                             <td><a >
                             <% out.print(e);  %>
                             </a></td>
                             <%
                                   out.print("</TR>") ;
                                  i+=1;
                                    }
                                 
                                  out.print("</Table>");
                                con.close();
                                     }
                          catch(SQLException e1) {out.print(""+e1);}
                                         %>
                          

								<div class="page" style="margin:0 auto;"><a/>页码<a />1<a /> 2<a/> 3<a /> 4<a />....</div>
								<div class= "serch-blank" ><a  onclick="selectbyke(this)"/>返回查询>></div>
							</div>
				</div>
				<div class="col-xs-12" id="FCKE-box" style="display:none">							
							<div class="tm-bg-white-translucent text-xs-left tm-textbox tm-textbox-1-col">								
                                               <% 
                                                                                       
                                                 try{Class.forName("oracle.jdbc.OracleDriver");
                                                    }
                                                catch(ClassNotFoundException e){}
                                                   try
                                  { con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Orcl","scott","tiger");
                                             //判断数据库连接是否成功
                                           if(con!=null)
                                         {
                              System.out.println("Oracle数据库间接成功");
                                       }else{
                                  System.out.println("Oracle数据库连接失败");
                                         }
                                  sql=con.createStatement();
                                  rs=sql.executeQuery("select * from FCKE");
                                  out.print("<Table Border>");
                                  out.print("<TR>");
                                  out.print("<TH width=100>"+"病症名称");
                                  out.print("<TH width=100>"+"症状");
                                  out.print("</TR>");
                                  int i = 0;
                                  while(rs.next() && i<15) //每页查询小于15
                                 { out.print("<TR>");
                                String s = rs.getString(1);                             //int n=rs.getInt(1);                                                             
                                  out.print("<td >"+s+"</td>");
                             String e=rs.getString(2);
                            
                             %>
                             <td><a >
                             <% out.print(e);  %>
                             </a></td>
                             <%
                                   out.print("</TR>") ;
                                  i+=1;
                                    }
                                 
                                  out.print("</Table>");
                                con.close();
                                     }
                          catch(SQLException e1) {out.print(""+e1);}
                                         %>
                          

								<div class="page" style="margin:0 auto;"><a/>页码<a />1<a /> 2<a/> 3<a /> 4<a />....</div>
								<div class= "serch-blank" ><a  onclick="selectbyke(this)"/>返回查询>></div>
							</div>
				</div>

<div class="col-xs-12" id="GCKE-box" style="display:none">							
							<div class="tm-bg-white-translucent text-xs-left tm-textbox tm-textbox-1-col">								
                                               <% 
                                                                                       
                                                 try{Class.forName("oracle.jdbc.OracleDriver");
                                                    }
                                                catch(ClassNotFoundException e){}
                                                   try
                                  { con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Orcl","scott","tiger");
                                             //判断数据库连接是否成功
                                           if(con!=null)
                                         {
                              System.out.println("Oracle数据库间接成功");
                                       }else{
                                  System.out.println("Oracle数据库连接失败");
                                         }
                                  sql=con.createStatement();
                                  rs=sql.executeQuery("select * from GCKE");
                                  out.print("<Table Border>");
                                  out.print("<TR>");
                                  out.print("<TH width=100>"+"病症名称");
                                  out.print("<TH width=100>"+"症状");
                                  out.print("</TR>");
                                  int i = 0;
                                  while(rs.next() && i<15) //每页查询小于15
                                 { out.print("<TR>");
                                String s = rs.getString(1);                             //int n=rs.getInt(1);                                                             
                                  out.print("<td >"+s+"</td>");
                             String e=rs.getString(2);
                            
                             %>
                             <td><a >
                             <% out.print(e);  %>
                             </a></td>
                             <%
                                   out.print("</TR>") ;
                                  i+=1;
                                    }
                                 
                                  out.print("</Table>");
                                con.close();
                                     }
                          catch(SQLException e1) {out.print(""+e1);}
                                         %>
                          

								<div class="page" style="margin:0 auto;"><a/>页码<a />1<a /> 2<a/> 3<a /> 4<a />....</div>
								<div class= "serch-blank" ><a  onclick="selectbyke(this)"/>返回查询>></div>
							</div>
				</div>				
				<div class="col-xs-12" id="JSXLKE-box" style="display:none">							
							<div class="tm-bg-white-translucent text-xs-left tm-textbox tm-textbox-1-col">								
                                               <% 
                                                                                       
                                                 try{Class.forName("oracle.jdbc.OracleDriver");
                                                    }
                                                catch(ClassNotFoundException e){}
                                                   try
                                  { con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Orcl","scott","tiger");
                                             //判断数据库连接是否成功
                                           if(con!=null)
                                         {
                              System.out.println("Oracle数据库间接成功");
                                       }else{
                                  System.out.println("Oracle数据库连接失败");
                                         }
                                  sql=con.createStatement();
                                  rs=sql.executeQuery("select * from JSXLKE");
                                  out.print("<Table Border>");
                                  out.print("<TR>");
                                  out.print("<TH width=100>"+"病症名称");
                                  out.print("<TH width=100>"+"症状");
                                  out.print("</TR>");
                                  int i = 0;
                                  while(rs.next() && i<15) //每页查询小于15
                                 { out.print("<TR>");
                                String s = rs.getString(1);                             //int n=rs.getInt(1);                                                             
                                  out.print("<td >"+s+"</td>");
                             String e=rs.getString(2);
                            
                             %>
                             <td><a >
                             <% out.print(e);  %>
                             </a></td>
                             <%
                                   out.print("</TR>") ;
                                  i+=1;
                                    }
                                 
                                  out.print("</Table>");
                                con.close();
                                     }
                          catch(SQLException e1) {out.print(""+e1);}
                                         %>
                          

								<div class="page" style="margin:0 auto;"><a/>页码<a />1<a /> 2<a/> 3<a /> 4<a />....</div>
								<div class= "serch-blank" ><a  onclick="selectbyke(this)"/>返回查询>></div>
							</div>
				</div>
				<div class="col-xs-12" id="KQKE-box" style="display:none">							
							<div class="tm-bg-white-translucent text-xs-left tm-textbox tm-textbox-1-col">								
                                               <% 
                                                                                       
                                                 try{Class.forName("oracle.jdbc.OracleDriver");
                                                    }
                                                catch(ClassNotFoundException e){}
                                                   try
                                  { con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Orcl","scott","tiger");
                                             //判断数据库连接是否成功
                                           if(con!=null)
                                         {
                              System.out.println("Oracle数据库间接成功");
                                       }else{
                                  System.out.println("Oracle数据库连接失败");
                                         }
                                  sql=con.createStatement();
                                  rs=sql.executeQuery("select * from KQKE");
                                  out.print("<Table Border>");
                                  out.print("<TR>");
                                  out.print("<TH width=100>"+"病症名称");
                                  out.print("<TH width=100>"+"症状");
                                  out.print("</TR>");
                                  int i = 0;
                                  while(rs.next() && i<15) //每页查询小于15
                                 { out.print("<TR>");
                                String s = rs.getString(1);                             //int n=rs.getInt(1);                                                             
                                  out.print("<td >"+s+"</td>");
                             String e=rs.getString(2);
                            
                             %>
                             <td><a >
                             <% out.print(e);  %>
                             </a></td>
                             <%
                                   out.print("</TR>") ;
                                  i+=1;
                                    }
                                 
                                  out.print("</Table>");
                                con.close();
                                     }
                          catch(SQLException e1) {out.print(""+e1);}
                                         %>
                          

								<div class="page" style="margin:0 auto;"><a/>页码<a />1<a /> 2<a/> 3<a /> 4<a />....</div>
								<div class= "serch-blank" ><a  onclick="selectbyke(this)"/>返回查询>></div>
							</div>
				</div>
				<div class="col-xs-12" id="NAKE-box" style="display:none">							
							<div class="tm-bg-white-translucent text-xs-left tm-textbox tm-textbox-1-col">								
                                               <% 
                                                                                       
                                                 try{Class.forName("oracle.jdbc.OracleDriver");
                                                    }
                                                catch(ClassNotFoundException e){}
                                                   try
                                  { con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Orcl","scott","tiger");
                                             //判断数据库连接是否成功
                                           if(con!=null)
                                         {
                              System.out.println("Oracle数据库间接成功");
                                       }else{
                                  System.out.println("Oracle数据库连接失败");
                                         }
                                  sql=con.createStatement();
                                  rs=sql.executeQuery("select * from NAKE");
                                  out.print("<Table Border>");
                                  out.print("<TR>");
                                  out.print("<TH width=100>"+"病症名称");
                                  out.print("<TH width=100>"+"症状");
                                  out.print("</TR>");
                                  int i = 0;
                                  while(rs.next() && i<15) //每页查询小于15
                                 { out.print("<TR>");
                                String s = rs.getString(1);                             //int n=rs.getInt(1);                                                             
                                  out.print("<td >"+s+"</td>");
                             String e=rs.getString(2);
                            
                             %>
                             <td><a >
                             <% out.print(e);  %>
                             </a></td>
                             <%
                                   out.print("</TR>") ;
                                  i+=1;
                                    }
                                 
                                  out.print("</Table>");
                                con.close();
                                     }
                          catch(SQLException e1) {out.print(""+e1);}
                                         %>
                          

								<div class="page" style="margin:0 auto;"><a/>页码<a />1<a /> 2<a/> 3<a /> 4<a />....</div>
								<div class= "serch-blank" ><a  onclick="selectbyke(this)"/>返回查询>></div>
							</div>
				</div>
				<div class="col-xs-12" id="NEIKE-box" style="display:none">							
							<div class="tm-bg-white-translucent text-xs-left tm-textbox tm-textbox-1-col">								
                                               <% 
                                                                                       
                                                 try{Class.forName("oracle.jdbc.OracleDriver");
                                                    }
                                                catch(ClassNotFoundException e){}
                                                   try
                                  { con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Orcl","scott","tiger");
                                             //判断数据库连接是否成功
                                           if(con!=null)
                                         {
                              System.out.println("Oracle数据库间接成功");
                                       }else{
                                  System.out.println("Oracle数据库连接失败");
                                         }
                                  sql=con.createStatement();
                                  rs=sql.executeQuery("select * from NEIKE");
                                  out.print("<Table Border>");
                                  out.print("<TR>");
                                  out.print("<TH width=100>"+"病症名称");
                                  out.print("<TH width=100>"+"症状");
                                  out.print("</TR>");
                                  int i = 0;
                                  while(rs.next() && i<15) //每页查询小于15
                                 { out.print("<TR>");
                                String s = rs.getString(1);                             //int n=rs.getInt(1);                                                             
                                  out.print("<td >"+s+"</td>");
                             String e=rs.getString(2);
                            
                             %>
                             <td><a >
                             <% out.print(e);  %>
                             </a></td>
                             <%
                                   out.print("</TR>") ;
                                  i+=1;
                                    }
                                 
                                  out.print("</Table>");
                                con.close();
                                     }
                          catch(SQLException e1) {out.print(""+e1);}
                                         %>
                          

								<div class="page" style="margin:0 auto;"><a/>页码<a />1<a /> 2<a/> 3<a /> 4<a />....</div>
								<div class= "serch-blank" ><a  onclick="selectbyke(this)"/>返回查询>></div>
							</div>
				</div>
				<div class="col-xs-12" id="PFXBKE-box" style="display:none">							
							<div class="tm-bg-white-translucent text-xs-left tm-textbox tm-textbox-1-col">								
                                               <% 
                                                                                       
                                                 try{Class.forName("oracle.jdbc.OracleDriver");
                                                    }
                                                catch(ClassNotFoundException e){}
                                                   try
                                  { con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Orcl","scott","tiger");
                                             //判断数据库连接是否成功
                                           if(con!=null)
                                         {
                              System.out.println("Oracle数据库间接成功");
                                       }else{
                                  System.out.println("Oracle数据库连接失败");
                                         }
                                  sql=con.createStatement();
                                  rs=sql.executeQuery("select * from PFXBK");
                                  out.print("<Table Border>");
                                  out.print("<TR>");
                                  out.print("<TH width=100>"+"病症名称");
                                  out.print("<TH width=100>"+"症状");
                                  out.print("</TR>");
                                  int i = 0;
                                  while(rs.next() && i<15) //每页查询小于15
                                 { out.print("<TR>");
                                String s = rs.getString(1);                             //int n=rs.getInt(1);                                                             
                                  out.print("<td >"+s+"</td>");
                             String e=rs.getString(2);
                            
                             %>
                             <td><a >
                             <% out.print(e);  %>
                             </a></td>
                             <%
                                   out.print("</TR>") ;
                                  i+=1;
                                    }
                                 
                                  out.print("</Table>");
                                con.close();
                                     }
                          catch(SQLException e1) {out.print(""+e1);}
                                         %>
                          

								<div class="page" style="margin:0 auto;"><a/>页码<a />1<a /> 2<a/> 3<a /> 4<a />....</div>
								<div class= "serch-blank" ><a  onclick="selectbyke(this)"/>返回查询>></div>
							</div>
				</div>
				<div class="col-xs-12" id="WAIKE-box" style="display:none">							
							<div class="tm-bg-white-translucent text-xs-left tm-textbox tm-textbox-1-col">								
                                               <% 
                                                                                       
                                                 try{Class.forName("oracle.jdbc.OracleDriver");
                                                    }
                                                catch(ClassNotFoundException e){}
                                                   try
                                  { con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Orcl","scott","tiger");
                                             //判断数据库连接是否成功
                                           if(con!=null)
                                         {
                              System.out.println("Oracle数据库间接成功");
                                       }else{
                                  System.out.println("Oracle数据库连接失败");
                                         }
                                  sql=con.createStatement();
                                  rs=sql.executeQuery("select * from WAIKE");
                                  out.print("<Table Border>");
                                  out.print("<TR>");
                                  out.print("<TH width=100>"+"病症名称");
                                  out.print("<TH width=100>"+"症状");
                                  out.print("</TR>");
                                  int i = 0;
                                  while(rs.next() && i<15) //每页查询小于15
                                 { out.print("<TR>");
                                String s = rs.getString(1);                             //int n=rs.getInt(1);                                                             
                                  out.print("<td >"+s+"</td>");
                             String e=rs.getString(2);
                            
                             %>
                             <td><a >
                             <% out.print(e);  %>
                             </a></td>
                             <%
                                   out.print("</TR>") ;
                                  i+=1;
                                    }
                                 
                                  out.print("</Table>");
                                con.close();
                                     }
                          catch(SQLException e1) {out.print(""+e1);}
                                         %>
                          

								<div class="page" style="margin:0 auto;"><a/>页码<a />1<a /> 2<a/> 3<a /> 4<a />....</div>
								<div class= "serch-blank" ><a  onclick="selectbyke(this)"/>返回查询>></div>
							</div>
				</div>
				<div class="col-xs-12" id="YANKE-box" style="display:none">							
							<div class="tm-bg-white-translucent text-xs-left tm-textbox tm-textbox-1-col">								
                                               <% 
                                                                                       
                                                 try{Class.forName("oracle.jdbc.OracleDriver");
                                                    }
                                                catch(ClassNotFoundException e){}
                                                   try
                                  { con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Orcl","scott","tiger");
                                             //判断数据库连接是否成功
                                           if(con!=null)
                                         {
                              System.out.println("Oracle数据库间接成功");
                                       }else{
                                  System.out.println("Oracle数据库连接失败");
                                         }
                                  sql=con.createStatement();
                                  rs=sql.executeQuery("select * from YANKE");
                                  out.print("<Table Border>");
                                  out.print("<TR>");
                                  out.print("<TH width=100>"+"病症名称");
                                  out.print("<TH width=100>"+"症状");
                                  out.print("</TR>");
                                  int i = 0;
                                  while(rs.next() && i<15) //每页查询小于15
                                 { out.print("<TR>");
                                String s = rs.getString(1);                             //int n=rs.getInt(1);                                                             
                                  out.print("<td >"+s+"</td>");
                             String e=rs.getString(2);
                            
                             %>
                             <td><a >
                             <% out.print(e);  %>
                             </a></td>
                             <%
                                   out.print("</TR>") ;
                                  i+=1;
                                    }
                                 
                                  out.print("</Table>");
                                con.close();
                                     }
                          catch(SQLException e1) {out.print(""+e1);}
                                         %>
                          

								<div class="page" style="margin:0 auto;"><a/>页码<a />1<a /> 2<a/> 3<a /> 4<a />....</div>
								<div class= "serch-blank" ><a  onclick="selectbyke(this)"/>返回查询>></div>
							</div>
				</div>
						<!-- 查询模块 -->
						<script>
						function selectkey(id){
							 document.getElementById("select-box").style.display='none';
							 document.getElementById("key-box").style.display='block';
						 }
						 function selectbyke(id){
							 document.getElementById("key-box").style.display='none';
							document.getElementById("select-box").style.display='none';
							document.getElementById("ills-box").style.display='block';
							document.getElementById("GUKE-box").style.display='none';
							document.getElementById("ERKE-box").style.display='none';
							document.getElementById("YANKE-box").style.display='none';
							document.getElementById("WAIKE-box").style.display='none';
							document.getElementById("NEIKE-box").style.display='none';
							document.getElementById("NAKE-box").style.display='none';
							document.getElementById("JSXLKE-box").style.display='none';
							document.getElementById("KQKE-box").style.display='none';
							document.getElementById("FCKE-box").style.display='none';
							document.getElementById("PFXBKE-box").style.display='none';
							document.getElementById("GCKE-box").style.display='none';
							
						};
						 function selectback(id){
							 document.getElementById("key-box").style.display='none';
								document.getElementById("select-box").style.display='block';
								document.getElementById("ills-box").style.display='none';
								document.getElementById("GUKE-box").style.display='none';
								document.getElementById("ERKE-box").style.display='none';
								document.getElementById("YANKE-box").style.display='none';
								document.getElementById("WAIKE-box").style.display='none';
								document.getElementById("NEIKE-box").style.display='none';
								document.getElementById("NAKE-box").style.display='none';
								document.getElementById("JSXLKE-box").style.display='none';
								document.getElementById("KQKE-box").style.display='none';
								document.getElementById("FCKE-box").style.display='none';
								document.getElementById("PFXBKE-box").style.display='none';
								document.getElementById("GCKE-box").style.display='none';
							};
                          function selectGUKE(id){
                        	  document.getElementById("key-box").style.display='none';
								document.getElementById("select-box").style.display='none';
								document.getElementById("ills-box").style.display='none';
								document.getElementById("GUKE-box").style.display='block';
								document.getElementById("ERKE-box").style.display='none';
								document.getElementById("YANKE-box").style.display='none';
								document.getElementById("WAIKE-box").style.display='none';
								document.getElementById("NEIKE-box").style.display='none';
								document.getElementById("NAKE-box").style.display='none';
								document.getElementById("JSXLKE-box").style.display='none';
								document.getElementById("KQKE-box").style.display='none';
								document.getElementById("FCKE-box").style.display='none';
								document.getElementById("PFXBKE-box").style.display='none';
								document.getElementById("GCKE-box").style.display='none';
							};
						 function selectERKE(id){
							 document.getElementById("key-box").style.display='none';
							 document.getElementById("select-box").style.display='none';
								document.getElementById("ills-box").style.display='none';
								document.getElementById("GUKE-box").style.display='none';
								document.getElementById("ERKE-box").style.display='block';
								document.getElementById("YANKE-box").style.display='none';
								document.getElementById("WAIKE-box").style.display='none';
								document.getElementById("NEIKE-box").style.display='none';
								document.getElementById("NAKE-box").style.display='none';
								document.getElementById("JSXLKE-box").style.display='none';
								document.getElementById("KQKE-box").style.display='none';
								document.getElementById("FCKE-box").style.display='none';
								document.getElementById("PFXBKE-box").style.display='none';
								document.getElementById("GCKE-box").style.display='none';
						 }
						 function selectYANKE(id){
							 document.getElementById("key-box").style.display='none';
							 document.getElementById("select-box").style.display='none';
								document.getElementById("ills-box").style.display='none';
								document.getElementById("GUKE-box").style.display='none';
								document.getElementById("ERKE-box").style.display='none';
								document.getElementById("YANKE-box").style.display='block';
								document.getElementById("WAIKE-box").style.display='none';
								document.getElementById("NEIKE-box").style.display='none';
								document.getElementById("NAKE-box").style.display='none';
								document.getElementById("JSXLKE-box").style.display='none';
								document.getElementById("KQKE-box").style.display='none';
								document.getElementById("FCKE-box").style.display='none';
								document.getElementById("PFXBKE-box").style.display='none';
								document.getElementById("GCKE-box").style.display='none';
						 }
						 function selectWAIKE(id){
							 document.getElementById("key-box").style.display='none';
							 document.getElementById("select-box").style.display='none';
								document.getElementById("ills-box").style.display='none';
								document.getElementById("GUKE-box").style.display='none';
								document.getElementById("ERKE-box").style.display='none';
								document.getElementById("YANKE-box").style.display='none';
								document.getElementById("WAIKE-box").style.display='block';
								document.getElementById("NEIKE-box").style.display='none';
								document.getElementById("NAKE-box").style.display='none';
								document.getElementById("JSXLKE-box").style.display='none';
								document.getElementById("KQKE-box").style.display='none';
								document.getElementById("FCKE-box").style.display='none';
								document.getElementById("PFXBKE-box").style.display='none';
								document.getElementById("GCKE-box").style.display='none';
						 }
						 function selectNEIKE(id){
							 document.getElementById("key-box").style.display='none';
							 document.getElementById("select-box").style.display='none';
								document.getElementById("ills-box").style.display='none';
								document.getElementById("GUKE-box").style.display='none';
								document.getElementById("ERKE-box").style.display='none';
								document.getElementById("YANKE-box").style.display='none';
								document.getElementById("WAIKE-box").style.display='none';
								document.getElementById("NEIKE-box").style.display='block';
								document.getElementById("NAKE-box").style.display='none';
								document.getElementById("JSXLKE-box").style.display='none';
								document.getElementById("KQKE-box").style.display='none';
								document.getElementById("FCKE-box").style.display='none';
								document.getElementById("PFXBKE-box").style.display='none';
								document.getElementById("GCKE-box").style.display='none';
						 }
						 function selectNAKE(id){
							 document.getElementById("key-box").style.display='none';
							 document.getElementById("select-box").style.display='none';
								document.getElementById("ills-box").style.display='none';
								document.getElementById("GUKE-box").style.display='none';
								document.getElementById("ERKE-box").style.display='none';
								document.getElementById("YANKE-box").style.display='none';
								document.getElementById("WAIKE-box").style.display='none';
								document.getElementById("NEIKE-box").style.display='none';
								document.getElementById("NAKE-box").style.display='block';
								document.getElementById("JSXLKE-box").style.display='none';
								document.getElementById("KQKE-box").style.display='none';
								document.getElementById("FCKE-box").style.display='none';
								document.getElementById("PFXBKE-box").style.display='none';
								document.getElementById("GCKE-box").style.display='none';
						 }
						 function selectJSXLKE(id){
							 document.getElementById("key-box").style.display='none';
							 document.getElementById("select-box").style.display='none';
								document.getElementById("ills-box").style.display='none';
								document.getElementById("GUKE-box").style.display='none';
								document.getElementById("ERKE-box").style.display='none';
								document.getElementById("YANKE-box").style.display='none';
								document.getElementById("WAIKE-box").style.display='none';
								document.getElementById("NEIKE-box").style.display='none';
								document.getElementById("NAKE-box").style.display='none';
								document.getElementById("JSXLKE-box").style.display='block';
								document.getElementById("KQKE-box").style.display='none';
								document.getElementById("FCKE-box").style.display='none';
								document.getElementById("PFXBKE-box").style.display='none';
								document.getElementById("GCKE-box").style.display='none';
						 }
						 function selectKQKE(id){
							 document.getElementById("key-box").style.display='none';
							 document.getElementById("select-box").style.display='none';
								document.getElementById("ills-box").style.display='none';
								document.getElementById("GUKE-box").style.display='none';
								document.getElementById("ERKE-box").style.display='none';
								document.getElementById("YANKE-box").style.display='none';
								document.getElementById("WAIKE-box").style.display='none';
								document.getElementById("NEIKE-box").style.display='none';
								document.getElementById("NAKE-box").style.display='none';
								document.getElementById("JSXLKE-box").style.display='none';
								document.getElementById("KQKE-box").style.display='block';
								document.getElementById("FCKE-box").style.display='none';
								document.getElementById("PFXBKE-box").style.display='none';
								document.getElementById("GCKE-box").style.display='none';
						 }
						 function selectFCKE(id){
							 document.getElementById("key-box").style.display='none';
							 document.getElementById("select-box").style.display='none';
								document.getElementById("ills-box").style.display='none';
								document.getElementById("GUKE-box").style.display='none';
								document.getElementById("ERKE-box").style.display='none';
								document.getElementById("YANKE-box").style.display='none';
								document.getElementById("WAIKE-box").style.display='none';
								document.getElementById("NEIKE-box").style.display='none';
								document.getElementById("NAKE-box").style.display='none';
								document.getElementById("JSXLKE-box").style.display='none';
								document.getElementById("KQKE-box").style.display='none';
								document.getElementById("FCKE-box").style.display='block';
								document.getElementById("PFXBKE-box").style.display='none';
								document.getElementById("GCKE-box").style.display='none';
						 }
						 function selectPFXBKE(id){
							 document.getElementById("key-box").style.display='none';
							 document.getElementById("select-box").style.display='none';
								document.getElementById("ills-box").style.display='none';
								document.getElementById("GUKE-box").style.display='none';
								document.getElementById("ERKE-box").style.display='none';
								document.getElementById("YANKE-box").style.display='none';
								document.getElementById("WAIKE-box").style.display='none';
								document.getElementById("NEIKE-box").style.display='none';
								document.getElementById("NAKE-box").style.display='none';
								document.getElementById("JSXLKE-box").style.display='none';
								document.getElementById("KQKE-box").style.display='none';
								document.getElementById("FCKE-box").style.display='none';
								document.getElementById("PFXBKE-box").style.display='block';
								document.getElementById("GCKE-box").style.display='none';
						 }
						 function selectGCKE(id){
							 document.getElementById("key-box").style.display='none';
							 document.getElementById("select-box").style.display='none';
								document.getElementById("ills-box").style.display='none';
								document.getElementById("GUKE-box").style.display='none';
								document.getElementById("ERKE-box").style.display='none';
								document.getElementById("YANKE-box").style.display='none';
								document.getElementById("WAIKE-box").style.display='none';
								document.getElementById("NEIKE-box").style.display='none';
								document.getElementById("NAKE-box").style.display='none';
								document.getElementById("JSXLKE-box").style.display='none';
								document.getElementById("KQKE-box").style.display='none';
								document.getElementById("FCKE-box").style.display='none';
								document.getElementById("PFXBKE-box").style.display='none';
								document.getElementById("GCKE-box").style.display='block';
						 }
						</script>
						

					</div>

				</div>
			</div> <!-- .cd-full-width -->
		</li>

		<li>
			<div class="cd-full-width">

				<div class="container-fluid js-tm-page-content" data-page-no="2">
					<div class="row">
						<div class="col-xs-12">
							<div class="tm-2-col-container">
					
								<div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox" >
									<a id='switch_sys' href='#'> </a>
									<style>#switch_sys{
    
    display:block;
    padding-left: 88px;
    background-image:url("img/bg-001.jpg");
    width:200px;
    height:160px;
    }</style>
	
								<div class="chat_box">
								<p class="question" >Hello,我是机器人DVA!请问有什么不舒服的吗？</p>
									<p  class="answer" id="answer" > </p>
									<p  class="question" id="sec-question" onclick="test(this)">请稍后...</p>
				                  
	  <form id="answerkeyform" action='answerSql' style="display:none"><input class="answer" name="answerkey" id="answerkey" value=""/>
	  <input class="answer" type="submit" value="查询" ></form>
                    
				<c:forEach items="${res_list}" var="a" varStatus="idx">
                      <tr>
				          <td>${a.name}</td><td>${a.ills}</td> 
			           </tr>
		              </c:forEach>
		  
									</div>									
								</div>
	<style>
	input.answer{
	border:0px;
	outline:none;
	color:blue;
	font-size:24px;
	width:50%;
	float:left;
	}
	
	</style>
	<script>
								
	function question(id){
	var textbox=document.getElementById("textbox").value;
	  var answer=document.getElementById("answer");
         answer.innerHTML=textbox;
              setTimeout(100);
  document.getElementById("sec-question").style.display='block';
									  
		}
							
function test(id){
	var str=document.getElementById("textbox").value;
	if(str== null || str== undefined || str== '') alert("不能为空！");
	
	//console.log(str);
	var pattern1 = /[牙心脚眼耳嘴鼻口皮头肝胃腿投偷雅透呀]/;
    // console.log(pattern1.exec(str)[0]);
	var pattern2 = /[疼痒痛同通铜羊样腾藤]/;
	
    console.log(pattern2.exec(str));
   // console.log(typeof(pattern2.exec(str)[0]));
    var getStr = new Array();
    
    if(pattern1.exec(str)!=null){
    	getStr.push(pattern1.exec(str)[0]);
    }
    if(pattern2.exec(str)!=null){
    	getStr.push(pattern2.exec(str)[0]);
    }	
    var answer = getStr.join("");
    //console.log(answer);
	 if(answer== null || answer== undefined || answer== '') alert("识别无效！");
	
	answer=answer.replace(/通/g,"痛");
	answer=answer.replace(/[羊样]/g,"痒");
	answer=answer.replace(/[腾藤]/g,"疼");
	answer=answer.replace(/[偷投透]/g,"头");
	answer=answer.replace(/[雅呀]/g,"牙");
	console.log(answer);
    document.getElementById("answerkeyform").style.display='block';


    document.getElementById("answerkey").value=answer;
  /*   $.ajax({
        url : 'answerSql',
        type : 'POST',
        data : {
            answer : answer
        }, */
        
         /* success : function(res){
             // console.log(ansName);
            //  console.log("222222222222");
        }
    });  */
   
	
}
</script>
					<style>p.question{
    
    color:red;
    font-size:24px;
    background:white;
    
    }
    p.answer{
    
    color:blue;
    font-size:24px;
    background:white;
    
    }
      #sec-question{
      display:none;
      }
    </style>
<div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox">
 <div id="mainpage">

	<h1><center>智能语音识别框</center></h1>
	<div id="page_text" style="
    padding-left: 5%;
    padding-right: 5%;
    padding-top: 10px;
    padding-bottom: 10px;
    min-height: 600px;
">
		<textarea id="textbox" style="width:480px;height:580px;font-size: 32px;font-family: inherit;"></textarea>
	</div>
	<div id="ctrl_btns">
		<center>
		<button id="btn_start_record">开始录制</button>

		<button id="btn_end_record">停止录制</button>

		<button id="btn_upload">上传识别</button>
		<button id="btn_question" onclick="question(this)">开始问诊</button>
		</center>
	</div>
	
	<div id="wav_pannel">
	</div>

 </div>
</div>




<!-- jQuery -->
<script src="plugins/jQuery/jquery.min.js"></script>
<script src="plugins/Recorder/recorder-core.js"></script> <!--录音核心JS文件-->

<script src="plugins/Recorder/engine/wav.js"></script> <!--相应格式支持文件；如果需要多个格式支持，把这些格式的编码引擎js文件放到后面统统加载进来即可-->

<script src="plugins/Recorder/extensions/waveview.js"></script>  <!--可选的扩展支持项-->
<script>
var blob_wav_current;


var rec;
/**调用open打开录音请求好录音权限**/
var recOpen=function(success){//一般在显示出录音按钮或相关的录音界面时进行此方法调用，后面用户点击开始录音时就能进行
    rec=Recorder({
        type:"wav",sampleRate:16000,bitRate:16 //wav格式，指定采样率hz、比特率kbps，其他参数使用默认配置
        ,onProcess:function(buffers,powerLevel,bufferDuration,bufferSampleRate,newBufferIdx,asyncEnd){
            //录音实时回调，大约1秒调用12次本回调
        }
    });

    rec.open(function(){//打开麦克风授权获得相关资源
        //dialog&&dialog.Cancel(); 如果开启了弹框，此处需要取消
        //rec.start() 此处可以立即开始录音，
        
        success&&success();
    },function(msg,isUserNotAllow){//用户拒绝未授权或不支持
        //dialog&&dialog.Cancel(); 如果开启了弹框，此处需要取消
        console.log((isUserNotAllow?"UserNotAllow，":"")+"无法录音:"+msg);
    });
};

/**开始录音**/
function recStart(){//打开了录音后才能进行start、stop调用
    rec.start();
};

/**结束录音**/
function recStop(){
    rec.stop(function(blob,duration){
        console.log(blob,(window.URL||webkitURL).createObjectURL(blob),"时长:"+duration+"ms");
        rec.close();//释放录音资源，当然可以不释放，后面可以连续调用start；但不释放时系统或浏览器会一直提示在录音，最佳操作是录完就close掉
        rec=null;
        
        blob_wav_current = blob;
        //已经拿到blob文件对象想干嘛就干嘛：立即播放、上传
        
      
        var audio=document.createElement("audio");
        audio.controls=true;
        document.body.appendChild(audio);
        //简单利用URL生成播放地址，注意不用了时需要revokeObjectURL，否则霸占内存
        audio.src=(window.URL||webkitURL).createObjectURL(blob);
        audio.play();
    },function(msg){
        console.log("录音失败:"+msg);
        rec.close();//可以通过stop方法的第3个参数来自动调用close
        rec=null;
    });
};



$("#btn_start_record").click(function(event){
	//这里假设立即运行，只录6秒，录完后立即播放，本段代码copy到控制台内可直接运行
	recOpen(function(){
	    recStart();
	    setTimeout(recStop,6000);
	});
})

$("#btn_end_record").click(function(event){
	recStop();
})

$("#btn_upload").click(function(event){
	//alert('upload');
	var blob = blob_wav_current;
	var Test="upload";//用来在控制台network中能看到请求数据，测试的请求结果无关紧要
	//使用jQuery封装的请求方式，实际使用中自行调整为自己的请求方式
	//录音结束时拿到了blob文件对象，可以用FileReader读取出内容，或者用FormData上传
     var imp=Test;

	/***将blob文件转成base64纯文本编码，使用普通application/x-www-form-urlencoded表单上传***/
	var reader=new FileReader();
	reader.onloadend=function(){
	    $.ajax({
	        url:imp //上传接口地址
	        ,type:"POST"
	        ,data:{
	        	token:'qwertasd',
	            mime:blob.type //告诉后端，这个录音是什么格式的，可能前后端都固定的mp3可以不用写
	            ,upfile_b64:(/.+;\s*base64\s*,\s*(.+)$/i.exec(reader.result)||[])[1] //录音文件内容，后端进行base64解码成二进制
	            //...其他表单参数
	        }
	        ,success:function(v){
	            console.log("上传成功",v);
	            document.getElementById("textbox").innerHTML += v;
	        }
	        ,error:function(s){
	            console.error("上传失败",s);
	        }
	    });
	};
	reader.readAsDataURL(blob);

})

</script>
</div>
						</div>
					</div>
				</div>
										
			</div> <!-- .cd-full-width -->

		</li>
		
		<!-- Page 3 -->
		<li>
			
			<div class="cd-full-width">

				<div class="container-fluid js-tm-page-content" data-page-no="3">
					
					<div class="row tm-img-gallery">
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
							<a href="img/tm-img-01.jpg">
								<img src="img/tm-img-01-tn.jpg" alt="Image" class="img-fluid tm-img">
							</a>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
							<a href="img/tm-img-02.jpg">
								<img src="img/tm-img-02-tn.jpg" alt="Image" class="img-fluid tm-img">
							</a>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
							<a href="img/tm-img-03.jpg">
								<img src="img/tm-img-03-tn.jpg" alt="Image" class="img-fluid tm-img">
							</a>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
							<a href="img/tm-img-04.jpg">
								<img src="img/tm-img-04-tn.jpg" alt="Image" class="img-fluid tm-img">
							</a>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
							<a href="img/tm-img-05.jpg">
								<img src="img/tm-img-05-tn.jpg" alt="Image" class="img-fluid tm-img">
							</a>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
							<a href="img/tm-img-06.jpg">
								<img src="img/tm-img-06-tn.jpg" alt="Image" class="img-fluid tm-img">
							</a>
						</div>                                
					</div>

				</div>
											
			</div>
			
		</li>

		<li>  <!-- class="cd-bg-video" -->
			<div class="js-tm-page-content" data-page-no="4">
				
				<div class="cd-bg-video-wrapper" data-video="video/1">
					<!-- video element will be loaded using jQuery -->
				</div> <!-- .cd-bg-video-wrapper -->

			</div>                    

		</li>

		<li>
			<div class="cd-full-width">

				<div class="container-fluid js-tm-page-content" data-page-no="5">
					
					<div class="tm-contact-page">
						
						<div class="row">

							<div class="col-xs-12">
								
								<h2 class="tm-section-title">联系我们</h2>
								<p class="tm-text tm-font-w-400 m-b-3">需要你的帮助，恳请将你的信息留下/或者对本系统有什么意见可以发信件给我</p>      

							</div>

						</div>

						<!-- contact form -->
						<div class="row">
							<form action="index.html" method="post" class="tm-contact-form">
							
								<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 col-xl-6">
									<div class="form-group">
										<input type="text" id="contact_name" name="contact_name" class="form-control" placeholder="请填写您的名字"  required/>
									</div>
									<div class="form-group">
										<input type="email" id="contact_email" name="contact_email" class="form-control" placeholder="请填写您的邮箱"  required/>
									</div>
									<div class="form-group">
										<input type="text" id="contact_subject" name="contact_subject" class="form-control" placeholder="请填写您的主题"  required/>
									</div>    
								</div>

								<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 col-xl-6">
									<div class="form-group">
										<textarea id="contact_message" name="contact_message" class="form-control" rows="5" placeholder="请填写您的内容" required></textarea>
									</div>    
								</div>

								<div class="col-xs-12">
									<button type="submit" class="pull-xs-right tm-submit-btn">Submit</button>
								</div>
							</form>  
						</div>

					</div>    

				</div>
				
			</div> <!-- .cd-full-width -->
		</li>
	</ul> <!-- .cd-hero-slider -->
	
	<footer class="tm-footer">
	
		<div class="tm-social-icons-container">
			
		</div>
		
		<p class="tm-copyright-text">湘潭大学17网络工程一班</p>

	</footer>
			
</div> <!-- .cd-hero -->


<div id="loader-wrapper">
	
	<div id="loader"></div>
	<div class="loader-section section-left"></div>
	<div class="loader-section section-right"></div>

</div>

<!-- load JS files -->
<script src="js/jquery-1.11.3.min.js"></script>         <!-- jQuery (https://jquery.com/download/) -->
<script src="js/tether.min.js"></script> <!-- Tether for Bootstrap (http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h) --> 
<script src="js/bootstrap.min.js"></script>             <!-- Bootstrap js (v4-alpha.getbootstrap.com/) -->
<script src="js/hero-slider-main.js"></script>          <!-- Hero slider (https://codyhouse.co/gem/hero-slider/) -->
<script src="js/jquery.magnific-popup.min.js"></script> <!-- Magnific popup (http://dimsemenov.com/plugins/magnific-popup/) -->

<script>

	function adjustHeightOfPage(pageNo) {
	   
		// Get the page height
		var totalPageHeight = 15 + $('.cd-slider-nav').height()
								+ $(".cd-hero-slider li:nth-of-type(" + pageNo + ") .js-tm-page-content").height() + 160
								+ $('.tm-footer').height();

		// Adjust layout based on page height and window height
		if(totalPageHeight > $(window).height()) 
		{
			$('.cd-hero-slider').addClass('small-screen');
			$('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", totalPageHeight + "px");
		}
		else 
		{
			$('.cd-hero-slider').removeClass('small-screen');
			$('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", "100%");
		}

	}

	/*
		Everything is loaded including images.
	*/
	$(window).load(function(){

		adjustHeightOfPage(1); // Adjust page height

		/* Gallery pop up
		-----------------------------------------*/
		$('.tm-img-gallery').magnificPopup({
			delegate: 'a', // child items selector, by clicking on it popup will open
			type: 'image',
			gallery:{enabled:true}                
		});

		/* Collapse menu after click 
		-----------------------------------------*/
		$('#tmNavbar a').click(function(){
			$('#tmNavbar').collapse('hide');

			adjustHeightOfPage($(this).data("no")); // Adjust page height       
		});

		/* Browser resized 
		-----------------------------------------*/
		$( window ).resize(function() {
			var currentPageNo = $(".cd-hero-slider li.selected .js-tm-page-content").data("page-no");
			adjustHeightOfPage( currentPageNo );
		});

		// Remove preloader
		// https://ihatetomatoes.net/create-custom-preloading-screen/
		$('body').addClass('loaded');
				   
	});

</script>             

</body>
</html>