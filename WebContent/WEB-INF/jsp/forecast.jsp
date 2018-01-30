<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GoldRush</title>
<link rel="stylesheet" href="css/reset.css">
<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
<link type="text/css" href="css/theme.css" rel="stylesheet">
<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
    rel='stylesheet'>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
     <!-- /navbar -->
     <div class="wrapper">
         <div class="container">
             <!--/.span3-->
             <div class="span11" style="margin: 0 auto; float: initial;">
                 <div class="content">
                     <!-- Forecast -->
                     <h2>Gold Price Forecast</h2>
                     <div class="module">
                         <div class="module-head"><h3>Today's Weather Forecast for Gold</h3>
                        </div>
                         <div class="module-body">
                             <div class="weather" style="float:left;"><i class="fa icon-cloud" aria-hidden="true" style="line-height: 100px; font-size: 100px;"></i></div>
                             <div class="fl" style="overflow:hidden; padding-left:20px;"> 
                                 <h5><span>13</span>시 현재</h5>
                                 <em>-7<span>％</span><strong>맑음</strong>
                                 </em>
                                 <p>어제보다<span class="temp"><strong>-13</strong>％</span><span class="bar2">|</span>
                                 감소확률 <strong>0</strong>% <br>
                                 10,232.2won							
                                 </p>

                             </div>
                         </div>
                     </div>
                     <div class="module" style="overflow:hidden">
                         <div class="module-head"><h3>Gold Price Forecast for Next 12 Months</h3>
                         </div>

                         <div class="module-body" style="padding:0;">
                             <div class="span4 " style="margin-top:20px; margin-bottom:20px;">
                                 <div>예측내용</div>
                                 <hr>
                                 <div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa laborum, iure necessitatibus ipsum illo quam officiis praesentium mollitia asperiores magnam delectus suscipit qui debitis reprehenderit voluptates deleniti. Aperiam, odit, magnam?</div>
                             </div>
                             <div class="span6 " style="margin-top:20px; margin-bottom:20px;">
                                 <div id="chartContainer" style="height: 300px; width: 100%;"></div>
                             </div>
                         </div>
                     </div>
                 <!--/.content-->
                 </div>
             <!--/.span9-->
             </div>
         </div>
         <!--/.container-->
     </div>
     <!--/.wrapper-->
     <div class="footer">
         <div class="container">
             <b class="copyright">&copy; 2018 GoldRush </b>All rights reserved.
         </div>
     </div>
     <script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
     <script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
     <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
     <script>
            window.onload = function () {

var options = {
	animationEnabled: true,
	title: {
		text: "Price Analysis"
	},
	axisX: {
		interval: 1
	},
	axisY: {
		title: "Price (in Dollar)",
		suffix: "$",
		includeZero: false
	},
	toolTip: {
		shared: true
	},

	data: [{
		type: "line",
		name: "Average",
		toolTipContent: "<b>{label}</b><br><span style=\"color:#4F81BC\">{name}</span>: {y}$",
		markerColor: "white",
		markerBorderColor: "black",
		markerSize: 6,
		markerBorderThickness: 1,
		dataPoints: [
			{ y: 7, label: "24 JAN 2018" },
			{ y: 6, label: "25 JAN 2018" },
			{ y: 21, label: "26 JAN 2018" },
			{ y: 19, label: "27 JAN 2018" },
			{ y: 31, label: "28 JAN 2018" },
			{ y: 31, label: "29 JAN 2018" },
			{ y: 21, label: "30 JAN 2018" },
			{ y: 27, label: "31 JAN 2018" },
			{ y: 10, label: "01 FEB 2018" },
			{ y: 10, label: "02 FEB 2018" },
			{ y: 8, label: "03 FEB 2018" },
			{ y: 16, label: "04 FEB 2018" },
			{ y: 9, label: "05 FEB 2018" },
			{ y: 6, label: "06 FEB 2018" }
		]
	},
	{
		type: "error",
		name: "Variation",
		showInLegend: true,
		toolTipContent: "<span style=\"color:#C0504E\">Minimum</span>: {y[0]}$ <br><span style=\"color:#C0504E\">Maximum</span>: {y[1]}$",
		dataPoints: [
			{ y: [3, 10], label: "24 JAN 2018" },
			{ y: [4, 14], label: "25 JAN 2018" },
			{ y: [17, 22], label: "26 JAN 2018" },
			{ y: [18, 28], label: "27 JAN 2018" },
			{ y: [24, 34], label: "28 JAN 2018" },
			{ y: [25, 32], label: "29 JAN 2018" },
			{ y: [15, 25], label: "30 JAN 2018" },
			{ y: [24, 32], label: "31 JAN 2018" },
			{ y: [9, 11], label: "01 FEB 2018" },
			{ y: [3, 11], label: "02 FEB 2018" },
			{ y: [3, 10], label: "03 FEB 2018" },
			{ y: [15, 17], label: "04 FEB 2018" },
			{ y: [3, 11], label: "05 FEB 2018" },
			{ y: [5, 8], label: "06 FEB 2018" }
		]
	}]
};
$("#chartContainer").CanvasJSChart(options);

}
        </script>
        <script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
</body>
</html>