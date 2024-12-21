
import 'package:flutter/material.dart';

import 'all_expenses.dart';
import 'income_section.dart';
import 'my_card_and_transaction_history.dart';
import 'quick_invoice.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: MediaQuery.of(context).size.width < 800 ? const SizedBox() : const SizedBox(height: 40),
      ),
      const SliverToBoxAdapter(
        child: AllExpenses(),
      ),
      const SliverToBoxAdapter(
        child: SizedBox(height: 24),
      ),
      const SliverToBoxAdapter(child: QuickInvoice()),
      const SliverToBoxAdapter(
        child: SizedBox(height: 24),
      ),
      const SliverToBoxAdapter(
        child: MyCardAndTransactionHistory(),
      ),
      const SliverToBoxAdapter(
        child: SizedBox(height: 24),
      ),
      const SliverFillRemaining(
        hasScrollBody: false,
        fillOverscroll: true,
        child: IncomeSection(),
      ),
      const SliverToBoxAdapter(
        child: SizedBox(height: 40),
      ),
    ]);
  }
}
