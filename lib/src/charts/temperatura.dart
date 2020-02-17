/// Example of a simple line chart.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class SimpleLineChart2 extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleLineChart2(this.seriesList, {this.animate});

  /// Creates a [LineChart] with sample data and no transition.
  factory SimpleLineChart2.withSampleData() {
    return new SimpleLineChart2(
      _createSampleData(),
      // Disable animations for image tests.
      animate: true,
    );
  }



  @override
  Widget build(BuildContext context) {
    return new charts.LineChart(seriesList, animate: animate);
  }


  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(0, 20),
      new LinearSales(1, 20),
      new LinearSales(2, 20),
      new LinearSales(3, 20),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Metros',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}
