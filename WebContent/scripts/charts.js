/*게이지차트*/
//$(document).ready(function(){
//$(function () {
//    Highcharts.setOptions({
//    // Move icon
//    if (!this.series[0].icon) {
//        this.series[0].icon = this.renderer.path(['M', -8, 0, 'L', 8, 0, 'M', 0, -8, 'L', 8, 0, 0, 8])
//            .attr({
//                'stroke': '#303030',
//                'stroke-linecap': 'round',
//                'stroke-linejoin': 'round',
//                'stroke-width': 2,
//                'zIndex': 10
//            })
//            .add(this.series[2].group);
//    }
//    this.series[0].icon.translate(
//        this.chartWidth / 2 - 10,
//        this.plotHeight / 2 - this.series[0].points[0].shapeArgs.innerR -
//            (this.series[0].points[0].shapeArgs.r - this.series[0].points[0].shapeArgs.innerR) / 2
//    );
//
//    // Exercise icon
//    if (!this.series[1].icon) {
//        this.series[1].icon = this.renderer.path(
//            ['M', -8, 0, 'L', 8, 0, 'M', 0, -8, 'L', 8, 0, 0, 8,
//                'M', 8, -8, 'L', 16, 0, 8, 8]
//            )
//            .attr({
//                'stroke': '#ffffff',
//                'stroke-linecap': 'round',
//                'stroke-linejoin': 'round',
//                'stroke-width': 2,
//                'zIndex': 10
//            })
//            .add(this.series[2].group);
//    }
//    this.series[1].icon.translate(
//        this.chartWidth / 2 - 10,
//        this.plotHeight / 2 - this.series[1].points[0].shapeArgs.innerR -
//            (this.series[1].points[0].shapeArgs.r - this.series[1].points[0].shapeArgs.innerR) / 2
//    );
//
//    // Stand icon
//    if (!this.series[2].icon) {
//        this.series[2].icon = this.renderer.path(['M', 0, 8, 'L', 0, -8, 'M', -8, 0, 'L', 0, -8, 8, 0])
//            .attr({
//                'stroke': '#303030',
//                'stroke-linecap': 'round',
//                'stroke-linejoin': 'round',
//                'stroke-width': 2,
//                'zIndex': 10
//            })
//            .add(this.series[2].group);
//    }
//
//    this.series[2].icon.translate(
//        this.chartWidth / 2 - 10,
//        this.plotHeight / 2 - this.series[2].points[0].shapeArgs.innerR -
//            (this.series[2].points[0].shapeArgs.r - this.series[2].points[0].shapeArgs.innerR) / 2
//    );
//});
//
//var chart1 = new Highcharts.Chart({
//
//    chart: {
//        type: 'solidgauge',
//        height: '110%',
//        events: {
//            render: renderIcons
//        }
//    },
//
//    title: {
//        text: '정확도',
//        style: {
//            fontSize: '24px'
//        }
//    },
//
//    tooltip: {
//        borderWidth: 0,
//        backgroundColor: 'none',
//        shadow: false,
//        style: {
//            fontSize: '16px'
//        },
//        pointFormat: '{series.name}<br><span style="font-size:2em; color: {point.color}; font-weight: bold">{point.y}%</span>',
//        positioner: function (labelWidth) {
//            return {
//                x: (this.chart.chartWidth - labelWidth) / 2,
//                y: (this.chart.plotHeight / 2) + 15
//            };
//        }
//    },
//
//    pane: {
//        startAngle: 0,
//        endAngle: 360,
//        background: [ { // Track for Exercise
//            outerRadius: '87%',
//            innerRadius: '63%',
//            backgroundColor: Highcharts.Color(Highcharts.getOptions().colors[0])
//                .setOpacity(0.3)
//                .get(),
//            borderWidth: 0
//        }, { // Track for Stand
//            outerRadius: '62%',
//            innerRadius: '38%',
//            backgroundColor: Highcharts.Color(Highcharts.getOptions().colors[1])
//                .setOpacity(0.3)
//                .get(),
//            borderWidth: 0
//        }]
//    },
//
//    yAxis: {
//        min: 0,
//        max: 100,
//        lineWidth: 0,
//        tickPositions: []
//    },
//
//    plotOptions: {
//        solidgauge: {
//            dataLabels: {
//                enabled: false
//            },
//            linecap: 'round',
//            stickyTracking: false,
//            rounded: true
//        }
//    },
//
//    series: [{
//        name: '맞춤',
//        data: [{
//            color: Highcharts.getOptions().colors[0],
//            radius: '87%',
//            innerRadius: '63%',
//            y: 65
//        }]
//    }, {
//        name: '틀림',
//        data: [{
//            color: Highcharts.getOptions().colors[1],
//            radius: '62%',
//            innerRadius: '38%',
//            y: 35
//        }]
//    }]
//});
//
//
//
///*일별 적중률*/
//
//var chart2 = new Highcharts.Chart({
//
//    chart: {
//        zoomType: 'xy'
//    },
//    title: {
//        text: 'Average Monthly Temperature and Rainfall in Tokyo'
//    },
//    subtitle: {
//        text: 'Source: WorldClimate.com'
//    },
//    xAxis: [{
//        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
//            'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
//        crosshair: true
//    }],
//    yAxis: [{ // Primary yAxis
//        labels: {
//            format: '{value}°C',
//            style: {
//                color: Highcharts.getOptions().colors[1]
//            }
//        },
//        title: {
//            text: 'Temperature',
//            style: {
//                color: Highcharts.getOptions().colors[1]
//            }
//        }
//    }, { // Secondary yAxis
//        title: {
//            text: 'Rainfall',
//            style: {
//                color: Highcharts.getOptions().colors[0]
//            }
//        },
//        labels: {
//            format: '{value} mm',
//            style: {
//                color: Highcharts.getOptions().colors[0]
//            }
//        },
//        opposite: true
//    }],
//    tooltip: {
//        shared: true
//    },
//    legend: {
//        layout: 'vertical',
//        align: 'left',
//        x: 120,
//        verticalAlign: 'top',
//        y: 100,
//        floating: true,
//        backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'
//    },
//    series: [{
//        name: 'Rainfall',
//        type: 'column',
//        yAxis: 1,
//        data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4],
//        tooltip: {
//            valueSuffix: ' mm'
//        }
//
//    }, {
//        name: 'Temperature',
//        type: 'spline',
//        data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6],
//        tooltip: {
//            valueSuffix: '°C'
//        }
//    }]
//});
//
//
//});
//});

