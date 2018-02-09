<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GoldRush</title>
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
	$(document).ready(
			function() {

				$.ajax({
					url : 'trendword.do',
					type : 'get',
					dataType : 'json',
					success : function(data) {
						if (data) {
							$('#listTable thead').empty();
							$('#listTable tbody').empty();
							var tr1 = $('<tr>').appendTo('#listTable tbody');
							var tr2 = $('<tr>').appendTo('#listTable tbody');
							var tr3 = $('<tr>').appendTo('#listTable tbody');
							var tr4 = $('<tr>').appendTo('#listTable tbody');
							var tr5 = $('<tr>').appendTo('#listTable tbody');
							drawBubbleChart(data, tr1, tr2, tr3, tr4, tr5)

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
							var year = $("#yearSelect option:selected").val();
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
										drawBubbleChart(data, tr1, tr2, tr3,
												tr4, tr5)
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

						$('.bb-texts-연관키워드1 > .bb-text-' + index)
								.text(keyword1)
						$('.bb-texts-연관키워드2 > .bb-text-' + index)
								.text(keyword2)
						$('.bb-texts-연관키워드3 > .bb-text-' + index)
								.text(keyword3)
						$('.bb-texts-연관키워드4 > .bb-text-' + index)
								.text(keyword4)
						$('.bb-texts-연관키워드5 > .bb-text-' + index)
								.text(keyword5)
					})

				}

				function drawBubbleChart(data, tr1, tr2, tr3, tr4, tr5) {
					var keywordList = data.keywordList
					var keywordFreqMax = data.keywordFreqMax
					var goldPriceList = data.goldPriceList
					var k_month_array = [ "x" ]
					var keyword1_freq_array = [ "연관키워드1" ]
					var keyword2_freq_array = [ "연관키워드2" ]
					var keyword3_freq_array = [ "연관키워드3" ]
					var keyword4_freq_array = [ "연관키워드4" ]
					var keyword5_freq_array = [ "연관키워드5" ]
					var goldPrice_array = [ "금가격" ]
					$.each(keywordList, function(index, item) {
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

						var th = $('<th>').appendTo('#listTable thead');
						$('<b>').addClass("k_year").text(k_month).appendTo(th)

						$('<td>').text(keyword1).appendTo(tr1);
						$('<td>').text(keyword2).appendTo(tr2);
						$('<td>').text(keyword3).appendTo(tr3);
						$('<td>').text(keyword4).appendTo(tr4);
						$('<td>').text(keyword5).appendTo(tr5);

					})

					$.each(goldPriceList, function(index, item) {
						var goldPrice = item.gold_price
						goldPrice_array.push(goldPrice)
					})

					var chart = bb.generate({
						data : {
							x : "x",
							columns : [ k_month_array, keyword1_freq_array,
									keyword2_freq_array, keyword3_freq_array,
									keyword4_freq_array, keyword5_freq_array,
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

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- /navbar -->
	<div class="wrapper">
		<div class="container">
			<!--<div class="">-->

			<!--/.span3-->
			<div class="span12"
				style="margin: 0 auto; float: initial; clear: both;">


				<div class="content">
					<!-- BubbleChart -->

					<div class="module">
						<div class="module-head">
							<h3>Top 5 Gold-related Keywords Frequency (Monthly)</h3>
							<br>
							<div class="form-row align-items-center">
								<div class="col-auto my-1">
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

									</select>
									<button type="button" class="btn btn-primary" id="btn-year">검색</button>
								</div>
							</div>
						</div>
						<div class="module-body">
							<div class="chart inline-legend grid">
								<div id="BubbleChart" class="graph" style="height: 500px"></div>
							</div>
						</div>
					</div>
					<!--/.module-->
					<div class="module hide">
						<div class="module-head">
							<h3>Adjust Budget Range</h3>
						</div>
						<div class="module-body">
							<div class="form-inline clearfix">
								<a href="#" class="btn pull-right">Update</a> <label
									for="amount"> Price range:</label> &nbsp; <input type="text"
									id="amount" class="input-" />
							</div>
							<hr />
							<div class="slider-range"></div>
						</div>
					</div>
					<div class="module">
						<div class="module-head">
							<h3>Top 5 Gold-related Keywords (Monthly)</h3>
						</div>
						<div class="module-body table">
							<table id="listTable" cellpadding="0" cellspacing="0" border="0"
								class="datatable-1 table table-bordered table-striped	 display"
								width="100%">
								<thead>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
					</div>
					<!--/.module-->
					<div class="container">
						<a href="http://developer.nytimes.com"> <img
							src='images/poweredby_nytimes.png' />
						</a>
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
		</div>
	</div>

</body>
</html>