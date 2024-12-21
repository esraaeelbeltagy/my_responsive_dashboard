import 'package:flutter/material.dart';

import 'custom_drawer.dart';
import 'dashboard_mobile_layout.dart';

class DahboardTabletLayout extends StatelessWidget {
  const DahboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 3, child: DashBoardMobileLayout()),
        SizedBox(
          width: 32,
        )
      ],
    );
  }
}
