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
			  

	
	  <li>
		
			<div class="cd-full-width">

				<div class="container-fluid js-tm-page-content" data-page-no="2">
					<div class="row">
						<div class="col-xs-12">
							<div class="tm-2-col-container">
					
								<div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox" >
									
	
								
									<style>
		#switch_sys{
    display:block;
    padding-left: 88px;
    background-image:url("img/bg-001.jpg");
    width:200px;
    height:160px;
    }</style>
                <div class="chat_box">
                	
              <a id='switch_sys' > </a>
            <p> 您的疾病可能是：</p>
        <c:forEach items="${res_list}" var="a" varStatus="idx">                    
				        <p>  ${a.name} </p>	           
		              </c:forEach>
		      
		       <br>
  <a href="test.jsp">返回主界面</a>
                    </div>

 								
								
	<style>
	a.jianyi{
	color:blue;
	float:left;
	}
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
   
						</div>
					</div>
				</div>
										
			</div> <!-- .cd-full-width -->

		</li>
		
	
	
	<footer class="tm-footer">
	
		<div class="tm-social-icons-container">
			
		</div>
		
		<p class="tm-copyright-text">湘潭大学17网络工程一班</p>

	</footer>
			
</div> <!-- .cd-hero -->




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