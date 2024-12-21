import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
     
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (selectedIndex != index) {
            setState(() {
              selectedIndex = index;
            });
         //   print(selectedIndex);
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(
            drawerItemModel: drawerList[index],
            isActive: selectedIndex == index,
          ),
        ),
      ),
      itemCount: drawerList.length,
    );
  }
}
