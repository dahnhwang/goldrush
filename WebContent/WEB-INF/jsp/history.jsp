<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>GoldRush</title>
	<link rel="stylesheet" href="css/reset.css">
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
	    rel='stylesheet'>
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/highcharts-more.js"></script>
	<script src="https://code.highcharts.com/modules/solid-gauge.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<style type="text/css">.highcharts-credits{display: none;}.highcharts-container {margin: 0 auto;}</style>

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
                    <h2>Gold Price History</h2>
                    <div class="module">
                        <div class="module-head"><h3>Goldprice Forecast 누적 적중률</h3>
                        </div>
                        <div class="module-body">
                        	<div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
                        
                        </div>
                    </div>
                    <div class="module" style="overflow:hidden">
                        <div class="module-head"><h3>우리 모델 금값 예측 그래프</h3>
                        </div>
                        <div class="module-body" style="padding:0;">

                                <div id="container2" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

                        </div>
                    </div>
                    <div class="module" style="overflow:hidden">
                        <div class="module-head"><h3>타 예측기관 금값 예측 그래프</h3>
                        <input type="button" value="일별 예측" class="daily-forecast btn btn-default btn-xs">
						<input type="button" value="월별 예측" class="monthly-forecast btn btn-default btn-xs">
                        </div>
                        <div class="module-body" style="padding:0;">
                               <div id="container3" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

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
            <b class="copyright">&copy; 2018 GoldMine </b>All rights reserved.
        </div>
    </div>
    <script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="scripts/piechart.js" type="text/javascript"></script>
     <script src="scripts/moment.js" type="text/javascript"></script>
    <script src="scripts/charts.js" type="text/javascript"></script>
</body>
</html>