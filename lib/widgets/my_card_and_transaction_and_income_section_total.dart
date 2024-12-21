import 'package:flutter/material.dart';

import 'income_section.dart';
import 'my_card_and_transaction_history.dart';

class MyCardAndTransactionAndIncomeSection extends StatelessWidget {
  const MyCardAndTransactionAndIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
 return const Column(
    children: [
       SizedBox(height: 40),
        MyCardAndTransactionHistory(),
         SizedBox(height: 24),
         IncomeSection(),
          SizedBox(height: 40),
    ],
  
 ); 






  
  }
}



/**
 

  return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: SizedBox(height: 40),
      ),
      SliverToBoxAdapter(
        child: MyCardAndTransactionHistory(),
      ),
      SliverToBoxAdapter(
        child: SizedBox(height: 24),
      ),
      SliverFillRemaining(
        hasScrollBody: false,
        fillOverscroll: true,
        child: IncomeSection(),
      ),
      SliverToBoxAdapter(
        child: SizedBox(height: 40),
      ),
    ]);


 */