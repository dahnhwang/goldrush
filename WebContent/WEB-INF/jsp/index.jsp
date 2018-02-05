<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jstest.js"></script>
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
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<!-- /navbar -->
	<div class="wrapper">
		<div class="container">
			<div class="span3" style="display: none;">
				<div class="sidebar">
					<ul class="widget widget-menu unstyled">
						<li class="active"><a href="index.html"><i
								class="menu-icon icon-dashboard"></i>Dashboard </a></li>
						<li><a href="activity.html"><i
								class="menu-icon icon-bullhorn"></i>News Feed </a></li>
						<li><a href="message.html"><i
								class="menu-icon icon-inbox"></i>Inbox <b
								class="label green pull-right"> 11</b> </a></li>
						<li><a href="task.html"><i class="menu-icon icon-tasks"></i>Tasks
								<b class="label orange pull-right"> 19</b> </a></li>
					</ul>
					<!--/.widget-nav-->


					<ul class="widget widget-menu unstyled">
						<li><a href="ui-button-icon.html"><i
								class="menu-icon icon-bold"></i> Buttons </a></li>
						<li><a href="ui-typography.html"><i
								class="menu-icon icon-book"></i>Typography </a></li>
						<li><a href="form.html"><i class="menu-icon icon-paste"></i>Forms
						</a></li>
						<li><a href="table.html"><i class="menu-icon icon-table"></i>Tables
						</a></li>
						<li><a href="charts.html"><i
								class="menu-icon icon-bar-chart"></i>Charts </a></li>
					</ul>
					<!--/.widget-nav-->
					<ul class="widget widget-menu unstyled">
						<li><a class="collapsed" data-toggle="collapse"
							href="#togglePages"><i class="menu-icon icon-cog"> </i><i
								class="icon-chevron-down pull-right"></i><i
								class="icon-chevron-up pull-right"> </i>More Pages </a>
							<ul id="togglePages" class="collapse unstyled">
								<li><a href="other-login.html"><i class="icon-inbox"></i>Login
								</a></li>
								<li><a href="other-user-profile.html"><i
										class="icon-inbox"></i>Profile </a></li>
								<li><a href="other-user-listing.html"><i
										class="icon-inbox"></i>All Users </a></li>
							</ul></li>
						<li><a href="#"><i class="menu-icon icon-signout"></i>Logout
						</a></li>
					</ul>
				</div>
				<!--/.sidebar-->
			</div>
			<!--/.span3-->
			<div class="span12"
				style="margin: 0 auto; float: initial; clear: both;">
				<div class="center-join">
					<span>미래를 알고 <br> 현명하게 투자하세요.<br> <input
						type="button" class="btn join-btn" value="가입하기">
					</span>
				</div>
				<div class="content">
					<div class="btn-controls">
						Updated by ${goldPrice.gold_date }
						<div class="btn-box-row row-fluid ">
							<div class="btn-box big span4 ">
								<div class="card-container ">
									<div class="card">
										<span class="side"> Gold24K<b
											style="display: inline-block; float: right; margin: 0 35px 0 0;">Buy</b>
											<hr>
											<p class="text-muted">${goldPriceResult[0]}won</p>
										</span> <span class="side back">Gold24K<b
											style="display: inline-block; float: right; margin: 0 35px 0 0;">Sell</b>
											<hr>
											<p class="text-muted">${goldPriceResult[1]}won</p>
										</span>
									</div>
								</div>

							</div>
							<div class="btn-box big span4 ">
								<div class="card-container ">
									<div class="card">
										<span class="side"> Gold18K<b
											style="display: inline-block; float: right; margin: 0 35px 0 0;">Buy</b>
											<hr>
											<p class="text-muted">${goldPriceResult[2]}won</p>
										</span> <span class="side back">Gold18K<b
											style="display: inline-block; float: right; margin: 0 35px 0 0;">Sell</b>
											<hr>
											<p class="text-muted">${goldPriceResult[3]}won</p>
										</span>
									</div>
								</div>

							</div>
							<div class="btn-box big span4 ">
								<div class="card-container ">
									<div class="card">
										<span class="side"> Gold14K<b
											style="display: inline-block; float: right; margin: 0 35px 0 0;">Buy</b>
											<hr>
											<p class="text-muted">${goldPriceResult[4]}won</p>
										</span> <span class="side back">Gold14K<b
											style="display: inline-block; float: right; margin: 0 35px 0 0;">Sell</b>
											<hr>
											<p class="text-muted">${goldPriceResult[5]}won</p>
										</span>
									</div>
								</div>

							</div>
						</div>
					</div>
					<!--/#btn-controls-->
					<div class="module">
						<div class="module-head">
							<h3>Profit Chart</h3>
						</div>
						<div class="module-body">
							<div class="chart inline-legend grid">
								<div id="placeholder2" class="graph" style="height: 500px">
								</div>
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
							<h3>DataTables</h3>
						</div>
						<div class="module-body table">
							<table cellpadding="0" cellspacing="0" border="0"
								class="datatable-1 table table-bordered table-striped	 display"
								width="100%">
								<thead>
									<tr>
										<th>No.</th>
										<th>Influence Variable</th>
										<th>Price</th>
										<th>-1 day</th>
										<th>-1 day</th>
										<th>Updated by</th>
									</tr>
								</thead>
								<tbody>
									<tr class="odd gradeA">
										<td>1</td>
										<td><a href="#" class="factors" id="GoldPrice">Gold Price</a></td>
										<td>${result1Day.gold_price}</td>
										<td>${result1Day.gold_price_rate }</td>
										<td class="center">${result1Day.gold_price_rate }</td>
										<td class="center">${result1Day.gold_price_date}</td>
									</tr>
									<tr class="even gradeA">
										<td>2</td>
										<td><a href="#" class="factors" id="DowJones">Dow Jones</a></td>
										<td>${result1Day.dow_jones}</td>
										<td>${result1Day.dow_jones_rate }</td>
										<td class="center">${result1Day.dow_jones_rate }</td>
										<td class="center">${result1Day.dow_jones_date}</td>
									</tr>
									<tr class="odd gradeA">
										<td>3</td>
										<td><a href="" class="factors" id="SP500">S&P 500</a></td>
										<td>${result1Day.sp_500}</td>
										<td>${result1Day.sp_500_rate }</td>
										<td class="center">${result1Day.sp_500_rate }</td>
										<td class="center">${result1Day.sp_500_date}</td>
									</tr>
									<tr class="even gradeA">
										<td>4</td>
										<td class="factors">Dollar Index</td>
										<td>${result1Day.dollar_index}</td>
										<td>${result1Day.dollar_index_rate }</td>
										<td class="center">${result1Day.dollar_index_rate }</td>
										<td class="center">${result1Day.dollar_index_date}</td>
									</tr>
									<tr class="odd gradeA">
										<td>5</td>
										<td class="factors">WTI</td>
										<td>${result1Day.wti}</td>
										<td>${result1Day.wti_rate }</td>
										<td class="center">${result1Day.wti_rate }</td>
										<td class="center">${result1Day.wti_date}</td>
									</tr>
									<tr class="even gradeA">
										<td>6</td>
										<td class="factors">Interest Rate</td>
										<td>${result1Day.interest_rate}</td>
										<td>${result1Day.interest_rate_rate }</td>
										<td class="center">${result1Day.interest_rate_rate }</td>
										<td class="center">${result1Day.interest_rate_date}</td>
									</tr>
									<tr class="odd gradeA">
										<td>7</td>
										<td class="factors">GDP</td>
										<td>${result1Day.gdp}</td>
										<td>${result1Day.gdp_rate }</td>
										<td class="center">${result1Day.gdp_rate }</td>
										<td class="center">${result1Day.gdp_time}</td>
									</tr>
									<tr class="even gradeA">
										<td>8</td>
										<td class="factors">Inflation</td>
										<td>${result1Day.inflation}</td>
										<td>${result1Day.inflation_rate }</td>
										<td class="center">${result1Day.inflation_rate }</td>
										<td class="center">${result1Day.inflation_date}</td>
									</tr>
									<tr class="odd gradeA">
										<td>9</td>
										<td class="factors">Balance of Trade</td>
										<td>${result1Day.balance_trade}</td>
										<td>${result1Day.balance_trade_rate }</td>
										<td class="center">${result1Day.balance_trade_rate }</td>
										<td class="center">${result1Day.balance_trade_date}</td>
									</tr>
									<tr class="even gradeA">
										<td>10</td>
										<td class="factors">CPI</td>
										<td>${result1Day.cpi}</td>
										<td>${result1Day.cpi_rate }</td>
										<td class="center">${result1Day.cpi_rate }</td>
										<td class="center">${result1Day.cpi_date}</td>
									</tr>
									<tr class="odd gradeA">
										<td>11</td>
										<td class="factors">Gold Mining Production</td>
										<td>${result1Day.gold_mine}</td>
										<td>${result1Day.gold_mine_rate }</td>
										<td class="center">${result1Day.gold_mine_rate }</td>
										<td class="center">${result1Day.gold_mine_date}</td>
									</tr>
									<tr class="even gradeA">
										<td>12</td>
										<td class="factors">Uncertainty</td>
										<td>${result1Day.uncertainty}</td>
										<td>${result1Day.uncertainty_rate }</td>
										<td class="center">${result1Day.uncertainty_rate }</td>
										<td class="center">${result1Day.uncertainty_time}</td>
									</tr>
									<tr class="even gradeA">
										<td>13</td>
										<td class="factors">Money Stock</td>
										<td>${result1Day.money_stock}</td>
										<td>${result1Day.money_stock_rate }</td>
										<td class="center">${result1Day.money_stock_rate }</td>
										<td class="center">${result1Day.money_stock_date}</td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<th>Rendering engine</th>
										<th>Browser</th>
										<th>Platform(s)</th>
										<th>Engine version</th>
										<th>CSS grade</th>
										<th>CSS grade</th>
									</tr>
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
	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
	<script src="scripts/moment.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
	<script src="scripts/datatables/jquery.dataTables.js"
		type="text/javascript"></script>
	<script src="scripts/common.js" type="text/javascript"></script>

</body>
</html>