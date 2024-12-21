import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key , 
  required this.hintText, 
  });
  final String hintText ; 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppStyles.styleRegular16(context),
      decoration: InputDecoration(
        
      hintText: hintText,
      hintStyle: AppStyles.styleMedium16(context).copyWith(color: AppColors.greyColor),
          fillColor: AppColors.midGreyColor,
          filled: true,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none);
  }
}
