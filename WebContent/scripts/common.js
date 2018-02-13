$(document).ready(function() {

	$.ajax({
		url : 'index_ajax.do',
		type : 'get',
		dataType : 'json',
		success : function(data) {
			var d1 = [];

			var size = data.sizeByMonth;
			var i = 0;
			var h = 1989;
			var label = ""

			var exRate = data.exrate

			for (var i = 0; i < size; i++) {

				var fr_id = i;
				var gold_price = data.byMonth[fr_id].gold_price;
				gold_price = gold_price / 28.35 * 3.75 * exRate;
				gold_price = Math.floor(gold_price, 2)

				factor = []
				factor.push(h);
				h += 1 / 12; //x축 카테고리
				factor.push(gold_price);
				d1.push(factor)
				label = "원/1돈"
			}

			factor_data(d1, label)
		}
	})

});

function factor_data(d1, label) {

	if ($('.datatable-1').length > 0) {
		$('.datatable-1').dataTable();
		$('.dataTables_paginate').addClass('btn-group datatable-pagination');
		$('.dataTables_paginate > a').wrapInner('<span />');
		$('.dataTables_paginate > a:first-child').append(
				'<i class="icon-chevron-left shaded"></i>');
		$('.dataTables_paginate > a:last-child').append(
				'<i class="icon-chevron-right shaded"></i>');

		$('.slider-range').slider({
			range : true,
			min : 0,
			max : 20000,
			values : [ 3000, 12000 ],
			slide : function(event, ui) {
				$(this).find('.ui-slider-handle').attr('title', ui.value);
			},
		});

		$('#amount').val(
				'$' + $('.slider-range').slider('values', 0) + ' - $'
						+ $('.slider-range').slider('values', 1));

		// Graph/Chart index.html

		var plot = $.plot($('#placeholder2'), [ {
			data : d1,
			label : label
		} ], {
			lines : {
				show : true,
				fill : true,
				lineWidth : 2
			},
			points : {
				show : true,
				lineWidth : 5
			},
			grid : {
				clickable : true,
				hoverable : true,
				autoHighlight : true,
				mouseActiveRadius : 10,
				aboveData : true,
				backgroundColor : '#fff',
				borderWidth : 0,
				minBorderMargin : 25,
			},
			colors : [ '#55f3c0', '#0db37e', '#b4fae3', '#e0d1cb' ],
			shadowSize : 0
		});

		function showTooltip(x, y, contents) {
			$('<div id="gridtip">' + contents + '</div>').css({
				position : 'absolute',
				display : 'none',
				top : y + 5,
				left : x + 5
			}).appendTo('body').fadeIn(300);
		}

		var previousPoint = null;
		$('#placeholder2')
				.bind(
						'plothover',
						function(event, pos, item) {
							$('#x').text(pos.x.toFixed(2));
							$('#y').text(pos.y.toFixed(2));

							if (item) {
								if (previousPoint != item.dataIndex) {
									previousPoint = item.dataIndex;

									$('#gridtip').remove();
									var x = item.datapoint[0].toFixed(0), y = item.datapoint[1]
											.toFixed(0);

									showTooltip(item.pageX, item.pageY, 'x : '
											+ x + '&nbsp;&nbsp;&nbsp; y : ' + y);
								}
							} else {
								$('#gridtip').remove();
								previousPoint = null;
							}
						});
	}
}

function factor_data_non(d1, label) {

	if ($('.datatable-1').length > 0) {
		$('.datatable-1').dataTable();
		$('.dataTables_paginate').addClass('btn-group datatable-pagination');
		$('.dataTables_paginate > a').wrapInner('<span />');
		$('.dataTables_paginate > a:first-child').append(
				'<i class="icon-chevron-left shaded"></i>');
		$('.dataTables_paginate > a:last-child').append(
				'<i class="icon-chevron-right shaded"></i>');

		$('.slider-range').slider({
			range : true,
			min : 0,
			max : 20000,
			values : [ 3000, 12000 ],
			slide : function(event, ui) {
				$(this).find('.ui-slider-handle').attr('title', ui.value);
			},
		});

		$('#amount').val(
				'$' + $('.slider-range').slider('values', 0) + ' - $'
						+ $('.slider-range').slider('values', 1));

		// Graph/Chart index.html

		var plot = $.plot($('#placeholder2'), [ {
			data : d1,
			label : label
		} ], {
			lines : {
				show : true,
				fill : false,
				lineWidth : 2
			},
			points : {
				show : true,
				lineWidth : 5
			},
			grid : {
				clickable : true,
				hoverable : true,
				autoHighlight : true,
				mouseActiveRadius : 10,
				aboveData : true,
				backgroundColor : '#fff',
				borderWidth : 0,
				minBorderMargin : 25,
			},
			colors : [ '#55f3c0', '#0db37e', '#b4fae3', '#e0d1cb' ],
			shadowSize : 0
		});

		function showTooltip(x, y, contents) {
			$('<div id="gridtip">' + contents + '</div>').css({
				position : 'absolute',
				display : 'none',
				top : y + 5,
				left : x + 5
			}).appendTo('body').fadeIn(300);
		}

		var previousPoint = null;
		$('#placeholder2')
				.bind(
						'plothover',
						function(event, pos, item) {
							$('#x').text(pos.x.toFixed(2));
							$('#y').text(pos.y.toFixed(2));

							if (item) {
								if (previousPoint != item.dataIndex) {
									previousPoint = item.dataIndex;

									$('#gridtip').remove();
									var x = item.datapoint[0].toFixed(0), y = item.datapoint[1]
											.toFixed(0);

									showTooltip(item.pageX, item.pageY, 'x : '
											+ x + '&nbsp;&nbsp;&nbsp; y : ' + y);
								}
							} else {
								$('#gridtip').remove();
								previousPoint = null;
							}
						});
	}
}

