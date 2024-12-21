import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        //* Pie Chart Data
        getChatData(),
      ),
    );
  }

  PieChartData getChatData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData:
          PieTouchData(touchCallback: (FlTouchEvent event, pieTouchResponse) {
        activeIndex =
            pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
        setState(() {});
      }),

      //* Sections of Pie Chart
      sections: [
        PieChartSectionData(
          value: 40,
          radius: activeIndex == 0 ? 40 : 30,
          color: const Color(0xff208CC8),
          showTitle: false,
        ),
        PieChartSectionData(
          value: 25,
          radius: activeIndex == 1 ? 40 : 30,
          color: const Color(0xff4EB7F2),
          showTitle: false,
        ),
        PieChartSectionData(
          value: 20,
          radius: activeIndex == 2 ? 40 : 30,
          color: const Color(0xff064061),
          showTitle: false,
        ),
        PieChartSectionData(
          value: 22,
          radius: activeIndex == 3 ? 40 : 30,
          color: const Color(0xffE2DECD),
          showTitle: false,
        ),
      ],
    );
  }
}
