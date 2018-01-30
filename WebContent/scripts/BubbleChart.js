$(document).ready(
			function() {
var chart = bb.generate({
  data: {
    columns: [
	["data1", 30, 350, 200, 380, 150, 250, 50, 80, 55, 220],
	["data2", 130, 100, 10, 200, 80, 50, 200, 123, 185, 98],
	["data3", 230, 153, 85, 300, 250, 120, 5, 84, 99, 289]
    ],
    type: "bubble",
    labels: true
  },
  bubble: {
    maxR: 50
  },
  axis: {
    x: {
      type: "category"
    },
    y: {
      max: 450
    }
  },
  bindto: "#BubbleChart"
});

setTimeout(function() {
	chart.load({
		columns: [
			['data1', 100, 50, 150, 200, 100, 350, 58, 210, 80, 126]
		]
	});
}, 1000);

setTimeout(function() {
	chart.load({
		columns: [
			['data2', 305, 350, 55, 25, 335, 29, 258, 310, 180, 226]
		]
	});
}, 2000);

setTimeout(function() {
	chart.load({
		columns: [
			['data3', 223, 121, 259, 247, 53, 159, 95, 111, 307, 337]
		]
	});
}, 3000);
});