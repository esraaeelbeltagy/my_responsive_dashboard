import '../utils/app_images.dart';

class UserInfoModel {
  final String imageUrl;
  final String title;
  final String subtitle;

  UserInfoModel({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });
}

List<UserInfoModel> userInfoList = [
  UserInfoModel(
    imageUrl: AppImages.imagesAvatar1,
    title: "Madrani Andi",
    subtitle: "Madraniadi20@gmail",
  ) , 
  UserInfoModel(
    imageUrl: AppImages.imagesAvatar2,
    title: "Josua Nunito",
    subtitle: "Josh Nunito@gmail.com",
  ) , 
  UserInfoModel(
    imageUrl: AppImages.imagesAvatar3,
    title: "Josua Nunito",
    subtitle: "Josh Nunito@gmail.com",
  ) , 
  UserInfoModel(
    imageUrl: AppImages.imagesAvatar1,
    title: "Madrani Andi",
    subtitle: "Madraniadi20@gmail",
  ) , 
  UserInfoModel(
    imageUrl: AppImages.imagesAvatar2,
    title: "Josua Nunito",
    subtitle: "Josh Nunito@gmail.com",
  ) , 
  UserInfoModel(
    imageUrl: AppImages.imagesAvatar3,
    title: "Josua Nunito",
    subtitle: "Josh Nunito@gmail.com",
  ) , 


];
