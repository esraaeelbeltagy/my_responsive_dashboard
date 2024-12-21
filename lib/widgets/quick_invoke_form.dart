import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import '../utils/app_colors.dart';
import 'title_text_field.dart';

class QuickInvokeForm extends StatelessWidget {
  const QuickInvokeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
              title: "Customer name",
              hintText: "Type customer name",
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextField(
              title: "Customer Email",
              hintText: "Type customer email",
            )),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
              title: "Item name",
              hintText: "Type item name",
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextField(
              title: "Item amount",
              hintText: "Type item amount",
            )),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: "Add more details",
                textColor: AppColors.primaryColor,
                backGroundColor: AppColors.whiteBackGround,
              ),
            ),
            SizedBox(width: 24,),
            Expanded(
              child: CustomButton(
                title: "Send Money",
                textColor: AppColors.whiteBackGround,
                backGroundColor: AppColors.primaryColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}
