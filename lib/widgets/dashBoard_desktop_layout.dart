import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'custom_drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: Row(
        children: [
          Expanded(
            
            flex : 70,
            child: CustomDrawer()),
          SizedBox(
            width: 24,           //32
          ),
          Expanded(
              flex: 151,
              child: CustomScrollView(slivers: [
                SliverToBoxAdapter(
                  child: AllExpensesAndQuickInvoiceSection(),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 24,
                  ),
                ),
               
              ])),
          SizedBox(
            width: 24,
          ),

          //* >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          // Expanded(child: MyCardAndTransactionAndIncomeSection()),
          Expanded(
            flex: 117,        //117
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SliverToBoxAdapter(
                  child: MyCardAndTransactionHistory(),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 24,
                  ),
                ),
                SliverFillRemaining(
                  // height = 100%   >> height of the screen
                  hasScrollBody: false,
                  child: IncomeSection(),
                ),
                // SliverToBoxAdapter(
                //   child: Container(color: Colors.red,
                //   height: 40,
                //   )
                // ),
              ],
            ),
          ),
          SizedBox(
            width: 24,       //32
          ),
        ],
      ),
    );
  }
}

// in Desktop Layout in right section
// Expanded(
//   child: Column(
//     children: [
//       SizedBox(
//         height: 40,
//       ),
//       MyCardAndTransactionHistory(),
//       SizedBox(
//         height: 24,
//       ),
//       Expanded(child: IncomeSection()),
//     ],
//   ),
// ),
