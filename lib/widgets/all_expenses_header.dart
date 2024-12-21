import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_header_with_range_options.dart';


class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomHeaderWithRangOptions(mainTitle:  "All Expensess");
  }
}