/*비슷한 스타일 샘플*/
$(function() {
	
	
	
	// set the theme
	Highcharts.setOptions({
	// colors: ['#058DC7', '#50B432', '#ED561B', '#DDDF00', '#24CBE5',
	// '#64E572', '#FF9655', '#FFF263', '#6AF9C4'],
	// chart: {
	// backgroundColor: {
	// linearGradient: [0, 0, 500, 500],
	// stops: [
	// [0, 'rgb(255, 255, 255)'],
	// [1, 'rgb(240, 240, 255)']
	// ]
	// },
	// borderWidth: 2,
	// plotBackgroundColor: 'rgba(255, 255, 255, .9)',
	// plotShadow: true,
	// plotBorderWidth: 1
	// },
	// title: {
	// style: {
	// color: '#000',
	// font: 'bold 16px "Trebuchet MS", Verdana, sans-serif'
	// }
	// },
	// subtitle: {
	// style: {
	// color: '#666666',
	// font: 'bold 12px "Trebuchet MS", Verdana, sans-serif'
	// }
	// },
	// xAxis: {
	// gridLineWidth: 1,
	// lineColor: '#000',
	// tickColor: '#000',
	// labels: {
	// style: {
	// color: '#000',
	// font: '11px Trebuchet MS, Verdana, sans-serif'
	// }
	// },
	// title: {
	// style: {
	// color: '#333',
	// fontWeight: 'bold',
	// fontSize: '12px',
	// fontFamily: 'Trebuchet MS, Verdana, sans-serif'
	//
	// }
	// }
	// },
	// yAxis: {
	// alternateGridColor: null,
	// minorTickInterval: 'auto',
	// lineColor: '#000',
	// lineWidth: 1,
	// tickWidth: 1,
	// tickColor: '#000',
	// labels: {
	// style: {
	// color: '#000',
	// font: '11px Trebuchet MS, Verdana, sans-serif'
	// }
	// },
	// title: {
	// style: {
	// color: '#333',
	// fontWeight: 'bold',
	// fontSize: '12px',
	// fontFamily: 'Trebuchet MS, Verdana, sans-serif'
	// }
	// }
	// },
	// legend: {
	// itemStyle: {
	// font: '9pt Trebuchet MS, Verdana, sans-serif',
	// color: 'black'
	//
	// },
	// itemHoverStyle: {
	// color: '#039'
	// },
	// itemHiddenStyle: {
	// color: 'gray'
	// }
	// },
	// credits: {
	// style: {
	// right: '10px'
	// }
	// },
	// labels: {
	// style: {
	// color: '#99b'
	// }
	// },

	});

	// default options
	var options = {
		chart : {
			zoomType : 'xy'
		},

		xAxis : {
			type : 'datetime'
		}
	};

	// create the chart
	var chart1Options = {
		chart : {
			renderTo : 'container2'
		},
		series : [ {
			data : [ 29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5,
					216.4, 194.1, 95.6, 54.4 ],
			pointStart : Date.UTC(2010, 0, 1),
			pointInterval : 3600 * 1000
		// one hour
		} ]
	};
	chart1Options = jQuery.extend(true, {}, options, chart1Options);
	var chart1 = new Highcharts.Chart(chart1Options);
	// //////////차트 구분선///////////////
	/*
	 * var chart2Options = { chart: { renderTo: 'container3', zoomType: 'xy' },
	 *  // series: [{ // data: [29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6,
	 * 148.5, 216.4, 194.1, 95.6, 54.4], // pointStart: Date.UTC(2010, 0, 1), //
	 * pointInterval: 3600 * 1000 // one hour // }]
	 * 
	 * ////새로넣어봄 //새로 넣어보기 // chart: { // zoomType: 'xy' // }, title: { text:
	 * 'Gold Price Forecast Compare' }, subtitle: { // text: 'Source:
	 * WorldClimate.com' }, xAxis: [{ categories: ['Jan', 'Feb', 'Mar', 'Apr',
	 * 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'], crosshair: true
	 * }], yAxis: [{ // Primary yAxis labels: { format: '{value}%', style: {
	 * color: Highcharts.getOptions().colors[1] } }, title: { text: 'Percent',
	 * style: { color: Highcharts.getOptions().colors[1] } } }, { // Secondary
	 * yAxis title: { text: 'Dollar', style: { color:
	 * Highcharts.getOptions().colors[0] } }, labels: { format: '$ {value}',
	 * style: { color: Highcharts.getOptions().colors[0] } }, opposite: true }],
	 * tooltip: { shared: true }, legend: { layout: 'vertical', align: 'left',
	 * x: 120, verticalAlign: 'top', y: 100, floating: true, backgroundColor:
	 * (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF' },
	 * series: [{ name: 'Dollar', type: 'column', yAxis: 1, data: [49.9, 71.5,
	 * 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4],
	 * tooltip: { values: '$' }
	 *  }, { name: 'Percent', type: 'spline', data: [7.0, 6.9, 9.5, 14.5, 18.2,
	 * 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6], tooltip: { valueSuffix: '%' } }] };
	 * chart2Options = jQuery.extend(true, {}, options, chart2Options); var
	 * chart2 = new Highcharts.Chart(chart2Options);
	 */

	$.ajax({
				url : 'forecast_others_ajax.do',
				type : 'get',
				dataType : 'json',
				success : function(data) {

					var todaySitePrice_1 = []
					var todaySitePrice_2 = []
					var todaySitePrice_3 = []
					var todaySiteDate_1 = []
					var todaySiteDate_2 = []
					var todaySiteDate_3 = []

					var yesterdaySitePrice_1 = []
					var yesterdaySitePrice_2 = []
					var yesterdaySitePrice_3 = []
					var yesterdaySiteDate_1 = []
					var yesterdaySiteDate_2 = []
					var yesterdaySiteDate_3 = []

					var today = data.sizeToday
					var yesterday = data.sizeYesterday
					var exRate = data.exrate

					for (var i = 0; i < today; i++) {
						

						var priceToday = data.forecastOthersToday[i].f_others_price
						priceToday = priceToday/ 28.35 * 3.75 * exRate;
						priceToday = Math.floor(priceToday,0)
						var dateToday = data.forecastOthersToday[i].f_others_date
						dateToday = moment(dateToday).format('YYYY-MM-DD');
						var checkToday = data.forecastOthersToday[i].f_others_site

						if (checkToday == 1) {
							todaySitePrice_1.push(priceToday)
							todaySiteDate_1.push(dateToday)
						} else if (checkToday == 2) {
							todaySitePrice_2.push(priceToday)
							todaySiteDate_2.push(dateToday)
						} else if (checkToday == 3) {
							todaySitePrice_3.push(priceToday)
							todaySiteDate_3.push(dateToday)
						}
					}			

					for (var i = 0; i < yesterday; i++) {

						var priceYesterday = data.forecastOthersYesterday[i].f_others_price
						priceYesterday = priceYesterday/ 28.35 * 3.75 * exRate;
						priceYesterday = Math.floor(priceToday,0);
						var dateYesterday = data.forecastOthersYesterday[i].f_others_date
						dateYesterday = moment(dateYesterday).format(
								'YYYY-MM-DD');
						var checkYesterday = data.forecastOthersYesterday[i].f_others_site

						if (checkYesterday == 1) {
							yesterdaySitePrice_1.push(priceYesterday)
							yesterdaySiteDate_1.push(dateYesterday)
						} else if (checkYesterday == 2) {
							yesterdaySitePrice_2.push(priceYesterday)
							yesterdaySiteDate_2.push(dateYesterday)
						} else if (checkYesterday == 3) {
							yesterdaySitePrice_2.push(priceYesterday)
							yesterdaySiteDate_2.push(dateYesterday)
						}
					}

					var chart2Options = {
						chart : {
							renderTo : 'container3',
							zoomType : 'xy'
						},

						// series: [{
						// data: [29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6,
						// 148.5, 216.4, 194.1, 95.6, 54.4],
						// pointStart: Date.UTC(2010, 0, 1),
						// pointInterval: 3600 * 1000 // one hour
						// }]

						// //새로넣어봄
						// 새로 넣어보기
						// chart: {
						// zoomType: 'xy'
						// },
						title : {
							text : 'Gold Price Forecast Compare'
						},
						subtitle : {
						// text: 'Source: WorldClimate.com'
						},
						xAxis : [ {
							categories : todaySiteDate_1,
							crosshair : true
						} ],
						yAxis : [ { // Primary yAxis
							min : 189000,
							max : 222000,
							labels : {
								format : '￦ {value}',
								style : {
									color : Highcharts.getOptions().colors[1]
								}

							},
							title : {
								text : 'Won',
								style : {
									color : Highcharts.getOptions().colors[1]
								}
							}
						}, { // Secondary yAxis
							min : 189000,
							max : 222000,
							title : {
								text : 'Won',
								style : {
									color : Highcharts.getOptions().colors[0]
								}
							},
							labels : {
								format : '￦ {value}',
								style : {
									color : Highcharts.getOptions().colors[0]
								}
							},
							opposite : true
						} ],
						tooltip : {
							shared : true
						},
						legend : {
							layout : 'vertical',
							align : 'left',
							x : 120,
							verticalAlign : 'top',
							y : 100,
							floating : true,
							backgroundColor : (Highcharts.theme && Highcharts.theme.legendBackgroundColor)
									|| '#FFFFFF'
						},
						series : [ {
							name : 'The Economy Forest Agency',
							type : 'spline',
							yAxis : 1,
							data : todaySitePrice_1,
							tooltip : {
								valuePrefix : '￦ '
							}

						}, {
							name : 'Financial Forecast Center',
							type : 'spline',
							data : todaySitePrice_3,
							tooltip : {
								valuePrefix : '￦ '
							}
						} ]
					};
					chart2Options = jQuery.extend(true, {}, options,
							chart2Options);
					var chart2 = new Highcharts.Chart(chart2Options);
				}
			})
});


	









