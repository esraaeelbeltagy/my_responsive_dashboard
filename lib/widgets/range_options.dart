import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.whiteBackGround,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.lightGreyColor, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Monthly",
            style: AppStyles.styleMedium16(context),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Transform.rotate(
              angle: -3.14 / 2,
              child: const Icon(
                Icons.arrow_back_ios_outlined,
                color: AppColors.seconderyColor,
                size: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
