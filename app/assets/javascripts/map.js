function map_start(){
  $('#container').highcharts({
    chart: {
      type: 'area'
    },
    title: {
        text: 'Weekly Steps'
    },
    xAxis: {
        title: {
          text: 'Days this week'
        }
    },
    yAxis: {
        title: {
            text: 'Total Steps'
        }
    },
    series: [{
        name: 'Your Steps',
        data: [200,300, 250]
    }, {
        name: 'Recommended Steps',
        data: [225, 235, 225]
    }]
  });
}
