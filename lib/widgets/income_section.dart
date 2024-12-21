import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_bachground_container.dart';

import 'income_section_body.dart';
import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
  
    return   const CustomBackGroundContainer(
      padding: 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IncomeSectionHeader(),
          SizedBox(
            height: 16,
          ),
          IncomeSectionBody()
        ],
      ),
    ) 
    ;
  }
}
