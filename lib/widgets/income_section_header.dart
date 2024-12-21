
import 'package:flutter/material.dart';

import 'custom_header_with_range_options.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomHeaderWithRangOptions(mainTitle: "Income");
  }
}