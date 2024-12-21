import 'package:flutter/material.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/app_colors.dart';
import 'all_expenses_item_body.dart';
import 'all_expenses_item_header.dart';

//* InActive selected item
class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.whiteBackGround,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.lightGreyColor, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            allExpensesItemModel: allExpensesItemModel,
          ),
          const SizedBox(
            height: 34,
          ),
          AllExpnsesItemBody(allExpensesItemModel: allExpensesItemModel)
        ],
      ),
    );
  }
}

//* Active selected item

class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.primaryColor, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imageColor: AppColors.whiteBackGround,
            backgroundImageColor: AppColors.whiteBackGround.withOpacity(.1),
            allExpensesItemModel: allExpensesItemModel,
          ),
          const SizedBox(
            height: 34,
          ),
          AllExpnsesItemBody(
            firstColor: AppColors.whiteBackGround,
            secondColor: AppColors.offWhiteBackGround,
            allExpensesItemModel: allExpensesItemModel)
        ],
      ),
    );
  }
}
