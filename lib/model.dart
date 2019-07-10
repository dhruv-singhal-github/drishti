import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class ValuePerCategory {
  final String category;
  final double value;
  final charts.Color color;

  ValuePerCategory(this.category, this.value, Color color)
      : this.color = new charts.Color(
            r: color.red, g: color.green, b: color.blue, a: color.alpha);

  static get regionWiseData{
    return [
      ValuePerCategory('NR', 12, Colors.lightBlue),
      ValuePerCategory('NWR', 10, Colors.lightBlue),
      ValuePerCategory('NEFR', 16, Colors.lightBlue),
      ValuePerCategory('NER', 9, Colors.lightBlue),
      ValuePerCategory('WCR', 5, Colors.lightBlue),
      ValuePerCategory('ECR', 14, Colors.lightBlue),
      ValuePerCategory('ER', 10, Colors.lightBlue),
      ValuePerCategory('CR', 7, Colors.lightBlue),
      ValuePerCategory('SR', 11, Colors.lightBlue),
    ];
  }
  static get categoryWiseData{
    return [
      ValuePerCategory('Coal', 25, Colors.lightBlue),
      ValuePerCategory('Manures', 16, Colors.lightBlue),
      ValuePerCategory('Minerals', 10, Colors.lightBlue),
      ValuePerCategory('Iron', 7, Colors.lightBlue),
      ValuePerCategory('Others', 5, Colors.lightBlue),
    ];
  }
}
