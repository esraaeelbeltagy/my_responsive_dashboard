import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_colors.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, this.color});

  final Color? color;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage(
                AppImages.imagesCardBackground,
              ),
              fit: BoxFit.fill),
          color: color ?? AppColors.primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Flexible(
                child: SizedBox(
              height: 5,
            )),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              title: Text(
                "Name card",
                style: AppStyles.styleRegular16(context).copyWith(
                  color: AppColors.whiteBackGround,
                ),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: AppStyles.styleSemiBold18(context).copyWith(
                  color: AppColors.whiteBackGround,
                ),
              ),
              trailing: SvgPicture.asset(AppImages.imagesImage),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FittedBox(
                    child: Text(
                      "0918 8124 0042 8129",
                      style: AppStyles.styleSemiBold24(context).copyWith(
                        color: AppColors.whiteBackGround,
                      ),
                    ),
                  ),
                  Text(
                    "12/20 - 124",
                    style: AppStyles.styleRegular16(context).copyWith(
                      color: AppColors.whiteBackGround,
                    ),
                  ),
                ],
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
