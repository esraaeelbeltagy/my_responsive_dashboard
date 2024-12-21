import 'package:flutter/material.dart';

import 'custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key , 
  required this.currerntIndex, 
  });
   final int currerntIndex ; 
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) =>  Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CustomDotIndicator(
            isActive: currerntIndex == index,
          ),
        ),
      ),
    );
  }
}
