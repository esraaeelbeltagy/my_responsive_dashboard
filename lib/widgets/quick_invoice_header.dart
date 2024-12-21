
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Quick Invoice" , 
        style: AppStyles.styleSemiBold20(context),
        ) , 

        GestureDetector(
          onTap: (){

          },
          child: Container(
            // height: 60,
            // width: 60,
            padding:  const EdgeInsets.all(15),
            decoration:  const BoxDecoration(
              color:AppColors.midGreyColor,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.add , color: AppColors.primaryColor,),
          ),
        ),
      ],
    );
  }
}