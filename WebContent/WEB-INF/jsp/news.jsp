<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GoldMine</title>
<link rel="stylesheet" href="css/reset.css">
<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
<link type="text/css" href="css/theme.css" rel="stylesheet">
<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
    rel='stylesheet'>
    
    <script src="//code.jquery.com/jquery-latest.min.js"></script> 
    <script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	 <script src="scripts/jquery-dateFormat.min.js"></script>
     
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
        <!-- /navbar -->
        <div class="wrapper">
            <div class="container">
                <!--<div class="">-->
                   
                    <!--/.span3-->
                    <div class="span12" style="margin: 0 auto; float: initial; clear: both;">
                        
                        
                        <div class="content">
                            <!-- News -->
                            <div class="module">
                                <div class="module-head"><h3>Weekly News (출처 : Naver 등 gold 관련 기사)</h3>
                                    
                                    <div class="navbar-search pull-right input-append">    
                                        <select id="eng" name="eng" style="max-width: 120px;">
								            <option value="1">EnglishNews</option>
								            <option value="0">KoreaNews</option>
								        </select>
                                        <input type="text" class="span3" id="Nkeyword" name="Nkeyword">
                                        <button id="searchBtn" class="btn" type="button" onclick="showPage(eng.value,Nkeyword.value)">	<!-- 다시 돌아오게됨 -->
                                            <i class="icon-search"></i>
                                        </button>
                                    </div>
                                  
                                  <script src="scripts/newslist.js"></script> 
                               </div>
                                <div class="module-body">
                                    <div class="news">
                                        <ul id="lists">
                                        	
                                        	<c:forEach var="news" items="${news}">
                                            <li class="nlist scrolling" data-news="${news.news_id}">
                                               <a href="${news.news_url}" target="_blank">
                                                    <div class="thum" ><c:if test="${news.news_img != null}"><img src="${news.news_img}" onerror='this.style.display="none"' style="width:80px;height:80px;"></c:if></div>
	                                                    <dl >
	                                                        <dt >${news.news_title}</dt>
	                                                        <dd><fmt:formatDate value="${news.news_date }"
							pattern="yyyy/MM/dd" /></dd>
	                                                        <dd>${news.news_content}</dd>
	                                                    </dl>
                                                </a>
                                            </li>
                                            </c:forEach>
                                            
                                        </ul>
                                        <div id="floatingCirclesG">
											<div class="f_circleG" id="frotateG_01"></div>
											<div class="f_circleG" id="frotateG_02"></div>
											<div class="f_circleG" id="frotateG_03"></div>
											<div class="f_circleG" id="frotateG_04"></div>
											<div class="f_circleG" id="frotateG_05"></div>
											<div class="f_circleG" id="frotateG_06"></div>
											<div class="f_circleG" id="frotateG_07"></div>
											<div class="f_circleG" id="frotateG_08"></div>
										</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/.content-->
                    </div>
                    <!--/.span9-->
                <!--</div>-->
            </div>
            <!--/.container-->
        </div>
        
        <!--/.wrapper-->
        <div class="footer">
            <div class="container">
                <b class="copyright">&copy; 2018 GoldMine </b>All rights reserved.
                <br>Team Project by 신진주, 임진리, 한왕석, 황다현
            </div>
        </div>
        <script type="text/javascript">
        var lastScrollTop = 0;
        var easeEffect = 'easeInQuint';
         
        // 스크롤 이벤트 발생
        $(window).scroll(function(){ 
            //alert(eng.value); 
        	
            var currentScrollTop = $(window).scrollTop();

            if( currentScrollTop - lastScrollTop > 0 ){

                if ($(window).scrollTop() >= ($(document).height() - $(window).height()) ){ 
                     
                	if(Nkeyword.value == ""){
                		var lastnews = "news_id="+$(".scrolling:last").attr("data-news");
                	}else{
                		var lastnews = "news_id=0";
                	}

                     console.log(lastnews);

                    $.ajax({
                        type : 'GET', 
                        url : 'infiniteScrollDown.do',
                        headers : {
                            "Content-Type" : "application/json",
                            "X-HTTP-Method-Override" : "GET"
                        },
                        dataType : 'json', 
                        data : lastnews
                        ,
                        success : function(data){
                             //alert('data받아옴?')
                            var str = "";
                             
                            if(data != ""){

                                $(data).each(

                                    function(index, item){
                                    	var nId = data[index].news_id;
                            			var nUrl = data[index].news_url;
                            		 	var nTitle = data[index].news_title;
                            			var nImg = data[index].news_img;
                            			var ndate = data[index].news_date;
                            			var nContent = data[index].news_content;

                            			 
                            			var li = $('<li>').appendTo('#lists').attr('id',index).attr('class','nlist scrolling').attr('data-news',nId);	//li 태그만들기
                            			
                            			var a = $("<a href='"+nUrl+"'target='_blank'></a>").appendTo(li);
                            			
                            			var div= $('<div>').appendTo(a).addClass('thum');
                            			if(nImg != null){
                            				$("<img src='"+nImg+"' onerror='this.style.display=\"none\"' style='width:80px;height:80px;'/>").appendTo(div);
                            			}
                            			var dl = $('<dl>').appendTo(a)
                            			$('<dt>').text(nTitle).appendTo(dl);
                            			$('<dd>').text(
                            					$.format.date(ndate, 'yy/MM/dd')).appendTo(dl);
                            			$('<dd>').text(nContent).appendTo(dl);
                                });
                                     
                            }
                            else{ 
                                alert("더 불러올 데이터가 없습니다.");
                            }
             
                        }// success
                        ,beforeSend:function(){
                            $('#floatingCirclesG').removeClass('display-none');
                        }
                        ,complete:function(){
                            $('#floatingCirclesG').addClass('display-none');
                        }
                        ,error:function(e){
							alert("조회 실패");
                        }
                        ,timeout:100000 

                    });// ajax
                     
                }
                 
                lastScrollTop = currentScrollTop;
            }// 다운스크롤인 상태
            
  
    });// scroll event

        </script>
</body>
</html>