$(document).ready(function() {

	$.ajax({
		url : 'index_ajax.do',
		type : 'get',
		dataType : 'json',
		success : function(data) {
			var d1 = [];
			var d2 = [];

			var size = data.sizeByMonth;
			var i = 0;
			var h = 1989;

			for (var i = 0; i < size;i++) {

				var fr_id = i;
				var gold_price = data.byMonth[fr_id].gold_price;

				factor = []
				factor.push(h);
				h += 1/12;
				factor.push(gold_price);
				d1.push(factor)
			}

			factor_data(d1)
		}
	})

});


function factor_data(d1){
	
	if($('.datatable-1').length>0){
        $('.datatable-1').dataTable();
        $('.dataTables_paginate').addClass('btn-group datatable-pagination');
        $('.dataTables_paginate > a').wrapInner('<span />');
        $('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
        $('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
    
        $( '.slider-range').slider({
			    range: true,
			    min: 0,
			    max: 20000,
			    values: [ 3000, 12000 ],			
			    slide: function(event, ui) {
				    $(this).find('.ui-slider-handle').attr('title', ui.value);
			    },
	    });
	
        $( '#amount' ).val( '$' + $( '.slider-range' ).slider( 'values', 0 ) + ' - $' + $( '.slider-range' ).slider( 'values', 1 ) );
    

    //Graph/Chart index.html

		var plot = $.plot($('#placeholder2'),
			   [ { data: d1, label: 'Profits'}], {
					lines: {
						show: true,
						fill: true, 
						lineWidth: 2
					},
					points: {
						show: true,
						lineWidth: 5
					},
					grid: {
						clickable: true,
						hoverable: true,
						autoHighlight: true,
						mouseActiveRadius: 10,
						aboveData: true,
						backgroundColor: '#fff',
						borderWidth: 0,
						minBorderMargin: 25,
					},
					colors: [ '#55f3c0', '#0db37e',  '#b4fae3', '#e0d1cb'],
					shadowSize: 0
				 });

		function showTooltip(x, y, contents) {
			$('<div id="gridtip">' + contents + '</div>').css( {
				position: 'absolute',
				display: 'none',
				top: y + 5,
				left: x + 5
			}).appendTo('body').fadeIn(300);
		}

		var previousPoint = null;
		$('#placeholder2').bind('plothover', function (event, pos, item) {
			$('#x').text(pos.x.toFixed(2));
			$('#y').text(pos.y.toFixed(2));

			if (item) {
				if (previousPoint != item.dataIndex) {
					previousPoint = item.dataIndex;

					$('#gridtip').remove();
					var x = item.datapoint[0].toFixed(0),
						y = item.datapoint[1].toFixed(0);

					showTooltip(item.pageX, item.pageY,
								'x : ' + x + '&nbsp;&nbsp;&nbsp; y : ' + y);
				}
			}
			else {
				$('#gridtip').remove();
				previousPoint = null;
			}
		});
    }
}

$('.factors').click(function(){
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

			var size= data.sizeByMonth;
			var i = 0;
			var h = 1989;

			for (var i = 0; i < size;i++) {

				var fr_id = i;
				var gold_price = data.byMonth[fr_id].gold_price;
				var dow_jones=data.byMonth[fr_id].dow_jones;
				var sp_500=data.byMonth[fr_id].sp_500;
				
				var dollar_index = data.byMonth[fr_id].dollar_index;
				var wti=data.byMonth[fr_id].wti;
				var interest_rate=data.byMonth[fr_id].interest_rate;
				var gdp = data.byMonth[fr_id].gdp;
				var inflation=data.byMonth[fr_id].inflation;
				var balance_trade=data.byMonth[fr_id].balance_trade;
				var cpi = data.byMonth[fr_id].cpi;
				var gold_mine=data.byMonth[fr_id].gold_mine;
				var uncertainty=data.byMonth[fr_id].uncertainty;
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
				
				h += 1/12;
				
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

			if(factorId=="G"){
				factor_data(d1)
			}else if(factorId=="DJ"){
				factor_data(d2)
			}else if(factorId=="SP"){
				factor_data(d3)
			}else if(factorId=="DI"){
				factor_data(d4)
			}else if(factorId=="WTI"){
				factor_data(d5)
			}else if(factorId=="IR"){
				factor_data(d6)
			}else if(factorId=="GDP"){
				factor_data(d7)
			}else if(factorId=="IF"){
				factor_data(d8)
			}else if(factorId=="BT"){
				factor_data(d9)
			}else if(factorId=="CPI"){
				factor_data(d10)
			}else if(factorId=="GM"){
				factor_data(d11)
			}else if(factorId=="UC"){
				factor_data(d12)
			}else if(factorId=="MS"){
				factor_data(d13)
			}
		}
	})
	
})

