import 'dart:developer';

import 'package:flutter/material.dart';

import '../models/item_detail_model.dart';
import 'income_item_detail.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {

    log("${MediaQuery.of(context).size.width}");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: incomeDetailsList
          .map((e) => IncomeItemDetails(itemDetailModel: e))
          .toList(),
    );

  
  }
}



/*

  return Column(
      children: List.generate(
          incomeDetailsList.length,
          (index) => IncomeItemDetails(
                itemDetailModel: incomeDetailsList[index],
              )),
    );


 */