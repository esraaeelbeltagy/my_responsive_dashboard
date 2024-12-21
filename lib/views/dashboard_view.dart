import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

import '../utils/app_styles.dart';
import '../widgets/adaptive_layout_widget.dart';
import '../widgets/dahboard_tablet_layout.dart';
import '../widgets/dashBoard_desktop_layout.dart';
import '../widgets/dashboard_mobile_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    log(" Media Query of width of screen ${MediaQuery.of(context).size.width}");
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width < SizeConfig.tablet
          ? AppBar(
              leading: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: AppColors.whiteBackGround,
                ),
                onPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                },
              ),
              backgroundColor: AppColors.primaryColor,
              title: Text(
                "Responsive Dashboard",
                style: AppStyles.styleSemiBold20(context)
                    .copyWith(color: AppColors.whiteBackGround),
              ),
            )
          : null,
      drawer: const Drawer(child: CustomDrawer()),
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DahboardTabletLayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
