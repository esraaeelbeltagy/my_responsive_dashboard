import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
    
      aspectRatio: 1,
      child: PieChart(
        duration: const Duration(milliseconds: 500),
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
          titlePositionPercentageOffset:  activeIndex == 0 ?  1.6     : null  ,
          titleStyle: activeIndex == 0
              ? AppStyles.styleSemiBold16(context).copyWith(
                  color: Colors.black,
                )
              : AppStyles.styleSemiBold16(context).copyWith(
                  color: AppColors.whiteBackGround,
                ),
          title: activeIndex == 0 ? "Design service" : "40%",
          value: 40,
          radius: activeIndex == 0 ? 60 : 50,
          color: const Color(0xff208CC8),
        ),


        PieChartSectionData(
           titlePositionPercentageOffset:  activeIndex == 1 ?  -1.6    : null  ,
          titleStyle: activeIndex == 1
              ? AppStyles.styleSemiBold16(context).copyWith(
                  color: Colors.black,
                )
              : AppStyles.styleSemiBold16(context).copyWith(
                  color: AppColors.whiteBackGround,
                ),
          title: activeIndex == 1 ? "Design product" : "25%",
          value: 25,
          radius: activeIndex == 1 ? 60 : 50,
          color: const Color(0xff4EB7F2),
        ),


        PieChartSectionData(
           titlePositionPercentageOffset:  activeIndex == 2 ?  1.6     : null  ,
          titleStyle: activeIndex == 2
              ? AppStyles.styleSemiBold16(context).copyWith(
                  color: Colors.black,
                )
              : AppStyles.styleSemiBold16(context).copyWith(
                  color: AppColors.whiteBackGround,
                ),
          value: 20,
          title: activeIndex == 2 ? "Product royalti" : "20%",
          radius: activeIndex == 2 ? 60 : 50,
          color: const Color(0xff064061),
        ),



        PieChartSectionData(
           titlePositionPercentageOffset:  activeIndex == 3 ?  1.6     : null  ,
          titleStyle: activeIndex == 3
              ? AppStyles.styleSemiBold16(context).copyWith(
                  color: Colors.black,
                )
              : AppStyles.styleSemiBold16(context).copyWith(
                  color: AppColors.whiteBackGround,
                ),
          value: 22,
          title: activeIndex == 3 ? "Other" : "22%",
          radius: activeIndex == 3 ? 60 : 50,
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}