$('.factors').click(function() {
	var factorId = $(this).attr('id')

	$.ajax({
		url : 'index_ajax.do',
		type : 'get',
		dataType : 'json',
		success : function(data) {
			var d1 = [];
			var d2 = [];
			var d3 = [];
			var d4 = [];
			var d5 = [];
			var d6 = [];
			var d7 = [];
			var d8 = [];
			var d9 = [];
			var d10 = [];
			var d11 = [];
			var d12 = [];
			var d13 = [];
			var label = ""

			var size = data.sizeByMonth;
			var i = 0;
			var h = 1989;

			var exRate = data.exrate

			for (var i = 0; i < size; i++) {

				var fr_id = i;
				var gold_price = data.byMonth[fr_id].gold_price;
				gold_price = gold_price / 28.35 * 3.75 * exRate;
				gold_price = Math.floor(gold_price, 2)
				var dow_jones = data.byMonth[fr_id].dow_jones;
				var sp_500 = data.byMonth[fr_id].sp_500;

				var dollar_index = data.byMonth[fr_id].dollar_index;
				var wti = data.byMonth[fr_id].wti;
				var interest_rate = data.byMonth[fr_id].interest_rate;
				var gdp = data.byMonth[fr_id].gdp;
				var inflation = data.byMonth[fr_id].inflation;
				var balance_trade = data.byMonth[fr_id].balance_trade;
				var cpi = data.byMonth[fr_id].cpi;
				var gold_mine = data.byMonth[fr_id].gold_mine;
				var uncertainty = data.byMonth[fr_id].uncertainty;
				var money_stock = data.byMonth[fr_id].money_stock;

				gold_price_data = []
				gold_price_data.push(h);

				dow_jones_data = []
				dow_jones_data.push(h);

				sp_500_data = []
				sp_500_data.push(h);

				dollar_index_data = []
				dollar_index_data.push(h);

				wti_data = []
				wti_data.push(h);

				interest_rate_data = []
				interest_rate_data.push(h);

				gdp_data = []
				gdp_data.push(h);

				inflation_data = []
				inflation_data.push(h);

				balance_trade_data = []
				balance_trade_data.push(h);

				cpi_data = []
				cpi_data.push(h);

				gold_mine_data = []
				gold_mine_data.push(h);

				uncertainty_data = []
				uncertainty_data.push(h);

				money_stock_data = []
				money_stock_data.push(h);

				h += 1 / 12;

				gold_price_data.push(gold_price);
				d1.push(gold_price_data)

				dow_jones_data.push(dow_jones);
				d2.push(dow_jones_data)

				sp_500_data.push(sp_500);
				d3.push(sp_500_data)

				dollar_index_data.push(dollar_index);
				d4.push(dollar_index_data)

				wti_data.push(wti);
				d5.push(wti_data)

				interest_rate_data.push(interest_rate);
				d6.push(interest_rate_data)

				gdp_data.push(gdp);
				d7.push(gdp)

				inflation_data.push(inflation);
				d8.push(inflation_data)

				balance_trade_data.push(balance_trade);
				d9.push(balance_trade_data)

				cpi_data.push(cpi);
				d10.push(cpi_data)

				gold_mine_data.push(gold_mine);
				d11.push(gold_mine_data)

				uncertainty_data.push(uncertainty);
				d12.push(uncertainty_data)

				money_stock_data.push(money_stock);
				d13.push(money_stock_data)
			}

			if (factorId == "G") {
				label = "원 / 돈"
				factor_data(d1, label)
			} else if (factorId == "DJ") {
				label = "달러 (USD)"
				factor_data(d2, label)
			} else if (factorId == "SP") {
				label = "달러 (USD)"
				factor_data(d3, label)
			} else if (factorId == "DI") {
				label = "인덱스, 1973년 = 100"
				factor_data(d4, label)
			} else if (factorId == "WTI") {
				label = "달러 (USD) / 배럴"
				factor_data(d5, label)
			} else if (factorId == "IR") {
				label = "% (달러)"
				factor_data(d6, label)
			} else if (factorId == "GDP") {
				label = "십억 달러 (Billions of Dollars)"
				factor_data(d7, label)
			} else if (factorId == "IF") {
				label = "%"
				factor_data(d8, label)
			} else if (factorId == "BT") {
				label = "백만 달러 (Millions of Dollars)"
				factor_data(d9, label)
			} else if (factorId == "CPI") {
				label = "인덱스, 1982년 = 100"
				factor_data(d10, label)
			} else if (factorId == "GM") {
				label = "인덱스, 2012년 = 100"
				factor_data(d11, label)
			} else if (factorId == "UC") {
				label = "자체 지수"
				factor_data(d12, label)
			} else if (factorId == "MS") {
				label = "십억 달러 (Billions of Dollars)"
				factor_data(d13, label)
			}
		}
	})

})

