import 'package:responsive_dashboard/utils/app_images.dart';

class DrawerItemModel {
  String imageUrl;
  String title;

  DrawerItemModel({
    required this.imageUrl,
    required this.title,
  });
}


final List<DrawerItemModel> drawerList = [
DrawerItemModel(imageUrl: AppImages.imagesDashBoard, title: "Dashboard"),
DrawerItemModel(imageUrl: AppImages.imagesMyTransctions, title: "My Transaction"),
DrawerItemModel(imageUrl: AppImages.imagesStatistics, title: "Statistics"),
DrawerItemModel(imageUrl: AppImages.imagesWallet, title: "Wallet Account"),
DrawerItemModel(imageUrl: AppImages.imagesMInvestments, title: "My Investments"),
]; 