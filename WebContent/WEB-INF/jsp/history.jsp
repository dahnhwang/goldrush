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

.highcharts-title {
	display: none;
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
		<div class="center-square">금과 관련된 13가지 요인을 기반으로 자체 모델을 적용해
			분석하였습니다. 1989년부터 진행한 자체 금값의 예측 정확성을 하단의 그래프에 보여줌으로써 높은 신뢰도를 보장할 수
			있습니다. 뿐만 아니라 저명한 타 기관의 예측 그래프를 함께 보며 보다 객관적인 지표를 확인할 수 있습니다.</div>
	</div>
	<div class="wrapper">
		<div class="container">
			<!--/.span3-->
			<div class="span12" style="margin: 0 auto; float: initial;">
				<div id="space"></div>
				<div class="content">
					<!-- Forecast -->
					<!-- <div class="module">
						<div class="module-head">
							<h3>Goldprice Forecast 누적 적중률</h3>
						</div>
						<div class="module-body">
							<div id="container"
								style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>

						</div>
					</div> -->
					<!-- 위 부분 누적 적중률 보여주는 파이그래프인데 데이터가 비어있어 임시 주석처리했음. - 다현 -->
					<div class="module" style="overflow: hidden">
						<div class="module-head">
							<span><b style="color: black">GoldMine 예측모델을 통한 산출된 값과
									실제 금 가격 비교 &nbsp;</b></span> <input type="button" value="전체기간"
								class="select-session btn btn-default btn-xs" id="all">
							<input type="button" value="최근 10년"
								class="select-session btn btn-default btn-xs" id="10years">
							<input type="button" value="최근 1년"
								class="select-session btn btn-default btn-xs" id="1year">
						</div>

						<div class="module-body" style="padding: 0;">
							<div id="space"></div>
							<div id="container2"
								style="min-width: 310px; height: 400px; margin: 0 auto"></div>

						</div>

					</div>
					<div id="space"></div>
					<div class="module" style="overflow: hidden">

						<div class="module-head">
							<span><b style="color: black">타 예측기관 금값 예측 그래프 &nbsp;</b></span>
							<input type="button" value="일별 예측"
								class="daily-forecast btn btn-default btn-xs"> <input
								type="button" value="월별 예측"
								class="monthly-forecast btn btn-default btn-xs">
						</div>
						<div class="module-body" style="padding: 0;">
							<div id="space"></div>
							<div id="container3"
								style="min-width: 310px; height: 400px; margin: 0 auto"></div>

						</div>
						<div id="space"></div>
					</div>
					<!--/.content-->
				</div>
				<!--/.span9-->
			</div>
		</div>
		<!--/.container-->
		<div id="space"></div>
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