$('.select').click(function() {
	var selectId = $(this).attr('id')
	var factorId = $('#factorsSelect option:selected').val();

	if (selectId == "monthly-1989") {

		$.ajax({
			url : 'index_ajax.do',
			type : 'get',
			dataType : 'json',
			success : function(data) {
				var d1 = [];
				var d2 = [];
				var d3 = [];
				var d4 = [];
				var d5 = [];
				var d6 = [];
				var d7 = [];
				var d8 = [];
				var d9 = [];
				var d10 = [];
				var d11 = [];
				var d12 = [];
				var d13 = [];
				var label = ""

				var size = data.sizeByMonth;
				var i = 0;
				var h = 1989;

				var exRate = data.exrate

				for (var i = 0; i < size; i++) {

					var fr_id = i;
					var gold_price = data.byMonth[fr_id].gold_price;
					gold_price = gold_price / 28.35 * 3.75 * exRate;
					gold_price = Math.floor(gold_price, 2)
					var dow_jones = data.byMonth[fr_id].dow_jones;
					var sp_500 = data.byMonth[fr_id].sp_500;

					var dollar_index = data.byMonth[fr_id].dollar_index;
					var wti = data.byMonth[fr_id].wti;
					var interest_rate = data.byMonth[fr_id].interest_rate;
					var gdp = data.byMonth[fr_id].gdp;
					var inflation = data.byMonth[fr_id].inflation;
					var balance_trade = data.byMonth[fr_id].balance_trade;
					var cpi = data.byMonth[fr_id].cpi;
					var gold_mine = data.byMonth[fr_id].gold_mine;
					var uncertainty = data.byMonth[fr_id].uncertainty;
					var money_stock = data.byMonth[fr_id].money_stock;

					gold_price_data = []
					gold_price_data.push(h);

					dow_jones_data = []
					dow_jones_data.push(h);

					sp_500_data = []
					sp_500_data.push(h);

					dollar_index_data = []
					dollar_index_data.push(h);

					wti_data = []
					wti_data.push(h);

					interest_rate_data = []
					interest_rate_data.push(h);

					gdp_data = []
					gdp_data.push(h);

					inflation_data = []
					inflation_data.push(h);

					balance_trade_data = []
					balance_trade_data.push(h);

					cpi_data = []
					cpi_data.push(h);

					gold_mine_data = []
					gold_mine_data.push(h);

					uncertainty_data = []
					uncertainty_data.push(h);

					money_stock_data = []
					money_stock_data.push(h);

					h += 1 / 12;

					gold_price_data.push(gold_price);
					d1.push(gold_price_data)

					dow_jones_data.push(dow_jones);
					d2.push(dow_jones_data)

					sp_500_data.push(sp_500);
					d3.push(sp_500_data)

					dollar_index_data.push(dollar_index);
					d4.push(dollar_index_data)

					wti_data.push(wti);
					d5.push(wti_data)

					interest_rate_data.push(interest_rate);
					d6.push(interest_rate_data)

					gdp_data.push(gdp);
					d7.push(gdp)

					inflation_data.push(inflation);
					d8.push(inflation_data)

					balance_trade_data.push(balance_trade);
					d9.push(balance_trade_data)

					cpi_data.push(cpi);
					d10.push(cpi_data)

					gold_mine_data.push(gold_mine);
					d11.push(gold_mine_data)

					uncertainty_data.push(uncertainty);
					d12.push(uncertainty_data)

					money_stock_data.push(money_stock);
					d13.push(money_stock_data)
				}

				if (factorId == "G") {
					label = "원/1돈"
					factor_data(d1, label)
				} else if (factorId == "DJ") {
					label = "달러(USD)"
					factor_data(d2, label)
				} else if (factorId == "SP") {
					label = "달러 (USD)"
					factor_data(d3, label)
				} else if (factorId == "DI") {
					label = "인덱스, 1973년 = 100"
					factor_data(d4, label)
				} else if (factorId == "WTI") {
					label = "달러 (USD) / 배럴"
					factor_data(d5, label)
				} else if (factorId == "IR") {
					label = "% (달러)"
					factor_data(d6, label)
				} else if (factorId == "GDP") {
					label = "십억 달러 (Billions of Dollars)"
					factor_data(d7, label)
				} else if (factorId == "IF") {
					label = "%"
					factor_data(d8, label)
				} else if (factorId == "BT") {
					label = "백만 달러 (Millions of Dollars)"
					factor_data(d9, label)
				} else if (factorId == "CPI") {
					label = "인덱스, 1982년 = 100"
					factor_data(d10, label)
				} else if (factorId == "GM") {
					label = "인덱스, 2012년 = 100"
					factor_data(d11, label)
				} else if (factorId == "UC") {
					label = "자체 지수"
					factor_data(d12, label)
				} else if (factorId == "MS") {
					label = "십억 달러 (Billions of Dollars)"
					factor_data(d13, label)
				}
			}
		})
	}

	if (selectId == "monthly-10") {

		$.ajax({
			url : 'index_ajax.do',
			type : 'get',
			dataType : 'json',
			success : function(data) {
				var d1 = [];
				var d2 = [];
				var d3 = [];
				var d4 = [];
				var d5 = [];
				var d6 = [];
				var d7 = [];
				var d8 = [];
				var d9 = [];
				var d10 = [];
				var d11 = [];
				var d12 = [];
				var d13 = [];
				var label = ""

				var size = data.sizeByMonth;
				var i = 0;
				var h = 2018 + 1 / 12;

				var exRate = data.exrate

				for (var i = size - 1; i > size - 121; i--) {

					var fr_id = i;
					var gold_price = data.byMonth[fr_id].gold_price;
					gold_price = gold_price / 28.35 * 3.75 * exRate;
					gold_price = Math.floor(gold_price, 2)

					var dow_jones = data.byMonth[fr_id].dow_jones;
					var sp_500 = data.byMonth[fr_id].sp_500;

					var dollar_index = data.byMonth[fr_id].dollar_index;
					var wti = data.byMonth[fr_id].wti;
					var interest_rate = data.byMonth[fr_id].interest_rate;
					var gdp = data.byMonth[fr_id].gdp;
					var inflation = data.byMonth[fr_id].inflation;
					var balance_trade = data.byMonth[fr_id].balance_trade;
					var cpi = data.byMonth[fr_id].cpi;
					var gold_mine = data.byMonth[fr_id].gold_mine;
					var uncertainty = data.byMonth[fr_id].uncertainty;
					var money_stock = data.byMonth[fr_id].money_stock;

					gold_price_data = []
					gold_price_data.push(h);

					dow_jones_data = []
					dow_jones_data.push(h);

					sp_500_data = []
					sp_500_data.push(h);

					dollar_index_data = []
					dollar_index_data.push(h);

					wti_data = []
					wti_data.push(h);

					interest_rate_data = []
					interest_rate_data.push(h);

					gdp_data = []
					gdp_data.push(h);

					inflation_data = []
					inflation_data.push(h);

					balance_trade_data = []
					balance_trade_data.push(h);

					cpi_data = []
					cpi_data.push(h);

					gold_mine_data = []
					gold_mine_data.push(h);

					uncertainty_data = []
					uncertainty_data.push(h);

					money_stock_data = []
					money_stock_data.push(h);

					h -= 1 / 12;

					gold_price_data.push(gold_price);
					d1.push(gold_price_data)

					dow_jones_data.push(dow_jones);
					d2.push(dow_jones_data)

					sp_500_data.push(sp_500);
					d3.push(sp_500_data)

					dollar_index_data.push(dollar_index);
					d4.push(dollar_index_data)

					wti_data.push(wti);
					d5.push(wti_data)

					interest_rate_data.push(interest_rate);
					d6.push(interest_rate_data)

					gdp_data.push(gdp);
					d7.push(gdp)

					inflation_data.push(inflation);
					d8.push(inflation_data)

					balance_trade_data.push(balance_trade);
					d9.push(balance_trade_data)

					cpi_data.push(cpi);
					d10.push(cpi_data)

					gold_mine_data.push(gold_mine);
					d11.push(gold_mine_data)

					uncertainty_data.push(uncertainty);
					d12.push(uncertainty_data)

					money_stock_data.push(money_stock);
					d13.push(money_stock_data)
				}

				if (factorId == "G") {
					label = "원/1돈"
					factor_data(d1, label)
				} else if (factorId == "DJ") {
					label = "달러(USD)"
					factor_data(d2, label)
				} else if (factorId == "SP") {
					label = "달러 (USD)"
					factor_data(d3, label)
				} else if (factorId == "DI") {
					label = "인덱스, 1973년 = 100"
					factor_data(d4, label)
				} else if (factorId == "WTI") {
					label = "달러 (USD) / 배럴"
					factor_data(d5, label)
				} else if (factorId == "IR") {
					label = "% (달러)"
					factor_data(d6, label)
				} else if (factorId == "GDP") {
					label = "십억 달러 (Billions of Dollars)"
					factor_data(d7, label)
				} else if (factorId == "IF") {
					label = "%"
					factor_data(d8, label)
				} else if (factorId == "BT") {
					label = "백만 달러 (Millions of Dollars)"
					factor_data(d9, label)
				} else if (factorId == "CPI") {
					label = "인덱스, 1982년 = 100"
					factor_data(d10, label)
				} else if (factorId == "GM") {
					label = "인덱스, 2012년 = 100"
					factor_data(d11, label)
				} else if (factorId == "UC") {
					label = "자체 지수"
					factor_data(d12, label)
				} else if (factorId == "MS") {
					label = "십억 달러 (Billions of Dollars)"
					factor_data(d13, label)
				}
			}
		})
	}

	if (selectId == "daily-1") {

		$.ajax({
			url : 'index_ajax.do',
			type : 'get',
			dataType : 'json',
			success : function(data) {
				var d1 = [];
				var d2 = [];
				var d3 = [];
				var d4 = [];
				var d5 = [];
				var d6 = [];
				var d7 = [];
				var d8 = [];
				var d9 = [];
				var d10 = [];
				var d11 = [];
				var d12 = [];
				var d13 = [];
				var label = ""

				var size = data.sizeByDaily;
				var i = 0;
				var h = 0;

				var exRate = data.exrate

				for (var i = size - 1; i > size - 365; i--) {
					var fr_id = i;
					var gold_price = data.byDaily[fr_id].gold_price;
					gold_price = gold_price / 28.35 * 3.75 * exRate;
					gold_price = Math.floor(gold_price, 2)
					var dow_jones = data.byDaily[fr_id].dow_jones;
					var dollar_index = data.byDaily[fr_id].dollar_index;
					var wti = data.byDaily[fr_id].wti;
					var interest_rate = data.byDaily[fr_id].interest_rate;
					var gdp = data.byDaily[fr_id].gdp;
					var inflation = data.byDaily[fr_id].inflation;
					var balance_trade = data.byDaily[fr_id].balance_trade;
					var cpi = data.byDaily[fr_id].cpi;
					var gold_mine = data.byDaily[fr_id].gold_mine;
					var uncertainty = data.byDaily[fr_id].uncertainty;

					gold_price_data = []
					gold_price_data.push(h);

					dow_jones_data = []
					dow_jones_data.push(h);

					dollar_index_data = []
					dollar_index_data.push(h);

					wti_data = []
					wti_data.push(h);

					interest_rate_data = []
					interest_rate_data.push(h);

					gdp_data = []
					gdp_data.push(h);

					inflation_data = []
					inflation_data.push(h);

					balance_trade_data = []
					balance_trade_data.push(h);

					cpi_data = []
					cpi_data.push(h);

					gold_mine_data = []
					gold_mine_data.push(h);

					uncertainty_data = []
					uncertainty_data.push(h);

					h -= 1 / 30;

					gold_price_data.push(gold_price);
					d1.push(gold_price_data)

					dow_jones_data.push(dow_jones);
					d2.push(dow_jones_data)

					dollar_index_data.push(dollar_index);
					d4.push(dollar_index_data)

					wti_data.push(wti);
					d5.push(wti_data)

					interest_rate_data.push(interest_rate);
					d6.push(interest_rate_data)

					gdp_data.push(gdp);
					d7.push(gdp)

					inflation_data.push(inflation);
					d8.push(inflation_data)

					balance_trade_data.push(balance_trade);
					d9.push(balance_trade_data)

					cpi_data.push(cpi);
					d10.push(cpi_data)

					gold_mine_data.push(gold_mine);
					d11.push(gold_mine_data)

					uncertainty_data.push(uncertainty);
					d12.push(uncertainty_data)

				}

				if (factorId == "G") {
					label = "원/1돈"
					factor_data_non(d1, label)
				} else if (factorId == "DJ") {
					label = "달러(USD)"
					factor_data_non(d2, label)
				} else if (factorId == "DI") {
					label = "인덱스, 1973년 = 100"
					factor_data_non(d4, label)
				} else if (factorId == "WTI") {
					label = "달러 (USD) / 배럴"
					factor_data_non(d5, label)
				} else if (factorId == "IR") {
					label = "% (달러)"
					factor_data_non(d6, label)
				} else if (factorId == "GDP") {
					label = "십억 달러 (Billions of Dollars)"
					factor_data_non(d7, label)
				} else if (factorId == "IF") {
					label = "%"
					factor_data_non(d8, label)
				} else if (factorId == "BT") {
					label = "백만 달러 (Millions of Dollars)"
					factor_data(d9, label)
				} else if (factorId == "CPI") {
					label = "인덱스, 1982년 = 100"
					factor_data_non(d10, label)
				} else if (factorId == "GM") {
					label = "인덱스, 2012년 = 100"
					factor_data_non(d11, label)
				} else if (factorId == "UC") {
					label = "자체 지수"
					factor_data_non(d12, label)
				}
			}
		})
	}

	if (selectId == "week-daily-time") {

		$.ajax({
			url : 'index_ajax.do',
			type : 'get',
			dataType : 'json',
			success : function(data) {
				var d1 = [];
				var d2 = [];
				var d3 = [];
				var d4 = [];
				var d5 = [];
				var d6 = [];
				var d7 = [];
				var d8 = [];
				var d9 = [];
				var d10 = [];
				var d11 = [];
				var d12 = [];
				var d13 = [];
				var label = ""

				var size = data.size;

				var j = 0;

				var exRate = data.exrate
				for (var i = size; i > size - 24 * 7; i--) {

					var fr_id = size - i;
					var gold_price = data.recentAll[fr_id].gold_price;
					gold_price = gold_price / 28.35 * 3.75 * exRate;
					gold_price = Math.floor(gold_price, 2)
					var dow_jones = data.recentAll[fr_id].dow_jones;
					var sp_500 = data.recentAll[fr_id].sp_500;
					var dollar_index = data.recentAll[fr_id].dollar_index;
					var wti = data.recentAll[fr_id].wti;
					var interest_rate = data.recentAll[fr_id].interest_rate;
					var gdp = data.recentAll[fr_id].gdp;
					var inflation = data.recentAll[fr_id].inflation;
					var balance_trade = data.recentAll[fr_id].balance_trade;
					var cpi = data.recentAll[fr_id].cpi;
					var gold_mine = data.recentAll[fr_id].gold_mine;
					var uncertainty = data.recentAll[fr_id].uncertainty;
					var money_stock = data.recentAll[fr_id].money_stock;

					gold_price_data = []
					gold_price_data.push(j);
					gold_price_data.push(gold_price);

					dow_jones_data = []
					dow_jones_data.push(j);
					dow_jones_data.push(dow_jones);

					sp_500_data = []
					sp_500_data.push(j);
					sp_500_data.push(sp_500);

					dollar_index = []
					dollar_index_data.push(j);
					dollar_index_data.push(dollar_index);

					wti_data = []
					wti_data.push(j);
					wti_data.push(wti);

					interest_rate_data = []
					interest_rate_data.push(j);
					interest_rate_data.push(interest_rate);

					gdp_data = []
					gdp_data.push(j);
					gdp_data.push(gdp);

					inflation_data = []
					inflation_data.push(j);
					inflation_data.push(inflation);

					balance_trade_data = []
					balance_trade_data.push(j);
					balance_trade_data.push(balance_trade);

					cpi_data = []
					cpi_data.push(j);
					cpi_data.push(cpi);

					gold_mine_data = []
					gold_mine_data.push(j);
					gold_mine_data.push(gold_mine);

					uncertainty_data = []
					uncertainty_data.push(j);
					uncertainty_data.push(uncertainty);

					money_stock_data = []
					money_stock_data.push(j);
					money_stock_data.push(money_stock);

					d1.push(gold_price_data)
					d2.push(dow_jones_data)
					d3.push(sp_500_data)
					d4.push(dollar_index_data)
					d5.push(wti_data)
					d6.push(interest_rate_data)
					d7.push(gdp_data)
					d8.push(inflation_data)
					d9.push(balance_trade_data)
					d10.push(cpi_data)
					d11.push(gold_mine_data)
					d12.push(uncertainty_data)
					d13.push(money_stock_data)

					j = j - 1 / 24;

				}

				if (factorId == "G") {
					label = "원/1돈"
					factor_data_non(d1, label)
				} else if (factorId == "DJ") {
					label = "달러(USD)"
					factor_data_non(d2, label)
				} else if (factorId == "SP") {
					label = "달러 (USD)"
					factor_data_non(d3, label)
				} else if (factorId == "DI") {
					label = "인덱스, 1973년 = 100"
					factor_data_non(d4, label)
				} else if (factorId == "WTI") {
					label = "달러 (USD) / 배럴"
					factor_data_non(d5, label)
				} else if (factorId == "IR") {
					label = "% (달러)"
					factor_data_non(d6, label)
				} else if (factorId == "GDP") {
					label = "십억 달러 (Billions of Dollars)"
					factor_data_non(d7, label)
				} else if (factorId == "IF") {
					label = "%"
					factor_data_non(d8, label)
				} else if (factorId == "BT") {
					label = "백만 달러 (Millions of Dollars)"
					factor_data_non(d9, label)
				} else if (factorId == "CPI") {
					label = "인덱스, 1982년 = 100"
					factor_data_non(d10, label)
				} else if (factorId == "GM") {
					label = "인덱스, 2012년 = 100"
					factor_data_non(d11, label)
				} else if (factorId == "UC") {
					label = "자체 지수"
					factor_data_non(d12, label)
				} else if (factorId == "MS") {
					label = "십억 달러 (Billions of Dollars)"
					factor_data_non(d13, label)
				}
			}
		})
	}

	if (selectId == "daily-time") {

		$.ajax({
			url : 'index_ajax.do',
			type : 'get',
			dataType : 'json',
			success : function(data) {
				var d1 = [];
				var d2 = [];
				var d3 = [];
				var d4 = [];
				var d5 = [];
				var d6 = [];
				var d7 = [];
				var d8 = [];
				var d9 = [];
				var d10 = [];
				var d11 = [];
				var d12 = [];
				var d13 = [];
				var label = ""

				var size = data.size;

				var j = 0;
				var exRate = data.exrate
				for (var i = size; i > size - 24; i--) {

					var fr_id = size - i;
					var gold_price = data.recentAll[fr_id].gold_price;
					gold_price = gold_price / 28.35 * 3.75 * exRate;
					gold_price = Math.floor(gold_price, 2)
					var dow_jones = data.recentAll[fr_id].dow_jones;
					var sp_500 = data.recentAll[fr_id].sp_500;
					var dollar_index = data.recentAll[fr_id].dollar_index;
					var wti = data.recentAll[fr_id].wti;
					var interest_rate = data.recentAll[fr_id].interest_rate;
					var gdp = data.recentAll[fr_id].gdp;
					var inflation = data.recentAll[fr_id].inflation;
					var balance_trade = data.recentAll[fr_id].balance_trade;
					var cpi = data.recentAll[fr_id].cpi;
					var gold_mine = data.recentAll[fr_id].gold_mine;
					var uncertainty = data.recentAll[fr_id].uncertainty;
					var money_stock = data.recentAll[fr_id].money_stock;

					gold_price_data = []
					gold_price_data.push(j);
					gold_price_data.push(gold_price);

					dow_jones_data = []
					dow_jones_data.push(j);
					dow_jones_data.push(dow_jones);

					sp_500_data = []
					sp_500_data.push(j);
					sp_500_data.push(sp_500);

					dollar_index = []
					dollar_index_data.push(j);
					dollar_index_data.push(dollar_index);

					wti_data = []
					wti_data.push(j);
					wti_data.push(wti);

					interest_rate_data = []
					interest_rate_data.push(j);
					interest_rate_data.push(interest_rate);

					gdp_data = []
					gdp_data.push(j);
					gdp_data.push(gdp);

					inflation_data = []
					inflation_data.push(j);
					inflation_data.push(inflation);

					balance_trade_data = []
					balance_trade_data.push(j);
					balance_trade_data.push(balance_trade);

					cpi_data = []
					cpi_data.push(j);
					cpi_data.push(cpi);

					gold_mine_data = []
					gold_mine_data.push(j);
					gold_mine_data.push(gold_mine);

					uncertainty_data = []
					uncertainty_data.push(j);
					uncertainty_data.push(uncertainty);

					money_stock_data = []
					money_stock_data.push(j);
					money_stock_data.push(money_stock);

					d1.push(gold_price_data)
					d2.push(dow_jones_data)
					d3.push(sp_500_data)
					d4.push(dollar_index_data)
					d5.push(wti_data)
					d6.push(interest_rate_data)
					d7.push(gdp_data)
					d8.push(inflation_data)
					d9.push(balance_trade_data)
					d10.push(cpi_data)
					d11.push(gold_mine_data)
					d12.push(uncertainty_data)
					d13.push(money_stock_data)

					j = j - 1;

				}

				if (factorId == "G") {
					label = "원/1돈"
					factor_data_non(d1, label)
				} else if (factorId == "DJ") {
					label = "달러(USD)"
					factor_data_non(d2, label)
				} else if (factorId == "SP") {
					label = "달러 (USD)"
					factor_data_non(d3, label)
				} else if (factorId == "DI") {
					label = "인덱스, 1973년 = 100"
					factor_data_non(d4, label)
				} else if (factorId == "WTI") {
					label = "달러 (USD) / 배럴"
					factor_data_non(d5, label)
				} else if (factorId == "IR") {
					label = "% (달러)"
					factor_data_non(d6, label)
				} else if (factorId == "GDP") {
					label = "십억 달러 (Billions of Dollars)"
					factor_data_non(d7, label)
				} else if (factorId == "IF") {
					label = "%"
					factor_data_non(d8, label)
				} else if (factorId == "BT") {
					label = "백만 달러 (Millions of Dollars)"
					factor_data_non(d9, label)
				} else if (factorId == "CPI") {
					label = "인덱스, 1982년 = 100"
					factor_data_non(d10, label)
				} else if (factorId == "GM") {
					label = "인덱스, 2012년 = 100"
					factor_data_non(d11, label)
				} else if (factorId == "UC") {
					label = "자체 지수"
					factor_data_non(d12, label)
				} else if (factorId == "MS") {
					label = "십억 달러 (Billions of Dollars)"
					factor_data_non(d13, label)
				}
			}
		})
	}

})

