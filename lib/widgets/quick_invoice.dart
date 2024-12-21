import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import 'custom_bachground_container.dart';
import 'latest_transaction_widget.dart';
import 'quick_invoice_header.dart';
import 'quick_invoke_form.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
        padding: 24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            SizedBox(
              height: 24,
            ),
            LatestTransactionWidget(),
            Divider(
              color: AppColors.lightGreyColor,
              thickness: 1,
              height: 48,
            ), 
           QuickInvokeForm()
          ],
        ));
  }
}
