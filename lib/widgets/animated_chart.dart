import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class AnimatedChart extends StatefulWidget {
  @override
  _AnimatedChartState createState() => _AnimatedChartState();
}

class _AnimatedChartState extends State<AnimatedChart> {
  final GlobalKey<AnimatedCircularChartState> _chartKey =
  new GlobalKey<AnimatedCircularChartState>();
  double value = 180.0;
  Color labelColor = Colors.white;

  List<CircularStackEntry> _generateChartData(double value) {
    Color dialColor = Colors.purple;
    if (value < 0) {
      dialColor = Colors.orange;
    } else if (value < 50) {
      dialColor = Colors.yellow;
    }
//    labelColor = dialColor;

    List<CircularStackEntry> data = <CircularStackEntry>[
      new CircularStackEntry(
        <CircularSegmentEntry>[
          new CircularSegmentEntry(
            value,
            dialColor,
            rankKey: 'percentage',
          )
        ],
        rankKey: 'percentage',
      ),
    ];

    if (value > 100) {
      labelColor = Colors.green;

      data.add(new CircularStackEntry(
        <CircularSegmentEntry>[
          new CircularSegmentEntry(
            value - 100,
            Colors.red,
            rankKey: 'percentage',
          ),
        ],
        rankKey: 'percentage2',
      ));
    }

    return data;
  }

  void _increment() {
    setState(() {
      value += 10;
      List<CircularStackEntry> data = _generateChartData(value.toDouble());
      _chartKey.currentState.updateData(data);
    });
  }

  void _decrement() {
    setState(() {
      value -= 10;
      List<CircularStackEntry> data = _generateChartData(value.toDouble());
      _chartKey.currentState.updateData(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    TextStyle _labelStyle = Theme.of(context)
        .textTheme
        .title
        .merge(new TextStyle(color: labelColor));

    return AnimatedCircularChart(
      key: _chartKey,
      size: const Size(300.0, 300.0),
      initialChartData: _generateChartData(value),
      chartType: CircularChartType.Radial,
      edgeStyle: SegmentEdgeStyle.round,
      percentageValues: true,
      holeLabel: 'Day: $value',
      labelStyle: _labelStyle,
    );
  }
}
