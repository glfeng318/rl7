HTMLWidgets.widget({
  name: "l7",
  type: "output",
  factory: function(el, width, height) {
    var chart;
    return {
      renderValue: function(x) {
        $(el).empty();  // clear out the previous chart, fixed #3
        // https://l7plot.antv.antgroup.com/api/plot-api
        switch (x.opt.l7_chart.toLowerCase()) {
          case 'dot':
            chart = new L7Plot.Dot(el.id, x.opt);
            break;
          case 'choropleth':
            chart = new L7Plot.Choropleth(el.id, x.opt);
            break;
          case 'column':
            chart = new L7Plot.Column(el.id, x.opt);
            break;
          case 'bar':
            chart = new L7Plot.Bar(el.id, x.opt);
            break;
          default:
            // code
            break;
        }
        // global opt
        if (x.opt.reflect) {
          chart.chart.coordinate().reflect(x.opt.reflect);
        }
        chart.render();
      }
    };
  }
});
