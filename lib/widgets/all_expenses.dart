import 'package:flutter/material.dart';
import 'all_expenses_header.dart';
import 'all_expenses_items_list_view.dart';
import 'custom_bachground_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomBackGroundContainer(
      padding: 20 ,
      child:  Column(
      children: [
        AllExpensesHeader(), 
        SizedBox(height: 34,),
       AllExpensesItemsListView()
      ],
     ),
    );
  }
}
