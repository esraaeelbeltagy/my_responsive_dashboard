import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_bachground_container.dart';
import 'package:responsive_dashboard/widgets/my_cards_section.dart';

import '../utils/app_colors.dart';
import 'transation_history.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomBackGroundContainer(
      padding: 24,
      child: Column(
        children: [
          MyCardsSection(), 
          Divider(
            height: 40,
            color: AppColors.lightGreyColor,
          ) ,
          TransactionHistory(), 
        ],
      ),
    );
  }
}