<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		/* 월별 예측 금 값  */
		var chart2 = new CanvasJS.Chart("chartContainer2", {
			animationEnabled : true,
			theme : "light1",
			title : {
				text : "월별 예측 값"
			},
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
				dataPoints : [ {
					x : new Date(2017, 0, 3),
					y : 650
				}, {
					x : new Date(2017, 0, 4),
					y : 700
				}, {
					x : new Date(2017, 0, 5),
					y : 710
				}, {
					x : new Date(2017, 0, 6),
					y : 658
				}, {
					x : new Date(2017, 0, 7),
					y : 734
				}, {
					x : new Date(2017, 0, 8),
					y : 963
				}, {
					x : new Date(2017, 0, 9),
					y : 847
				}, {
					x : new Date(2017, 0, 10),
					y : 853
				}, {
					x : new Date(2017, 0, 11),
					y : 869
				}, {
					x : new Date(2017, 0, 12),
					y : 943
				}, {
					x : new Date(2017, 0, 13),
					y : 970
				}, {
					x : new Date(2017, 0, 14),
					y : 869
				}, {
					x : new Date(2017, 0, 15),
					y : 890
				}, {
					x : new Date(2017, 0, 16),
					y : 930
				} ]
			}, {
				type : "line",
				showInLegend : true,
				name : "Unique Visit",
				lineDashType : "dash",
				dataPoints : [ {
					x : new Date(2017, 0, 3),
					y : 510
				}, {
					x : new Date(2017, 0, 4),
					y : 560
				}, {
					x : new Date(2017, 0, 5),
					y : 540
				}, {
					x : new Date(2017, 0, 6),
					y : 558
				}, {
					x : new Date(2017, 0, 7),
					y : 544
				}, {
					x : new Date(2017, 0, 8),
					y : 693
				}, {
					x : new Date(2017, 0, 9),
					y : 657
				}, {
					x : new Date(2017, 0, 10),
					y : 663
				}, {
					x : new Date(2017, 0, 11),
					y : 639
				}, {
					x : new Date(2017, 0, 12),
					y : 673
				}, {
					x : new Date(2017, 0, 13),
					y : 660
				}, {
					x : new Date(2017, 0, 14),
					y : 562
				}, {
					x : new Date(2017, 0, 15),
					y : 643
				}, {
					x : new Date(2017, 0, 16),
					y : 570
				} ]
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
			theme : "light1",
			title : {
				text : "일 별 예측값"
			},
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
				dataPoints : [ {
					x : new Date(2017, 0, 3),
					y : 650
				}, {
					x : new Date(2017, 0, 4),
					y : 700
				}, {
					x : new Date(2017, 0, 5),
					y : 710
				}, {
					x : new Date(2017, 0, 6),
					y : 658
				}, {
					x : new Date(2017, 0, 7),
					y : 734
				}, {
					x : new Date(2017, 0, 8),
					y : 963
				}, {
					x : new Date(2017, 0, 9),
					y : 847
				}, {
					x : new Date(2017, 0, 10),
					y : 853
				}, {
					x : new Date(2017, 0, 11),
					y : 869
				}, {
					x : new Date(2017, 0, 12),
					y : 943
				}, {
					x : new Date(2017, 0, 13),
					y : 970
				}, {
					x : new Date(2017, 0, 14),
					y : 869
				}, {
					x : new Date(2017, 0, 15),
					y : 890
				}, {
					x : new Date(2017, 0, 16),
					y : 930
				} ]
			}, {
				type : "line",
				showInLegend : true,
				name : "Unique Visit",
				lineDashType : "dash",
				dataPoints : [ {
					x : new Date(2017, 0, 3),
					y : 510
				}, {
					x : new Date(2017, 0, 4),
					y : 560
				}, {
					x : new Date(2017, 0, 5),
					y : 540
				}, {
					x : new Date(2017, 0, 6),
					y : 558
				}, {
					x : new Date(2017, 0, 7),
					y : 544
				}, {
					x : new Date(2017, 0, 8),
					y : 693
				}, {
					x : new Date(2017, 0, 9),
					y : 657
				}, {
					x : new Date(2017, 0, 10),
					y : 663
				}, {
					x : new Date(2017, 0, 11),
					y : 639
				}, {
					x : new Date(2017, 0, 12),
					y : 673
				}, {
					x : new Date(2017, 0, 13),
					y : 660
				}, {
					x : new Date(2017, 0, 14),
					y : 562
				}, {
					x : new Date(2017, 0, 15),
					y : 643
				}, {
					x : new Date(2017, 0, 16),
					y : 570
				} ]
			} ]
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
				indexLabelFontSize : 16,
				indexLabel : "{label} - {y}%",
				dataPoints : [ {
					y : 51.08,
					label : "금리"
				}, {
					y : 27.34,
					label : "WTI"
				}, {
					y : 10.62,
					label : "달러지수"
				}, {
					y : 5.02,
					label : "인플레이션"
				}, {
					y : 4.07,
					label : "다우존스지수"
				}, {
					y : 1.22,
					label : "GDP"
				}, {
					y : 0.44,
					label : "무역지수"
				}
				]
			} ]
		});
		chart.render();
		}})
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
	<button type="button" class="btn btn-warning">Daily</button>
	<button type="button" class="btn btn-dark">Monthly</button>
	<!--월별 예측 값   -->
	<table class="table table-striped table-dark">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">날짜</th>
				<th scope="col">예측값</th>
				<th scope="col">최소값</th>
				<th scope="col">최대값</th>

			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>@mdo</td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td>Jacob</td>
				<td>Thornton</td>
				<td>@fat</td>
				<td>@mdo</td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td>Larry</td>
				<td>the Bird</td>
				<td>@twitter</td>
				<td>@mdo</td>
			</tr>
		</tbody>
	</table>
	<br>
	<!--일별 예측 값   -->
	<table class="table table-striped bg-warning">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">날짜</th>
				<th scope="col">예측값</th>
				<th scope="col">최소값</th>
				<th scope="col">최대값</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>gggg</td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td>Jacob</td>
				<td>Thornton</td>
				<td>@fat</td>
				<td>gggg</td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td>Larry</td>
				<td>the Bird</td>
				<td>@twitter</td>
				<td>gggg</td>
			</tr>
			<tr>
				<th scope="row">4</th>
				<td>Larry</td>
				<td>the Bird</td>
				<td>@twitter</td>
				<td>gggg</td>
			</tr>
		</tbody>
	</table>
	<br>
	<!-- 일별 예측 그래프 -->
	<div id="chartContainer1" style="height: 300px; width: 100%;"></div>
	<br>
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
		
</body>
</html>