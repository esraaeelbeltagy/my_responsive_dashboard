import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/my_card.dart';

import '../utils/app_colors.dart';

class MyCardsPageView extends StatefulWidget {
  const MyCardsPageView({super.key , 
  required this.pageController, 
  
  });
  final PageController pageController ; 
  @override
  State<MyCardsPageView> createState() => _MyCardsPageViewState();
}

class _MyCardsPageViewState extends State<MyCardsPageView> {
  // List<Color> colors = [
  //   Colors.blue,
  //    AppColors.primaryColor,
  //   const Color.fromARGB(255, 8, 68, 172)
  // ];
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: widget.pageController,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => const MyCard(
        color: AppColors.primaryColor,
      ),
      itemCount: 3,
    );
  }
}


/*
 children: List.generate(3, (index) {
        return const MyCard();
      }),

 */