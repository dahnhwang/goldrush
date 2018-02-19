<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GoldMine</title>
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
<script src="https://d3js.org/d3.v4.min.js"></script>
<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="scripts/jquery-ui-1.10.1.custom.min.js"
	type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="scripts/datatables/jquery.dataTables.js"
	type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/billboard.css">
<script src="scripts/billboard.js"></script>
<script>
	$(document)
			.ready(
					function() {

						function keywordSearch(keyword, k_month) {

							var url = 'https://www.google.co.kr/search?dcr=0&ei=6tCJWtbmG8e00ASL-4_YBA&q='
							var year = k_month.substring(0, 4) + '%20'
							var keyword_default = '%20gold%20news'
							var url2 = '&oq=gold&gs_l=psy-ab.3..35i39k1j0i203k1l2j0i67k1j0i203k1j0i67k1j0j0i67k1j0l2.22507.23073.0.23172.6.6.0.0.0.0.125.616.3j3.6.0....0...1c.1.64.psy-ab..0.6.615...0i131k1.0.xU9xoTgFILA'

							window.open(url + year + keyword + keyword_default
									+ url2)
						}

						$.ajax({
							url : 'trendword.do',
							type : 'get',
							dataType : 'json',
							success : function(data) {
								if (data) {
									$('#listTable thead').empty();
									$('#listTable tbody').empty();
									var tr1 = $('<tr>').appendTo(
											'#listTable tbody');
									var tr2 = $('<tr>').appendTo(
											'#listTable tbody');
									var tr3 = $('<tr>').appendTo(
											'#listTable tbody');
									var tr4 = $('<tr>').appendTo(
											'#listTable tbody');
									var tr5 = $('<tr>').appendTo(
											'#listTable tbody');
									drawBubbleChart(data, tr1, tr2, tr3, tr4,
											tr5)

								}

								if (data) {
									drawWordOnChart(data)
								}

							}

						})

						$(document).on(
								'click',
								'#btn-year',
								function() {
									var year = $("#yearSelect option:selected")
											.val();
									$.ajax({
										url : 'trendword.do',
										type : 'post',
										data : {
											mode : 1,
											k_year : year
										},
										dataType : 'json',
										success : function(data) {
											if (data) {
												$('#listTable thead').empty();
												$('#listTable tbody').empty();
												var tr1 = $('<tr>').appendTo(
														'#listTable tbody');
												var tr2 = $('<tr>').appendTo(
														'#listTable tbody');
												var tr3 = $('<tr>').appendTo(
														'#listTable tbody');
												var tr4 = $('<tr>').appendTo(
														'#listTable tbody');
												var tr5 = $('<tr>').appendTo(
														'#listTable tbody');
												drawBubbleChart(data, tr1, tr2,
														tr3, tr4, tr5)
											}

											if (data) {
												drawWordOnChart(data)
											}

										}
									})
								});

						function drawWordOnChart(data) {
							var keywordList = data.keywordList

							$.each(keywordList, function(index, item) {
								var keyword1 = item.keyword1
								var keyword2 = item.keyword2
								var keyword3 = item.keyword3
								var keyword4 = item.keyword4
								var keyword5 = item.keyword5

								$('.bb-texts-이슈키워드1 > .bb-text-' + index).text(
										keyword1)
								$('.bb-texts-이슈키워드2 > .bb-text-' + index).text(
										keyword2)
								$('.bb-texts-이슈키워드3 > .bb-text-' + index).text(
										keyword3)
								$('.bb-texts-이슈키워드4 > .bb-text-' + index).text(
										keyword4)
								$('.bb-texts-이슈키워드5 > .bb-text-' + index).text(
										keyword5)
							})

						}

						function drawBubbleChart(data, tr1, tr2, tr3, tr4, tr5) {
							var keywordList = data.keywordList
							var keywordFreqMax = data.keywordFreqMax
							var goldPriceList = data.goldPriceList
							var k_month_array = [ "x" ]
							var keyword1_freq_array = [ "이슈키워드1" ]
							var keyword2_freq_array = [ "이슈키워드2" ]
							var keyword3_freq_array = [ "이슈키워드3" ]
							var keyword4_freq_array = [ "이슈키워드4" ]
							var keyword5_freq_array = [ "이슈키워드5" ]
							var goldPrice_array = [ "금가격" ]
							$.each(keywordList,
									function(index, item) {
										var k_month = item.k_month
										k_month_array.push(k_month)
										var keyword1 = item.keyword1
										var keyword2 = item.keyword2
										var keyword3 = item.keyword3
										var keyword4 = item.keyword4
										var keyword5 = item.keyword5
										var keyword1_freq = item.keyword1_freq
										var keyword2_freq = item.keyword2_freq
										var keyword3_freq = item.keyword3_freq
										var keyword4_freq = item.keyword4_freq
										var keyword5_freq = item.keyword5_freq
										keyword1_freq_array.push(keyword1_freq)
										keyword2_freq_array.push(keyword2_freq)
										keyword3_freq_array.push(keyword3_freq)
										keyword4_freq_array.push(keyword4_freq)
										keyword5_freq_array.push(keyword5_freq)

										var th = $('<th>').appendTo(
												'#listTable thead');
										$('<b>').addClass("k_year").text(
												k_month).appendTo(th);

										var searchTag1 = $('<a>').addClass(
												"keywordSearch").text(keyword1)
												.bind(
														'click',
														function() {
															keywordSearch(
																	keyword1,
																	k_month)
														});

										var searchTag2 = $('<a>').addClass(
												"keywordSearch").text(keyword2)
												.bind(
														'click',
														function() {
															keywordSearch(
																	keyword2,
																	k_month)
														});
										var searchTag3 = $('<a>').addClass(
												"keywordSearch").text(keyword3)
												.bind(
														'click',
														function() {
															keywordSearch(
																	keyword3,
																	k_month)
														});
										var searchTag4 = $('<a>').addClass(
												"keywordSearch").text(keyword4)
												.bind(
														'click',
														function() {
															keywordSearch(
																	keyword4,
																	k_month)
														});
										var searchTag5 = $('<a>').addClass(
												"keywordSearch").text(keyword5)
												.bind(
														'click',
														function() {
															keywordSearch(
																	keyword5,
																	k_month)
														});

										$('<td>').appendTo(tr1).css(
												'background-color',
												'rgba(31, 119, 180,0.2)')
												.append(searchTag1);
										$('<td>').appendTo(tr2).css(
												'background-color',
												'rgba(255, 127, 14,0.2)')
												.append(searchTag2);
										$('<td>').appendTo(tr3).css(
												'background-color',
												'rgba(44, 160, 44,0.2)')
												.append(searchTag3);
										$('<td>').appendTo(tr4).css(
												'background-color',
												'rgba(214, 39, 40,0.2)')
												.append(searchTag4);
										$('<td>').appendTo(tr5).css(
												'background-color',
												'rgba(148, 103, 189,0.2)')
												.append(searchTag5);

									})

							$.each(goldPriceList, function(index, item) {
								var goldPrice = item.gold_price
								goldPrice_array.push(goldPrice)
							})

							var chart = bb.generate({
								data : {
									x : "x",
									columns : [ k_month_array,
											keyword1_freq_array,
											keyword2_freq_array,
											keyword3_freq_array,
											keyword4_freq_array,
											keyword5_freq_array,
											goldPrice_array ],
									axes : {
										"금가격" : "y2"
									},
									type : "bubble",
									types : {
										"금가격" : "spline"
									},
									labels : true
								},
								bubble : {
									maxR : 100
								},
								axis : {
									x : {
										type : "category"
									},
									y : {
										max : keywordFreqMax,
										label : "word frequency"
									},
									y2 : {
										show : true,
										label : "gold price($)"
									}
								},
								bindto : "#BubbleChart"
							});

						}

					});
