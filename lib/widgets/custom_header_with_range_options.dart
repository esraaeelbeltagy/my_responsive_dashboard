

import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'range_options.dart';

class CustomHeaderWithRangOptions extends StatelessWidget {
  const CustomHeaderWithRangOptions({super.key , 
  required this.mainTitle, 
  });
final String mainTitle ; 
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
         mainTitle,
          style: AppStyles.styleSemiBold20(context),
        ),
        const RangeOptions()
      ],
    );
  }
}