$('.daily-forecast').click(function(){
	
	
	
	// set the theme
	Highcharts.setOptions({
	// colors: ['#058DC7', '#50B432', '#ED561B', '#DDDF00', '#24CBE5',
	// '#64E572', '#FF9655', '#FFF263', '#6AF9C4'],
	// chart: {
	// backgroundColor: {
	// linearGradient: [0, 0, 500, 500],
	// stops: [
	// [0, 'rgb(255, 255, 255)'],
	// [1, 'rgb(240, 240, 255)']
	// ]
	// },
	// borderWidth: 2,
	// plotBackgroundColor: 'rgba(255, 255, 255, .9)',
	// plotShadow: true,
	// plotBorderWidth: 1
	// },
	// title: {
	// style: {
	// color: '#000',
	// font: 'bold 16px "Trebuchet MS", Verdana, sans-serif'
	// }
	// },
	// subtitle: {
	// style: {
	// color: '#666666',
	// font: 'bold 12px "Trebuchet MS", Verdana, sans-serif'
	// }
	// },
	// xAxis: {
	// gridLineWidth: 1,
	// lineColor: '#000',
	// tickColor: '#000',
	// labels: {
	// style: {
	// color: '#000',
	// font: '11px Trebuchet MS, Verdana, sans-serif'
	// }
	// },
	// title: {
	// style: {
	// color: '#333',
	// fontWeight: 'bold',
	// fontSize: '12px',
	// fontFamily: 'Trebuchet MS, Verdana, sans-serif'
	//
	// }
	// }
	// },
	// yAxis: {
	// alternateGridColor: null,
	// minorTickInterval: 'auto',
	// lineColor: '#000',
	// lineWidth: 1,
	// tickWidth: 1,
	// tickColor: '#000',
	// labels: {
	// style: {
	// color: '#000',
	// font: '11px Trebuchet MS, Verdana, sans-serif'
	// }
	// },
	// title: {
	// style: {
	// color: '#333',
	// fontWeight: 'bold',
	// fontSize: '12px',
	// fontFamily: 'Trebuchet MS, Verdana, sans-serif'
	// }
	// }
	// },
	// legend: {
	// itemStyle: {
	// font: '9pt Trebuchet MS, Verdana, sans-serif',
	// color: 'black'
	//
	// },
	// itemHoverStyle: {
	// color: '#039'
	// },
	// itemHiddenStyle: {
	// color: 'gray'
	// }
	// },
	// credits: {
	// style: {
	// right: '10px'
	// }
	// },
	// labels: {
	// style: {
	// color: '#99b'
	// }
	// },

	});

	// default options
	var options = {
		chart : {
			zoomType : 'xy'
		},

		xAxis : {
			type : 'datetime'
		}
	};

	// create the chart
	var chart1Options = {
		chart : {
			renderTo : 'container2'
		},
		series : [ {
			data : [ 29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5,
					216.4, 194.1, 95.6, 54.4 ],
			pointStart : Date.UTC(2010, 0, 1),
			pointInterval : 3600 * 1000
		// one hour
		} ]
	};
	chart1Options = jQuery.extend(true, {}, options, chart1Options);
	var chart1 = new Highcharts.Chart(chart1Options);
	// //////////차트 구분선///////////////
	/*
	 * var chart2Options = { chart: { renderTo: 'container3', zoomType: 'xy' },
	 *  // series: [{ // data: [29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6,
	 * 148.5, 216.4, 194.1, 95.6, 54.4], // pointStart: Date.UTC(2010, 0, 1), //
	 * pointInterval: 3600 * 1000 // one hour // }]
	 * 
	 * ////새로넣어봄 //새로 넣어보기 // chart: { // zoomType: 'xy' // }, title: { text:
	 * 'Gold Price Forecast Compare' }, subtitle: { // text: 'Source:
	 * WorldClimate.com' }, xAxis: [{ categories: ['Jan', 'Feb', 'Mar', 'Apr',
	 * 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'], crosshair: true
	 * }], yAxis: [{ // Primary yAxis labels: { format: '{value}%', style: {
	 * color: Highcharts.getOptions().colors[1] } }, title: { text: 'Percent',
	 * style: { color: Highcharts.getOptions().colors[1] } } }, { // Secondary
	 * yAxis title: { text: 'Dollar', style: { color:
	 * Highcharts.getOptions().colors[0] } }, labels: { format: '$ {value}',
	 * style: { color: Highcharts.getOptions().colors[0] } }, opposite: true }],
	 * tooltip: { shared: true }, legend: { layout: 'vertical', align: 'left',
	 * x: 120, verticalAlign: 'top', y: 100, floating: true, backgroundColor:
	 * (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF' },
	 * series: [{ name: 'Dollar', type: 'column', yAxis: 1, data: [49.9, 71.5,
	 * 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4],
	 * tooltip: { values: '$' }
	 *  }, { name: 'Percent', type: 'spline', data: [7.0, 6.9, 9.5, 14.5, 18.2,
	 * 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6], tooltip: { valueSuffix: '%' } }] };
	 * chart2Options = jQuery.extend(true, {}, options, chart2Options); var
	 * chart2 = new Highcharts.Chart(chart2Options);
	 */

	$.ajax({
				url : 'forecast_others_ajax.do',
				type : 'get',
				dataType : 'json',
				success : function(data) {

					var todaySitePrice_1 = []
					var todaySitePrice_2 = []
					var todaySitePrice_3 = []
					var todaySiteDate_1 = []
					var todaySiteDate_2 = []
					var todaySiteDate_3 = []

					var yesterdaySitePrice_1 = []
					var yesterdaySitePrice_2 = []
					var yesterdaySitePrice_3 = []
					var yesterdaySiteDate_1 = []
					var yesterdaySiteDate_2 = []
					var yesterdaySiteDate_3 = []

					var today = data.sizeToday
					var yesterday = data.sizeYesterday
					var exRate = data.exrate

					for (var i = 0; i < today; i++) {
						

						var priceToday = data.forecastOthersToday[i].f_others_price
						priceToday = priceToday/ 28.35 * 3.75 * exRate;
						priceToday = Math.floor(priceToday,0)
						var dateToday = data.forecastOthersToday[i].f_others_date
						dateToday = moment(dateToday).format('YYYY-MM-DD');
						var checkToday = data.forecastOthersToday[i].f_others_site

						if (checkToday == 1) {
							todaySitePrice_1.push(priceToday)
							todaySiteDate_1.push(dateToday)
						} else if (checkToday == 2) {
							todaySitePrice_2.push(priceToday)
							todaySiteDate_2.push(dateToday)
						} else if (checkToday == 3) {
							todaySitePrice_3.push(priceToday)
							todaySiteDate_3.push(dateToday)
						}
					}			

					for (var i = 0; i < yesterday; i++) {

						var priceYesterday = data.forecastOthersYesterday[i].f_others_price
						priceYesterday = priceYesterday/ 28.35 * 3.75 * exRate;
						priceYesterday = Math.floor(priceToday,0);
						var dateYesterday = data.forecastOthersYesterday[i].f_others_date
						dateYesterday = moment(dateYesterday).format(
								'YYYY-MM-DD');
						var checkYesterday = data.forecastOthersYesterday[i].f_others_site

						if (checkYesterday == 1) {
							yesterdaySitePrice_1.push(priceYesterday)
							yesterdaySiteDate_1.push(dateYesterday)
						} else if (checkYesterday == 2) {
							yesterdaySitePrice_2.push(priceYesterday)
							yesterdaySiteDate_2.push(dateYesterday)
						} else if (checkYesterday == 3) {
							yesterdaySitePrice_2.push(priceYesterday)
							yesterdaySiteDate_2.push(dateYesterday)
						}
					}

					var chart2Options = {
						chart : {
							renderTo : 'container3',
							zoomType : 'xy'
						},

						// series: [{
						// data: [29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6,
						// 148.5, 216.4, 194.1, 95.6, 54.4],
						// pointStart: Date.UTC(2010, 0, 1),
						// pointInterval: 3600 * 1000 // one hour
						// }]

						// //새로넣어봄
						// 새로 넣어보기
						// chart: {
						// zoomType: 'xy'
						// },
						title : {
							text : 'Gold Price Forecast Compare'
						},
						subtitle : {
						// text: 'Source: WorldClimate.com'
						},
						xAxis : [ {
							categories : todaySiteDate_2,
							crosshair : true
						} ],
						yAxis : [ { // Primary yAxis
							min : 189000,
							max : 222000,
							labels : {
								format : '￦ {value}',
								style : {
									color : Highcharts.getOptions().colors[0]
								}

							},
							title : {
								text : 'Won',
								style : {
									color : Highcharts.getOptions().colors[1]
								}
							}
						}, { // Secondary yAxis
							min : 189000,
							max : 222000,
							title : {
								text : 'Won',
								style : {
									color : Highcharts.getOptions().colors[1]
								}
							},
							labels : {
								format : '￦ {value}',
								style : {
									color : Highcharts.getOptions().colors[0]
								}
							},
							opposite : true
						} ],
						tooltip : {
							shared : true
						},
						legend : {
							layout : 'vertical',
							align : 'left',
							x : 120,
							verticalAlign : 'top',
							y : 100,
							floating : true,
							backgroundColor : (Highcharts.theme && Highcharts.theme.legendBackgroundColor)
									|| '#FFFFFF'
						},
						series :[ {
							name : 'The Economy Forest Agency',
							type : 'spline',
							yAxis : 1,
							data : todaySitePrice_2,
							tooltip : {
								valuePrefix : '￦ '
							}

						}]
					};
					chart2Options = jQuery.extend(true, {}, options,
							chart2Options);
					var chart2 = new Highcharts.Chart(chart2Options);
				}
			})

});