</script>
<style>
#space {
	width: 1px;
	height: 50px;
}

#priceLabel>b {
	height: 20px;
	color: black;
}

#yearSelect {
	margin-bottom: -1px;
	margin-left: 385px;
	/* float: right */
}

/* #btn-year {
	float: right
} */
.table {
	margin-left: 10px;
	margin-right: 10px;
	width: 98%;
}

#needSpace {
	margin-left: 22px;
}

#logo {
	margin-left: 10px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="center-join2 wordtrend_img">
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

	<!-- /navbar -->
	<div class="wrapper">
		<div class="container">
			<!--<div class="">-->

			<!--/.span3-->
			<div class="span12"
				style="margin: 0 auto; float: initial; clear: both;">


				<div class="content">
					<!-- BubbleChart -->
					<div id="space"></div>
					<div class="module">
						<div class="module-head">
							<!-- 여기부터 가져온 코드 -->
							<div class="input-group">
								<span class="input-group-addon" id="priceLabel"><b>금
										가격 변동과 함께 보는 월별 금 관련 이슈 키워드 (1987년 01월 ~ ${lastMonth })</b> &nbsp;</span>
								<!-- insert this line -->
								<span class="input-group-addon"
									style="width: 0px; padding-left: 0px; padding-right: 0px; border: none;"></span>
								<select class="custom-select mr-sm-2" id="yearSelect">
									<option selected>연도를 선택하세요...</option>
									<option value="1987">1987</option>
									<option value="1988">1988</option>
									<option value="1989">1989</option>
									<option value="1990">1990</option>
									<option value="1991">1991</option>
									<option value="1992">1992</option>
									<option value="1993">1993</option>
									<option value="1994">1994</option>
									<option value="1995">1995</option>
									<option value="1996">1996</option>
									<option value="1997">1997</option>
									<option value="1998">1998</option>
									<option value="1999">1999</option>
									<option value="2000">2000</option>
									<option value="2001">2001</option>
									<option value="2002">2002</option>
									<option value="2003">2003</option>
									<option value="2004">2004</option>
									<option value="2005">2005</option>
									<option value="2006">2006</option>
									<option value="2007">2007</option>
									<option value="2008">2008</option>
									<option value="2009">2009</option>
									<option value="2010">2010</option>
									<option value="2011">2011</option>
									<option value="2012">2012</option>
									<option value="2013">2013</option>
									<option value="2014">2014</option>
									<option value="2015">2015</option>
									<option value="2016">2016</option>
									<option value="2017">2017</option>

								</select> <span class="input-group-addon"
									style="width: 0px; padding-left: 0px; padding-right: 0px; border: none;"></span>
								<button type="button" class="btn btn-primary" id="btn-year">검색</button>
							</div>
							<!-- 여기까지 -->
						</div>
						<div class="module-body">
							<div class="chart inline-legend grid">
								<div id="BubbleChart" class="graph" style="height: 500px"></div>
							</div>
						</div>
						<div id="space"></div>
						<span id="needSpace"><b>키워드로 검색하는 금의 역사 (단어를 클릭하면 자동으로
								검색결과 페이지로 이동합니다)</b></span>
						<div class="module-body table">
							<table id="listTable" cellpadding="0" cellspacing="0" border="0"
								class="datatable-1 table table-bordered table-striped	 display"
								width="100%">
								<thead>
								</thead>
								<tbody>
								</tbody>
							</table>
							<div id="space"></div>
						</div>
					</div>

					<!--/.module-->
					<div id="logo">
						<a href="http://developer.nytimes.com"> <img
							src='images/poweredby_nytimes.png' />
						</a> 본 페이지는 뉴욕타임즈 기사를 수집 및 분석한 데이터를 이용하였습니다 / 업데이트 주기 : 매월 2일
						<div id="space"></div>
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
			<b class="copyright">&copy; 2018 GoldMine </b>All rights reserved. <br>Team
			Project by 신진주, 임진리, 한왕석, 황다현
		</div>
	</div>

</body>
</html>