/*
 * $('.factors').click(function(){ var factorId = $(this).attr('id')
 * 
 * $.ajax({ url:'index_ajax.do', type:'get', dataType:'json',
 * success:function(data){ var d1 = []; var d2 = []; var d3 = [];
 * 
 * var size = data.size;
 * 
 * for(var i=9;i>0;i--){
 * 
 * var fr_id=size-12*i; var gold_price=data.recentAll[fr_id].gold_price; var
 * gold_price_date=moment(data.recentAll[fr_id].gold_price_date).format('DD');
 * var dow_jones=data.recentAll[fr_id].dow_jones; var
 * dow_jones_date=data.recentAll[fr_id].dow_jones_date; var
 * sp_500=data.recentAll[fr_id].sp_500; var
 * sp_500_date=data.recentAll[fr_id].sp_500_date;
 * 
 * gold_price_data=[] gold_price_data.push(9*12-12*i);
 * gold_price_data.push(gold_price);
 * 
 * dow_jones_data=[] dow_jones_data.push(9*12-12*i);
 * dow_jones_data.push(dow_jones);
 * 
 * sp_500_data=[] sp_500_data.push(9*12-12*i); sp_500_data.push(sp_500);
 * 
 * d1.push(gold_price_data) d2.push(dow_jones_data) d3.push(sp_500_data)
 *  }
 * 
 * if(factorId=="GoldPrice"){ factor_data(d1) }else if(factorId=="DowJones"){
 * factor_data(d2) }else if(factorId=="SP500"){ factor_data(d3) } } })
 *  })
 */