/*$('.factors').click(function(){
	var factorId = $(this).attr('id')
	
	$.ajax({
		url:'index_ajax.do',
		type:'get',
		dataType:'json',
		success:function(data){
			var d1 = [];
			var d2 = [];
			var d3 = [];
			
			var size = data.size;
			
			for(var i=9;i>0;i--){
				
				var fr_id=size-12*i;
				var gold_price=data.recentAll[fr_id].gold_price;
				var gold_price_date=moment(data.recentAll[fr_id].gold_price_date).format('DD');
				var dow_jones=data.recentAll[fr_id].dow_jones;
				var dow_jones_date=data.recentAll[fr_id].dow_jones_date;
				var sp_500=data.recentAll[fr_id].sp_500;
				var sp_500_date=data.recentAll[fr_id].sp_500_date;
				
				gold_price_data=[]
				gold_price_data.push(9*12-12*i);
				gold_price_data.push(gold_price);
				
				dow_jones_data=[]
				dow_jones_data.push(9*12-12*i);
				dow_jones_data.push(dow_jones);
				
				sp_500_data=[]
				sp_500_data.push(9*12-12*i);
				sp_500_data.push(sp_500);
				
				d1.push(gold_price_data)
				d2.push(dow_jones_data)
				d3.push(sp_500_data)
				
			}
			
			if(factorId=="GoldPrice"){
				factor_data(d1)
			}else if(factorId=="DowJones"){
				factor_data(d2)
			}else if(factorId=="SP500"){
				factor_data(d3)
			}
		}
	})
	
})*/

