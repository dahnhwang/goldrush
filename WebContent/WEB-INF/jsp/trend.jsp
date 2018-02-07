<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet" type="text/css" href="css/billboard.min.css">
<script src="scripts/billboard.min.js"></script>
<script>
	$(document).ready(
			function() {

				$.ajax({
					url : 'trendword.do',
					type : 'get',
					dataType : 'json',
					success : function(data) {
						if (data) {
							var keywordList = data.keywordList
							$.each(keywordList, function(index, item) {
								var k_month = item.k_month
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
							})
						}
					}

				})

				var chart = bb.generate({
					data : {
						columns : [
								[ "keyword1", 30, 350, 200, 380, 150, 250, 50,
										80, 55, 220, 294, 34, 60 ],
								[ "keyword2", 130, 100, 10, 200, 80, 50, 200,
										123, 185, 98, 4, 66, 30 ],
								[ "keyword3", 230, 153, 85, 300, 250, 120, 5,
										84, 99, 289, 43, 82, 500 ],
								[ "keyword4", 230, 153, 85, 300, 250, 120, 5,
										84, 99, 289, 66, 88, 100 ],
								[ "keyword5", 20, 123, 55, 500, 250, 120, 5,
										84, 99, 289, 66, 99, 8 ] ],
						type : "bubble",
						labels : true
					},
					bubble : {
						maxR : 50
					},
					axis : {
						x : {
							type : "category"
						},
						y : {
							max : 450
						}
					},
					bindto : "#BubbleChart"
				});

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
							<h3>Weekly Trend (출처 : NewYorkTimes)</h3>
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
							<h3>영향요인 상관관계 분석 기준</h3>
						</div>
						<div class="module-body table">
							<table cellpadding="0" cellspacing="0" border="0"
								class="datatable-1 table table-bordered table-striped	 display"
								width="100%">
								<thead>
									<tr>
										<th></th>
										<th>미국금리</th>
										<th>국제유가</th>
										<th>달러화</th>
										<th>금융상황</th>
									</tr>
								</thead>
								<tbody>
									<tr class="odd gradeX">
										<th>미국금리</th>
										<td>1.0</td>
										<td></td>
										<td class="center"></td>
										<td class="center"></td>
									</tr>


									<tr class="gradeA">
										<th>국제유가</th>
										<td>12.1</td>
										<td>9.2</td>
										<td class="center"></td>
										<td class="center"></td>
									</tr>


									<tr class="gradeA">
										<th>달러화</th>
										<td>7.5</td>
										<td>2</td>
										<td class="center">3</td>
										<td class="center"></td>
									</tr>

									<tr>
										<th>금융상황</th>
										<td>12</td>
										<td>1</td>
										<td>0</td>
										<td>4</td>
									</tr>
								</tbody>
								<tfoot>

								</tfoot>
							</table>
						</div>
					</div>
					<!--/.module-->
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
			<b class="copyright">&copy; 2018 GoldRush </b>All rights reserved.
		</div>
	</div>

</body>
</html>