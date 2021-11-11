import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

enum LegendShape { Circle, Rectangle }

class chart extends StatelessWidget {
  final dataMap = <String, double>{
    "class": 9,
    "Study": 1,
    "Free Time": 1.2,
  };
  final colorList = <Color>[
    Color(0xff2D82FE),
    Color(0xffFF9E57),
    Color(0xff2FED51),
  ];
  ChartType? _chartType = ChartType.ring;
  bool _showCenterText = true;
  double? _ringStrokeWidth = 7.5;
  double? _chartLegendSpacing = 32;

  bool _showLegendsInRow = true;
  bool _showLegends = true;
  LegendShape? _legendShape = LegendShape.Circle;
  LegendPosition? _legendPosition = LegendPosition.bottom;

  bool _showChartValueBackground = false;
  bool _showChartValues = false;
  bool _showChartValuesInPercentage = false;
  bool _showChartValuesOutside = false;

  bool _showGradientColors = false;

  @override
  Widget build(BuildContext context) {
    final chart = PieChart(
      key: ValueKey(key),
      dataMap: dataMap,
      animationDuration: Duration(milliseconds: 800),
      chartLegendSpacing: _chartLegendSpacing!,
      chartRadius: MediaQuery.of(context).size.width / 3.2 > 300
          ? 10
          : MediaQuery.of(context).size.width / 3.2,
      colorList: colorList,
      initialAngleInDegree: 0,
      chartType: _chartType!,
      centerText: _showCenterText ? "Total" : null,
      legendOptions: LegendOptions(
        showLegendsInRow: _showLegendsInRow,
        legendPosition: _legendPosition!,
        showLegends: _showLegends,
        legendShape: BoxShape.circle,
        legendTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: _showChartValueBackground,
        showChartValues: _showChartValues,
        showChartValuesInPercentage: _showChartValuesInPercentage,
        showChartValuesOutside: _showChartValuesOutside,
      ),
      ringStrokeWidth: _ringStrokeWidth!,
      emptyColor: Colors.grey,
      gradientList: null,
      emptyColorGradient: [
        Color(0xff6c5ce7),
        Colors.blue,
      ],
    );
    return Container(
      child: chart,
    );
  }
}
