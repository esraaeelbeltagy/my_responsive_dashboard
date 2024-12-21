
import 'package:flutter/material.dart';

import 'all_expenses.dart';
import 'quick_invoice.dart';

// class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
//   const AllExpensesAndQuickInvoiceSection({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return const CustomScrollView(
//       slivers: [
//         SliverToBoxAdapter(
//           child: SizedBox(height: 40),
//         ),
//         SliverToBoxAdapter(
//           child: AllExpenses(),
//         ),
//         SliverToBoxAdapter(
//           child: SizedBox(height: 24),
//         ),
//         SliverToBoxAdapter(
//           child: QuickInvoice()
//         ),
        
//       ],
//     );
//   }
// }





class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column
    (
      children: [
          SizedBox(height: 40),
AllExpenses(),
SizedBox(height: 24),
QuickInvoice(), 
      ],
    );
  }
}