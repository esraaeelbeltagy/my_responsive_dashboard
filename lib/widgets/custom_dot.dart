import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key , 
  required this.isActive, 
  
  });
  final bool isActive ; 
  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(
     // padding: const EdgeInsets.only(right: 8),
     duration:  const Duration(milliseconds: 300 , 
     
     ),
      height: 8,
      width: isActive ? 32 : 8,
      decoration: BoxDecoration(
        color: isActive ?  AppColors.primaryColor:  AppColors.dotColor, 
       borderRadius: BorderRadius.circular(12) , 
      ),
    );
  }
}