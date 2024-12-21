
import 'package:flutter/material.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/app_styles.dart';

class AllExpnsesItemBody extends StatelessWidget {
  const AllExpnsesItemBody({
    super.key,
    required this.allExpensesItemModel , 
   this.firstColor , 
   this.secondColor
  });
 final AllExpensesItemModel allExpensesItemModel ; 
 final Color? firstColor ;
 final Color? secondColor ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
          
            allExpensesItemModel.title,
            textAlign: TextAlign.start,
            style: AppStyles.styleSemiBold16(context).copyWith(color: firstColor),
          ),
        ),
        const SizedBox(height: 8,), 

        FittedBox(
           fit: BoxFit.scaleDown,
          child: Text(
            allExpensesItemModel.date,
             textAlign: TextAlign.start,
            style: AppStyles.styleRegular14(context).copyWith(color: secondColor),
          ),
        ),
        const SizedBox(height: 16,), 
        FittedBox(
           fit: BoxFit.scaleDown,
          child: Text(
            allExpensesItemModel.price,
             textAlign: TextAlign.start,
            style: AppStyles.styleSemiBold24(context).copyWith(color: secondColor),
          ),
        )
      ],
    );
  }
}
