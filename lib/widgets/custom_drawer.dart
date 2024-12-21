import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/widgets/active_and_inactive_drawer_item.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_colors.dart';
import '../utils/app_images.dart';

import 'drawer_item_list_view.dart';
import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteBackGround,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  imageUrl: AppImages.imagesUser,
                  title: "Lekan Okeowo",
                  subtitle: "demo@gmail.com"),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false, // to scroll with remaining up widgets
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                    child: SizedBox(
                  height: 25,
                )),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    imageUrl: AppImages.imagesSetting,
                    title: "Setting system",
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    imageUrl: AppImages.imagesLogout,
                    title: "Logout account",
                  ),
                ),
                // const SizedBox(
                //   height: 48,
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
