import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/widgets/my_cards_page_view.dart';

import '../utils/app_styles.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {



  late PageController pageController ; 
  int currentPageIndex = 0 ; 
 

 @override
  void initState() {
    super.initState();

    //* to update current index of indicator to pageController  
    pageController = PageController(); 
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    }); 
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My card",
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
         MyCardsPageView(pageController: pageController,),
        const SizedBox(
          height: 20,
        ),
         DotsIndicator(currerntIndex:  currentPageIndex,),
      ],
    );
  }
}
