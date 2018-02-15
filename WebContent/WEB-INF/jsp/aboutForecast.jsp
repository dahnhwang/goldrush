<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
</style>
<link rel="stylesheet" href="css/reset.css">
<link type="text/css" href="css/theme.css" rel="stylesheet">
<link type="text/css" href="images/icons/css/font-awesome.css"
	rel="stylesheet">
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous"> -->
	<link type="text/css" href="bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css"
	rel="stylesheet">
	<link type="text/css"
	href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
	rel='stylesheet'>


<script>
	window.onload = function() {
		
		$.ajax({
			url : 'forecast_ajax.do',
			type : 'get',
			dataType : 'json',
			success : function(data) {
				
				
				$('#table tr').filter(function(index) {
					return index != 0;
				}).remove();
				
				$.each(data.forecast_m, function(index,item){
					
					var exRate=data.exrate;
					var gold_price =item.gold_price;
					gold_price = gold_price/ 28.35 * 3.75 * exRate;
					gold_price = Number(gold_price).toLocaleString('en').split(".")[0]+"원";
					var k_month=item.k_month;
					
					var tr = $('<tr>');
					$('<td>').text(index+1).appendTo(tr);
					$('<td>').text(k_month).appendTo(tr);
					$('<td>').text(gold_price).appendTo(tr);
					$('<td>').text(gold_price).appendTo(tr);
					$('<td>').text(gold_price).appendTo(tr);
					var td = $('<td>');
					td.appendTo(tr);
					tr.appendTo('#table');

				})
		/* 월별 예측 금 값  */
		
		var exRate=data.exrate;
		
		var daily = new Array() ;
		
		 for(var i=0; i<data.size_d; i++){
             
	            // 객체 생성
	            var dataD = new Object() ; 
	             
	            var date =  data.forecast_d[i].k_month;
	            var year =data.forecast_d[i].k_month.substring( 0, 4 );
	            var month=data.forecast_d[i].k_month.substring( 5, 7 );
	            var day=data.forecast_d[i].k_month.substring( 8, 10 );
	            
	            dataD.x = new Date(year, month, day);
	            
	            gold_price = data.forecast_d[i].gold_price;
	            gold_price= gold_price/ 28.35 * 3.75 * exRate;
	            dataD.y = Math.floor(gold_price,2)
	       
	            // 리스트에 생성된 객체 삽입
	           daily.push(dataD) ;
	        }
		 
		 var monthly = new Array() ;
			
		 for(var i=0; i<data.size_m; i++){
             
	            // 객체 생성
	            var dataM = new Object() ;
	            
	            var date =  data.forecast_m[i].k_month;
	            var year =data.forecast_m[i].k_month.substring( 0, 4 );
	            var month=data.forecast_m[i].k_month.substring( 5, 7 );
	            var day=data.forecast_m[i].k_month.substring( 8, 10 );
	            
	            dataM.x = new Date(year, month, day);
 				gold_price = data.forecast_m[i].gold_price;
	            
 				gold_price= gold_price/ 28.35 * 3.75 * exRate;
	            dataM.y = Math.floor(gold_price,2)
	             
	            // 리스트에 생성된 객체 삽입
	           monthly.push(dataM) ;
	        }
		 
	         
		
		var chart2 = new CanvasJS.Chart("chartContainer2", {
			animationEnabled : true,
			theme : "light2",
			axisX : {
				valueFormatString : "DD MMM",
				crosshair : {
					enabled : true,
					snapToDataPoint : true
				}
			},
			axisY : {
				title : "Number of Visits",
				crosshair : {
					enabled : true
				}
			},
			toolTip : {
				shared : true
			},
			legend : {
				cursor : "pointer",
				verticalAlign : "bottom",
				horizontalAlign : "left",
				dockInsidePlotArea : true,
				itemclick : toogleDataSeries
			},
			data : [ {
				type : "line",
				showInLegend : true,
				name : "Total Visit",
				markerType : "square",
				xValueFormatString : "DD MMM, YYYY",
				color : "#F08080",
				dataPoints :monthly
			} ]
		});
		chart2.render();
		
		function toogleDataSeries(e) {
			if (typeof (e.dataSeries.visible) === "undefined"
					|| e.dataSeries.visible) {
				e.dataSeries.visible = false;
			} else {
				e.dataSeries.visible = true;
			}
			chart2.render();
		}
		/* 일 별 예측 금값  */
		var chart1 = new CanvasJS.Chart("chartContainer1", {
			animationEnabled : true,
			theme : "light2",
			axisX : {
				valueFormatString : "DD MMM",
				crosshair : {
					enabled : true,
					snapToDataPoint : true
				}
			},
			axisY : {
				title : "Number of Visits",
				crosshair : {
					enabled : true
				}
			},
			toolTip : {
				shared : true
			},
			legend : {
				cursor : "pointer",
				verticalAlign : "bottom",
				horizontalAlign : "left",
				dockInsidePlotArea : true,
				itemclick : toogleDataSeries
			},
			data : [ {
				type : "line",
				showInLegend : true,
				name : "Total Visit",
				markerType : "square",
				xValueFormatString : "DD MMM, YYYY",
				color : "#F08080",
				dataPoints : daily
			}]
		});
		chart1.render();
		function toogleDataSeries(e) {
			if (typeof (e.dataSeries.visible) === "undefined"
					|| e.dataSeries.visible) {
				e.dataSeries.visible = false;
			} else {
				e.dataSeries.visible = true;
			}
			chart1.render();
		}
			}})
		/* 금값에 미치는 영향 요인들의 정도를 대략 적으로 % 로 나타낸 수치  */
		 $.ajax({
		url : 'influence_ajax.do',
		type : 'get',
		dataType : 'json',
		success : function(data) { 
		var chart = new CanvasJS.Chart("chartContainer", {
			theme : "light2", // "light1", "light2", "dark1", "dark2"
			exportEnabled : true,
			animationEnabled : true,
			data : [ {
				type : "pie",
				startAngle : 25,
				toolTipContent : "<b>{label}</b>: {y}%",
				showInLegend : "true",
				legendText : "{label}",
				indexLabelFontSize : 12,
				indexLabel : "{label} {y}%",
				dataPoints : [ {
					y : data.relative.dow_jones,
					label : "다우존스 산업지수"
				}, {
					y : data.relative.sp_500,
					label : "S&P 500 지수"
				}, {
					y : data.relative.dollar_index,
					label : "달러 인덱스"
				}, {
					y : data.relative.wti,
					label : "원유"
				}, {
					y : data.relative.interest_rate,
					label : "금리"
				}, {
					y : data.relative.gdp,
					label : "GDP"
				}, {
					y : data.relative.inflation,
					label : "인플레이션"
				}, {
					y : data.relative.balance_trade,
					label : "무역수지"
				}, {
					y : data.relative.cpi,
					label : "소비자 물가 지수"
				}, {
					y : data.relative.gold_mine,
					label : "금 채굴량"
				}, {
					y : data.relative.uncertainty,
					label : "불확실성"
				}, {
					y : data.relative.money_stock,
					label : "통화량"
				}
				]
			} ]
		});
		chart.render();
		 					
			
		
		}})
		
		 
	$(".forecast_select").on('click', function() {

			var forecastId = $(this).attr('id')

			$.ajax({
				url : 'forecast_ajax.do',
				type : 'get',
				dataType : 'json',
				success : function(data) {
					
					if(forecastId=="daily"){
						
						$('#table tr').filter(function(index) {
							return index != 0;
						}).remove();
						
						$.each(data.forecast_d, function(index,item){
							
							var exRate=data.exrate;
							var gold_price =item.gold_price;
							gold_price = gold_price/ 28.35 * 3.75 * exRate;
							gold_price = Number(gold_price).toLocaleString('en').split(".")[0]+"원";
							var k_month=item.k_month;
							
							var tr = $('<tr>');
							$('<td>').text(index+1).appendTo(tr);
							$('<td>').text(k_month).appendTo(tr);
							$('<td>').text(gold_price).appendTo(tr);
							$('<td>').text(gold_price).appendTo(tr);
							$('<td>').text(gold_price).appendTo(tr);
							var td = $('<td>');
							td.appendTo(tr);
							tr.appendTo('#table');

						})
						
					}else if(forecastId=="monthly"){
						
						
						$('#table tr').filter(function(index) {
							return index != 0;
						}).remove();
						
						$.each(data.forecast_m, function(index,item){
							
							var exRate=data.exrate;
							var gold_price =item.gold_price;
							gold_price = gold_price/ 28.35 * 3.75 * exRate;
							gold_price = Number(gold_price).toLocaleString('en').split(".")[0]+"원";
							var k_month=item.k_month;
							
							var tr = $('<tr>');
							$('<td>').text(index+1).appendTo(tr);
							$('<td>').text(k_month).appendTo(tr);
							$('<td>').text(gold_price).appendTo(tr);
							$('<td>').text(gold_price).appendTo(tr);
							$('<td>').text(gold_price).appendTo(tr);
							var td = $('<td>');
							td.appendTo(tr);
							tr.appendTo('#table');

						})
						
					}
				}

			})
		})

	}
