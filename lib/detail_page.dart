import 'package:flutter/material.dart';
import 'model.dart';
import 'resources.dart';
import 'package:charts_flutter/flutter.dart' as charts;


class DetailsScreen extends StatelessWidget {
  final Widget _title;

  DetailsScreen(this._title);

  @override
  Widget build(BuildContext context) {
    var zoneSeries = [
      new charts.Series(
        id: 'Zone',
        domainFn: (ValuePerCategory clickData, _) => clickData.category,
        measureFn: (ValuePerCategory clickData, _) => clickData.value,
        colorFn: (ValuePerCategory clickData, _) => clickData.color,
        data: ValuePerCategory.regionWiseData,
      ),
    ];
    var zoneChart = new charts.BarChart(
      zoneSeries,
      animate: false,
    );
    var zoneChartWidget = new Padding(
      padding: new EdgeInsets.all(32.0),
      child: new SizedBox(
        height: 200.0,
        child: zoneChart,
      ),
    );

    var catSeries= [
      new charts.Series(
        id: 'Category',
        domainFn: (ValuePerCategory clickData, _) => clickData.category,
        measureFn: (ValuePerCategory clickData, _) => clickData.value,
        colorFn: (ValuePerCategory clickData, _) => clickData.color,
        data: ValuePerCategory.categoryWiseData,
      ),
    ];
    var catChart = new charts.BarChart(
      catSeries,
      animate: false,
    );
    var catChartWidget = new Padding(
      padding: new EdgeInsets.all(32.0),
      child: new SizedBox(
        height: 200.0,
        child: catChart,
      ),
    );
    return Card(
      child: ListView(
        children: <Widget>[
          Padding(
          child: _title,
          padding: EdgeInsets.only(left: 20),
      ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Zone-Wise',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          zoneChartWidget,
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Category-Wise',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          catChartWidget,
        ],
      ),
    );
  }
}