/*$(document).ready(function () {
    if($('.datatable-1').length>0){
        $('.datatable-1').dataTable();
        $('.dataTables_paginate').addClass('btn-group datatable-pagination');
        $('.dataTables_paginate > a').wrapInner('<span />');
        $('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
        $('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
    
        $( '.slider-range').slider({
			    range: true,
			    min: 0,
			    max: 20000,
			    values: [ 3000, 12000 ],			
			    slide: function(event, ui) {
				    $(this).find('.ui-slider-handle').attr('title', ui.value);
			    },
	    });
	
        $( '#amount' ).val( '$' + $( '.slider-range' ).slider( 'values', 0 ) + ' - $' + $( '.slider-range' ).slider( 'values', 1 ) );
    

    //Graph/Chart index.html

    var d1 = [ [0, 1], [1, 14], [2, 5], [3, 4], [4, 5], [5, 1], [6, 14], [7, 5],  [8, 5] ];
    var d2 = [ [0, 5], [1, 2], [2, 10], [3, 1], [4, 9],  [5, 5], [6, 2], [7, 10], [8, 8] ];

		var plot = $.plot($('#placeholder2'),
			   [ { data: d1, label: 'Profits'}, { data: d2, label: 'Expenses' } ], {
					lines: {
						show: true,
						fill: true, SWITCHED
						lineWidth: 2
					},
					points: {
						show: true,
						lineWidth: 5
					},
					grid: {
						clickable: true,
						hoverable: true,
						autoHighlight: true,
						mouseActiveRadius: 10,
						aboveData: true,
						backgroundColor: '#fff',
						borderWidth: 0,
						minBorderMargin: 25,
					},
					colors: [ '#55f3c0', '#0db37e',  '#b4fae3', '#e0d1cb'],
					shadowSize: 0
				 });

		function showTooltip(x, y, contents) {
			$('<div id="gridtip">' + contents + '</div>').css( {
				position: 'absolute',
				display: 'none',
				top: y + 5,
				left: x + 5
			}).appendTo('body').fadeIn(300);
		}

		var previousPoint = null;
		$('#placeholder2').bind('plothover', function (event, pos, item) {
			$('#x').text(pos.x.toFixed(2));
			$('#y').text(pos.y.toFixed(2));

			if (item) {
				if (previousPoint != item.dataIndex) {
					previousPoint = item.dataIndex;

					$('#gridtip').remove();
					var x = item.datapoint[0].toFixed(0),
						y = item.datapoint[1].toFixed(0);

					showTooltip(item.pageX, item.pageY,
								'x : ' + x + '&nbsp;&nbsp;&nbsp; y : ' + y);
				}
			}
			else {
				$('#gridtip').remove();
				previousPoint = null;
			}
		});
    }

    else
    {
        var d1 = [ [0, 1], [1, 14], [2, 5], [3, 4], [4, 5], [5, 1], [6, 14], [7, 5],  [8, 5] ];
		var d2 = [ [0, 5], [1, 2], [2, 10], [3, 1], [4, 9],  [5, 5], [6, 2], [7, 10], [8, 8] ];

		var plot = $.plot($("#placeholder"), 
		[ { data: d1, label: "Data A" }, { data: d2, label: "Data B" } ], {
			lines: { 
				show: true, 
				fill: false, 
				lineWidth: 2 
			},
			points: { 
				show: true, 
				lineWidth: 5 
			},
			grid: {
				clickable: true,
				hoverable: true,
				autoHighlight: true,
				mouseActiveRadius: 10,
				aboveData: true,
				backgroundColor: "#fafafa",
				borderWidth: 0,
				minBorderMargin: 25,
			},
			colors: [ "#090", "#099",  "#609", "#900"],
			shadowSize: 0
		});

        var d1 = [ [0, 1], [1, 14], [2, 5], [3, 4], [4, 5], [5, 1], [6, 14], [7, 5],  [8, 5] ];
		var d2 = [ [0, 5], [1, 2], [2, 10], [3, 1], [4, 9],  [5, 5], [6, 2], [7, 10], [8, 8] ];

		var plot = $.plot($("#placeholder2"),
			   [ { data: d1, label: "Data Y"}, { data: d2, label: "Data X" } ], {
					lines: { 
						show: true, 
						fill: true, SWITCHED
						lineWidth: 2 
					},
					points: { 
						show: true, 
						lineWidth: 5 
					},
					grid: {
						clickable: true,
						hoverable: true,
						autoHighlight: true,
						mouseActiveRadius: 10,
						aboveData: true,
						backgroundColor: "#fafafa",
						borderWidth: 0,
						minBorderMargin: 25,
					},
					colors: [ "#090", "#099",  "#609", "#900"],
					shadowSize: 0
				 });

		function showTooltip(x, y, contents) {
			$('<div id="gridtip">' + contents + '</div>').css( {
				position: 'absolute',
				display: 'none',
				top: y + 5,
				left: x + 5
			}).appendTo("body").fadeIn(300);
		}

		var previousPoint = null;
		$("#placeholder2").bind("plothover", function (event, pos, item) {
			$("#x").text(pos.x.toFixed(2));
			$("#y").text(pos.y.toFixed(2));

			if (item) {
				if (previousPoint != item.dataIndex) {
					previousPoint = item.dataIndex;
					
					$("#gridtip").remove();
					var x = item.datapoint[0].toFixed(0),
						y = item.datapoint[1].toFixed(0);
					
					showTooltip(item.pageX, item.pageY,
								"x : " + x + "&nbsp;&nbsp;&nbsp; y : " + y);
				}
			}
			else {
				$("#gridtip").remove();
				previousPoint = null;            
			}
		});

          // PREDEFINED DATA
        var data = [
						{ label: "Series1", data: [[1, 10]] },
						{ label: "Series2", data: [[1, 30]] },
						{ label: "Series3", data: [[1, 90]] }
					];

        // DEFAULT
        $.plot($("#pie-default"), data,
		{
		    series: {
		        pie: {
		            show: true
		        }
		    }
		});

        // DEFINE ACTIONS FOR pieHover & pieClick
        function pieHover(event, pos, obj) {
            if (!obj)
                return;
            percent = parseFloat(obj.series.percent).toFixed(2);
            $("#hover").html('<span>' + obj.series.label + ' - ' + percent + '%</span>');
        }

        function pieClick(event, pos, obj) {
            if (!obj)
                return;
            percent = parseFloat(obj.series.percent).toFixed(2);
            alert('' + obj.series.label + ': ' + percent + '%');
        }

        // DONUT
        $.plot($("#pie-donut"), data,
		{
		    series: {
		        pie: {
		            innerRadius: 50,
		            show: true
		        }
		    }
		});

        // DONUT + INTERACTIVE
        $.plot($("#pie-interactive"), data,
		{
		    series: {
		        pie: {
		            innerRadius: 50,
		            show: true
		        }
		    },
		    grid: {
		        hoverable: true,
		        clickable: true
		    }
		});

        $("#pie-interactive").bind("plothover", pieHover);
        $("#pie-interactive").bind("plotclick", pieClick);
    }
});*/