import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class ValuePerCategory {
  final String category;
  final double value;
  final charts.Color color;

  ValuePerCategory(this.category, this.value, Color color)
      : this.color = new charts.Color(
            r: color.red, g: color.green, b: color.blue, a: color.alpha);



}
