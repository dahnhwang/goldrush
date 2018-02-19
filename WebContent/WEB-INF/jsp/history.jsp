<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GoldRush</title>
<link rel="stylesheet" href="css/reset.css">
<link type="text/css" href="bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet">
<link type="text/css" href="css/theme.css" rel="stylesheet">
<link type="text/css" href="images/icons/css/font-awesome.css"
	rel="stylesheet">
<link type="text/css"
	href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
	rel='stylesheet'>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-more.js"></script>
<script src="https://code.highcharts.com/modules/solid-gauge.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<style type="text/css">
.highcharts-credits {
	display: none;
}

.highcharts-container {
	margin: 0 auto;
}
</style>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- /navbar -->
	<div class="center-join2 accuracy_img">
		<div id="space"></div>
		<div id="space"></div>
		<div id="space"></div>
		<span>30년 간 금 관련 뉴스에서 추출한 <br>월별 주요 키워드와 금값 변동추이를 한 눈에
			살펴보세요.
		</span>
		<div class="center-square">뉴스에서 추출한 키워드와 금 가격과의 인과관계를 밝혀내는 것이 본
			프로젝트의 목표였으나, 금 가격에 영향을 미치는 요인이 시대와 상황에 따라 너무 다양하고 다변적이기 때문에 금가격의 상승
			또는 하락과의 상관계수가 높은 시대를 관통하는 요인을 단순한 단어카운트로 밝혀내는데는 한계가 있었다. (회귀트리모형으로 분석
			시, 상관도가 높은 단어의 상관계수가 0.001642876정도) 따라서, 시대별로 금과 관련된 이슈 키워드들을 독자가 스스로
			찾아보고 금 가격과의 연관관계를 유추할 수 있도록 하였다. 30년치 뉴스에서 추출한 월별 주요 키워드와 금값 변동추이를 한
			눈에 살펴볼 수 있게 하였다.</div>
	</div>
	<div class="wrapper">
		<div class="container">
			<!--/.span3-->
			<div class="span12" style="margin: 0 auto; float: initial;">
				<div class="content">
					<!-- Forecast -->
					<h2>Gold Price History</h2>
					<div class="module">
						<div class="module-head">
							<h3>Goldprice Forecast 누적 적중률</h3>
						</div>
						<div class="module-body">
							<div id="container"
								style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>

						</div>
					</div>
					<div class="module" style="overflow: hidden">
						<div class="module-head">
							<h3>우리 모델 금값 예측 그래프</h3>
							<input type="button" value="전체기간"
								class="select-session btn btn-default btn-xs" id="all">
							<input type="button" value="최근 10년"
								class="select-session btn btn-default btn-xs" id="10years">
							<input type="button" value="최근 1년"
								class="select-session btn btn-default btn-xs" id="1year">
						</div>
						<div class="module-body" style="padding: 0;">

							<div id="container2"
								style="min-width: 310px; height: 400px; margin: 0 auto"></div>

						</div>
					</div>
					<div class="module" style="overflow: hidden">
						<div class="module-head">
							<h3>타 예측기관 금값 예측 그래프</h3>
							<input type="button" value="일별 예측"
								class="daily-forecast btn btn-default btn-xs"> <input
								type="button" value="월별 예측"
								class="monthly-forecast btn btn-default btn-xs">
						</div>
						<div class="module-body" style="padding: 0;">
							<div id="container3"
								style="min-width: 310px; height: 400px; margin: 0 auto"></div>

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
			<b class="copyright">&copy; 2018 GoldMine </b>All rights reserved. <br>Team
			Project by 신진주, 임진리, 한왕석, 황다현
		</div>
	</div>
	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/piechart.js" type="text/javascript"></script>
	<script src="scripts/moment.js" type="text/javascript"></script>
	<script src="scripts/charts.js" type="text/javascript"></script>
</body>
</html>