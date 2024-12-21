
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomBackGroundContainer extends StatelessWidget {
  const CustomBackGroundContainer({
    super.key,
    required this.child , 
     this.padding, 
  });


final Widget child ; 
final double? padding ; 
  @override
  Widget build(BuildContext context) {
    return Container(
     clipBehavior: Clip.antiAliasWithSaveLayer,

      padding:  EdgeInsets.all(padding ?? 20),
     decoration: BoxDecoration(
      color: AppColors.whiteBackGround , 
      borderRadius: BorderRadius.circular(12)
       
     ),
     child:  child , 
    );
  }
}
