
import 'package:flutter/material.dart';

import '../models/transaction_model.dart';
import 'transaction_item.dart';

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {


 return Column(
      children: transactions.map((e) => Padding(
          padding:  EdgeInsets.only(
                  bottom: transactions.indexOf(e) == transactions.length-1 ? 0:12,
                ),
        child: TransactionItem(transactionModel: e))).toList(),
    );

    
  }
}



/*

return Column(
      children: List.generate(
          transactions.length,
          (index) => Padding(
                padding:  EdgeInsets.only(
                  bottom: index == transactions.length-1 ? 0:12,
                ),
                child: TransactionItem(
                  transactionModel: transactions[index],
                ),
              )),
    );



 */