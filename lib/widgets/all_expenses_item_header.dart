import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';

import '../utils/app_colors.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.allExpensesItemModel,
      this.imageColor,
      this.backgroundImageColor});

  final AllExpensesItemModel allExpensesItemModel;
  final Color? imageColor;
  final Color? backgroundImageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),   // عشان اطبق قيود على ال aspect racio  .. >> is a beautiful widget
            child: AspectRatio(
            
              aspectRatio: 1,
              child: Container(
                height: 60,
                width: 60,
                // padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: backgroundImageColor ?? AppColors.midGreyColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    allExpensesItemModel.imgUrl,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? AppColors.primaryColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: 3.14,
          child: Icon(
            Icons.arrow_back_ios_outlined,
            color: imageColor == null
                ? AppColors.seconderyColor
                : AppColors.whiteBackGround,
            size: 20,
          ),
        )
      ],
    );
  }
}