/*
 * $(document).ready(function () { if($('.datatable-1').length>0){
 * $('.datatable-1').dataTable(); $('.dataTables_paginate').addClass('btn-group
 * datatable-pagination'); $('.dataTables_paginate > a').wrapInner('<span />');
 * $('.dataTables_paginate > a:first-child').append('<i
 * class="icon-chevron-left shaded"></i>'); $('.dataTables_paginate >
 * a:last-child').append('<i class="icon-chevron-right shaded"></i>');
 *  $( '.slider-range').slider({ range: true, min: 0, max: 20000, values: [
 * 3000, 12000 ], slide: function(event, ui) {
 * $(this).find('.ui-slider-handle').attr('title', ui.value); }, });
 *  $( '#amount' ).val( '$' + $( '.slider-range' ).slider( 'values', 0 ) + ' - $' + $(
 * '.slider-range' ).slider( 'values', 1 ) );
 * 
 * 
 * //Graph/Chart index.html
 * 
 * var d1 = [ [0, 1], [1, 14], [2, 5], [3, 4], [4, 5], [5, 1], [6, 14], [7, 5],
 * [8, 5] ]; var d2 = [ [0, 5], [1, 2], [2, 10], [3, 1], [4, 9], [5, 5], [6, 2],
 * [7, 10], [8, 8] ];
 * 
 * var plot = $.plot($('#placeholder2'), [ { data: d1, label: 'Profits'}, {
 * data: d2, label: 'Expenses' } ], { lines: { show: true, fill: true, SWITCHED
 * lineWidth: 2 }, points: { show: true, lineWidth: 5 }, grid: { clickable:
 * true, hoverable: true, autoHighlight: true, mouseActiveRadius: 10, aboveData:
 * true, backgroundColor: '#fff', borderWidth: 0, minBorderMargin: 25, },
 * colors: [ '#55f3c0', '#0db37e', '#b4fae3', '#e0d1cb'], shadowSize: 0 });
 * 
 * function showTooltip(x, y, contents) { $('<div id="gridtip">' + contents + '</div>').css( {
 * position: 'absolute', display: 'none', top: y + 5, left: x + 5
 * }).appendTo('body').fadeIn(300); }
 * 
 * var previousPoint = null; $('#placeholder2').bind('plothover', function
 * (event, pos, item) { $('#x').text(pos.x.toFixed(2));
 * $('#y').text(pos.y.toFixed(2));
 * 
 * if (item) { if (previousPoint != item.dataIndex) { previousPoint =
 * item.dataIndex;
 * 
 * $('#gridtip').remove(); var x = item.datapoint[0].toFixed(0), y =
 * item.datapoint[1].toFixed(0);
 * 
 * showTooltip(item.pageX, item.pageY, 'x : ' + x + '&nbsp;&nbsp;&nbsp; y : ' +
 * y); } } else { $('#gridtip').remove(); previousPoint = null; } }); }
 * 
 * else { var d1 = [ [0, 1], [1, 14], [2, 5], [3, 4], [4, 5], [5, 1], [6, 14],
 * [7, 5], [8, 5] ]; var d2 = [ [0, 5], [1, 2], [2, 10], [3, 1], [4, 9], [5, 5],
 * [6, 2], [7, 10], [8, 8] ];
 * 
 * var plot = $.plot($("#placeholder"), [ { data: d1, label: "Data A" }, { data:
 * d2, label: "Data B" } ], { lines: { show: true, fill: false, lineWidth: 2 },
 * points: { show: true, lineWidth: 5 }, grid: { clickable: true, hoverable:
 * true, autoHighlight: true, mouseActiveRadius: 10, aboveData: true,
 * backgroundColor: "#fafafa", borderWidth: 0, minBorderMargin: 25, }, colors: [
 * "#090", "#099", "#609", "#900"], shadowSize: 0 });
 * 
 * var d1 = [ [0, 1], [1, 14], [2, 5], [3, 4], [4, 5], [5, 1], [6, 14], [7, 5],
 * [8, 5] ]; var d2 = [ [0, 5], [1, 2], [2, 10], [3, 1], [4, 9], [5, 5], [6, 2],
 * [7, 10], [8, 8] ];
 * 
 * var plot = $.plot($("#placeholder2"), [ { data: d1, label: "Data Y"}, { data:
 * d2, label: "Data X" } ], { lines: { show: true, fill: true, SWITCHED
 * lineWidth: 2 }, points: { show: true, lineWidth: 5 }, grid: { clickable:
 * true, hoverable: true, autoHighlight: true, mouseActiveRadius: 10, aboveData:
 * true, backgroundColor: "#fafafa", borderWidth: 0, minBorderMargin: 25, },
 * colors: [ "#090", "#099", "#609", "#900"], shadowSize: 0 });
 * 
 * function showTooltip(x, y, contents) { $('<div id="gridtip">' + contents + '</div>').css( {
 * position: 'absolute', display: 'none', top: y + 5, left: x + 5
 * }).appendTo("body").fadeIn(300); }
 * 
 * var previousPoint = null; $("#placeholder2").bind("plothover", function
 * (event, pos, item) { $("#x").text(pos.x.toFixed(2));
 * $("#y").text(pos.y.toFixed(2));
 * 
 * if (item) { if (previousPoint != item.dataIndex) { previousPoint =
 * item.dataIndex;
 * 
 * $("#gridtip").remove(); var x = item.datapoint[0].toFixed(0), y =
 * item.datapoint[1].toFixed(0);
 * 
 * showTooltip(item.pageX, item.pageY, "x : " + x + "&nbsp;&nbsp;&nbsp; y : " +
 * y); } } else { $("#gridtip").remove(); previousPoint = null; } });
 *  // PREDEFINED DATA var data = [ { label: "Series1", data: [[1, 10]] }, {
 * label: "Series2", data: [[1, 30]] }, { label: "Series3", data: [[1, 90]] } ];
 *  // DEFAULT $.plot($("#pie-default"), data, { series: { pie: { show: true } }
 * });
 *  // DEFINE ACTIONS FOR pieHover & pieClick function pieHover(event, pos, obj) {
 * if (!obj) return; percent = parseFloat(obj.series.percent).toFixed(2);
 * $("#hover").html('<span>' + obj.series.label + ' - ' + percent + '%</span>'); }
 * 
 * function pieClick(event, pos, obj) { if (!obj) return; percent =
 * parseFloat(obj.series.percent).toFixed(2); alert('' + obj.series.label + ': ' +
 * percent + '%'); }
 *  // DONUT $.plot($("#pie-donut"), data, { series: { pie: { innerRadius: 50,
 * show: true } } });
 *  // DONUT + INTERACTIVE $.plot($("#pie-interactive"), data, { series: { pie: {
 * innerRadius: 50, show: true } }, grid: { hoverable: true, clickable: true }
 * });
 * 
 * $("#pie-interactive").bind("plothover", pieHover);
 * $("#pie-interactive").bind("plotclick", pieClick); } });
 */