</script>
</head>


<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- /navbar -->
	
	<div class="wrapper">
		<div class="container">
			<!--/.span3-->
			<div class="span12" style="margin: 0 auto; float: initial;">
				<div class="content">
					<!-- Forecast -->
					<div class="module">
						<div class="module-head">
							<h3>Today's Weather Forecast for Gold</h3>
						</div>
						<div class="module-body">
							<div class="weather" style="float: left;">
								<i class="fa icon-cloud" aria-hidden="true"
									style="line-height: 100px; font-size: 100px; , color: blue;"></i>
							</div>
							<div class="fl" style="overflow: hidden; padding-left: 20px;">
								<h5>
									<span>13</span>시 현재
								</h5>
								<em>-7<span>％</span><strong>맑음</strong>
								</em>
								<p>
									어제보다<span class="temp"><strong>-13</strong>％</span><span
										class="bar2">|</span> 감소확률 <strong>0</strong>% <br>
									10,232.2won
								</p>

							</div>
						</div>
					</div>
					<div class="module" style="overflow: hidden">
						<div class="module-body" style="padding: 0;">
							<!-- <div class="span4 " style="margin-top:20px; margin-bottom:20px;">
                                 <div>예측내용</div>
                                 <hr>
                                 <div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa laborum, iure necessitatibus ipsum illo quam officiis praesentium mollitia asperiores magnam delectus suscipit qui debitis reprehenderit voluptates deleniti. Aperiam, odit, magnam?</div>
                             </div>
                             <div class="span6 " style="margin-top:20px; margin-bottom:20px;">
                                 <div id="chartContainer" style="height: 300px; width: 100%;"></div>
                             </div> -->


						</div>
					</div>
					<!--/.content-->
				<div class="module-head">
							<h3>딥러닝을 통한 금 예측 영향 요인</h3>
						</div>
				<div id="chartContainer" style="height: 300px; width: 100%;">
				</div>
				<br>
				</div>
				<!--/.span9-->
			</div>
			<div class="module-head">
							<h3>금값 예측
	<button type="button" class="forecast_select btn btn-warning" id="daily">Daily</button>
	<button type="button" class="forecast_select btn btn-dark" id="monthly">Monthly</button></h3>
						</div>
	<!--월별 예측 값   -->
	<table id="table" class="table table-striped table-dark">
	<thead>
			<tr>
				<th scope="col" align="center">#</th>
				<th scope="col" align="center">날짜</th>
				<th scope="col" align="center">예측값</th>
				<th scope="col" align="center">최소값</th>
				<th scope="col" align="center">최대값</th>
			</tr>
		</thead>
	</table>
	<br>
	<div class="module-head">
							<h3>일별 예측값</h3>
						</div>
	<!-- 일별 예측 그래프 -->
	<div id="chartContainer1" style="height: 300px; width: 100%;"></div>
	<br>
	<div class="module-head">
							<h3>월별 예측값</h3>
						</div>
	<!--월별 예측 그래프  -->
	<div id="chartContainer2" style="height: 300px; width: 100%;"></div>
		</div>
		<!--/.container-->
		<br>
	</div>
	
	<!--/.wrapper-->
     <div class="footer">
         <div class="container">
             <b class="copyright">&copy; 2018 GoldMine </b>All rights reserved.
         </div>
     </div>


	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script> -->
	<!--  <script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	 <script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script> -->
	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>
		<script src="scripts/moment.js" type="text/javascript"></script>
		
</body>
</html>