$('.monthly-forecast').click(function(){

	
	
	
	// set the theme
	Highcharts.setOptions({
	// colors: ['#058DC7', '#50B432', '#ED561B', '#DDDF00', '#24CBE5',
	// '#64E572', '#FF9655', '#FFF263', '#6AF9C4'],
	// chart: {
	// backgroundColor: {
	// linearGradient: [0, 0, 500, 500],
	// stops: [
	// [0, 'rgb(255, 255, 255)'],
	// [1, 'rgb(240, 240, 255)']
	// ]
	// },
	// borderWidth: 2,
	// plotBackgroundColor: 'rgba(255, 255, 255, .9)',
	// plotShadow: true,
	// plotBorderWidth: 1
	// },
	// title: {
	// style: {
	// color: '#000',
	// font: 'bold 16px "Trebuchet MS", Verdana, sans-serif'
	// }
	// },
	// subtitle: {
	// style: {
	// color: '#666666',
	// font: 'bold 12px "Trebuchet MS", Verdana, sans-serif'
	// }
	// },
	// xAxis: {
	// gridLineWidth: 1,
	// lineColor: '#000',
	// tickColor: '#000',
	// labels: {
	// style: {
	// color: '#000',
	// font: '11px Trebuchet MS, Verdana, sans-serif'
	// }
	// },
	// title: {
	// style: {
	// color: '#333',
	// fontWeight: 'bold',
	// fontSize: '12px',
	// fontFamily: 'Trebuchet MS, Verdana, sans-serif'
	//
	// }
	// }
	// },
	// yAxis: {
	// alternateGridColor: null,
	// minorTickInterval: 'auto',
	// lineColor: '#000',
	// lineWidth: 1,
	// tickWidth: 1,
	// tickColor: '#000',
	// labels: {
	// style: {
	// color: '#000',
	// font: '11px Trebuchet MS, Verdana, sans-serif'
	// }
	// },
	// title: {
	// style: {
	// color: '#333',
	// fontWeight: 'bold',
	// fontSize: '12px',
	// fontFamily: 'Trebuchet MS, Verdana, sans-serif'
	// }
	// }
	// },
	// legend: {
	// itemStyle: {
	// font: '9pt Trebuchet MS, Verdana, sans-serif',
	// color: 'black'
	//
	// },
	// itemHoverStyle: {
	// color: '#039'
	// },
	// itemHiddenStyle: {
	// color: 'gray'
	// }
	// },
	// credits: {
	// style: {
	// right: '10px'
	// }
	// },
	// labels: {
	// style: {
	// color: '#99b'
	// }
	// },

	});

	// default options
	var options = {
		chart : {
			zoomType : 'xy'
		},

		xAxis : {
			type : 'datetime'
		}
	};

	// create the chart
	var chart1Options = {
		chart : {
			renderTo : 'container2'
		},
		series : [ {
			data : [ 29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5,
					216.4, 194.1, 95.6, 54.4 ],
			pointStart : Date.UTC(2010, 0, 1),
			pointInterval : 3600 * 1000
		// one hour
		} ]
	};
	chart1Options = jQuery.extend(true, {}, options, chart1Options);
	var chart1 = new Highcharts.Chart(chart1Options);
	// //////////차트 구분선///////////////
	/*
	 * var chart2Options = { chart: { renderTo: 'container3', zoomType: 'xy' },
	 *  // series: [{ // data: [29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6,
	 * 148.5, 216.4, 194.1, 95.6, 54.4], // pointStart: Date.UTC(2010, 0, 1), //
	 * pointInterval: 3600 * 1000 // one hour // }]
	 * 
	 * ////새로넣어봄 //새로 넣어보기 // chart: { // zoomType: 'xy' // }, title: { text:
	 * 'Gold Price Forecast Compare' }, subtitle: { // text: 'Source:
	 * WorldClimate.com' }, xAxis: [{ categories: ['Jan', 'Feb', 'Mar', 'Apr',
	 * 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'], crosshair: true
	 * }], yAxis: [{ // Primary yAxis labels: { format: '{value}%', style: {
	 * color: Highcharts.getOptions().colors[1] } }, title: { text: 'Percent',
	 * style: { color: Highcharts.getOptions().colors[1] } } }, { // Secondary
	 * yAxis title: { text: 'Dollar', style: { color:
	 * Highcharts.getOptions().colors[0] } }, labels: { format: '$ {value}',
	 * style: { color: Highcharts.getOptions().colors[0] } }, opposite: true }],
	 * tooltip: { shared: true }, legend: { layout: 'vertical', align: 'left',
	 * x: 120, verticalAlign: 'top', y: 100, floating: true, backgroundColor:
	 * (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF' },
	 * series: [{ name: 'Dollar', type: 'column', yAxis: 1, data: [49.9, 71.5,
	 * 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4],
	 * tooltip: { values: '$' }
	 *  }, { name: 'Percent', type: 'spline', data: [7.0, 6.9, 9.5, 14.5, 18.2,
	 * 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6], tooltip: { valueSuffix: '%' } }] };
	 * chart2Options = jQuery.extend(true, {}, options, chart2Options); var
	 * chart2 = new Highcharts.Chart(chart2Options);
	 */

	$.ajax({
				url : 'forecast_others_ajax.do',
				type : 'get',
				dataType : 'json',
				success : function(data) {

					var todaySitePrice_1 = []
					var todaySitePrice_2 = []
					var todaySitePrice_3 = []
					var todaySiteDate_1 = []
					var todaySiteDate_2 = []
					var todaySiteDate_3 = []

					var yesterdaySitePrice_1 = []
					var yesterdaySitePrice_2 = []
					var yesterdaySitePrice_3 = []
					var yesterdaySiteDate_1 = []
					var yesterdaySiteDate_2 = []
					var yesterdaySiteDate_3 = []

					var today = data.sizeToday
					var yesterday = data.sizeYesterday
					var exRate = data.exrate

					for (var i = 0; i < today; i++) {
						

						var priceToday = data.forecastOthersToday[i].f_others_price
						priceToday = priceToday/ 28.35 * 3.75 * exRate;
						priceToday = Math.floor(priceToday,0)
						var dateToday = data.forecastOthersToday[i].f_others_date
						dateToday = moment(dateToday).format('YYYY-MM-DD');
						var checkToday = data.forecastOthersToday[i].f_others_site

						if (checkToday == 1) {
							todaySitePrice_1.push(priceToday)
							todaySiteDate_1.push(dateToday)
						} else if (checkToday == 2) {
							todaySitePrice_2.push(priceToday)
							todaySiteDate_2.push(dateToday)
						} else if (checkToday == 3) {
							todaySitePrice_3.push(priceToday)
							todaySiteDate_3.push(dateToday)
						}
					}			

					for (var i = 0; i < yesterday; i++) {

						var priceYesterday = data.forecastOthersYesterday[i].f_others_price
						priceYesterday = priceYesterday/ 28.35 * 3.75 * exRate;
						priceYesterday = Math.floor(priceToday,0);
						var dateYesterday = data.forecastOthersYesterday[i].f_others_date
						dateYesterday = moment(dateYesterday).format(
								'YYYY-MM-DD');
						var checkYesterday = data.forecastOthersYesterday[i].f_others_site

						if (checkYesterday == 1) {
							yesterdaySitePrice_1.push(priceYesterday)
							yesterdaySiteDate_1.push(dateYesterday)
						} else if (checkYesterday == 2) {
							yesterdaySitePrice_2.push(priceYesterday)
							yesterdaySiteDate_2.push(dateYesterday)
						} else if (checkYesterday == 3) {
							yesterdaySitePrice_2.push(priceYesterday)
							yesterdaySiteDate_2.push(dateYesterday)
						}
					}

					var chart2Options = {
						chart : {
							renderTo : 'container3',
							zoomType : 'xy'
						},

						// series: [{
						// data: [29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6,
						// 148.5, 216.4, 194.1, 95.6, 54.4],
						// pointStart: Date.UTC(2010, 0, 1),
						// pointInterval: 3600 * 1000 // one hour
						// }]

						// //새로넣어봄
						// 새로 넣어보기
						// chart: {
						// zoomType: 'xy'
						// },
						title : {
							text : 'Gold Price Forecast Compare'
						},
						subtitle : {
						// text: 'Source: WorldClimate.com'
						},
						xAxis : [ {
							categories : todaySiteDate_1,
							crosshair : true
						} ],
						yAxis : [ { // Primary yAxis
							min : 189000,
							max : 222000,
							labels : {
								format : '￦ {value}',
								style : {
									color : Highcharts.getOptions().colors[0]
								}

							},
							title : {
								text : 'Won',
								style : {
									color : Highcharts.getOptions().colors[1]
								}
							}
						}, { // Secondary yAxis
							min : 189000,
							max : 222000,
							title : {
								text : 'Won',
								style : {
									color : Highcharts.getOptions().colors[1]
								}
							},
							labels : {
								format : '￦ {value}',
								style : {
									color : Highcharts.getOptions().colors[0]
								}
							},
							opposite : true
						} ],
						tooltip : {
							shared : true
						},
						legend : {
							layout : 'vertical',
							align : 'left',
							x : 120,
							verticalAlign : 'top',
							y : 100,
							floating : true,
							backgroundColor : (Highcharts.theme && Highcharts.theme.legendBackgroundColor)
									|| '#FFFFFF'
						},
						series : [ {
							name : 'The Economy Forest Agency',
							type : 'spline',
							yAxis : 1,
							data : todaySitePrice_1,
							tooltip : {
								valuePrefix : '￦ '
							}

						}, {
							name : 'Financial Forecast Center',
							type : 'spline',
							data : todaySitePrice_3,
							tooltip : {
								valuePrefix : '￦ '
							}
						} ]
					};
					chart2Options = jQuery.extend(true, {}, options,
							chart2Options);
					var chart2 = new Highcharts.Chart(chart2Options);
				}
			})
});

