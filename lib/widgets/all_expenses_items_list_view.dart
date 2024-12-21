import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: allExpensesList[0],
              isSelected: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(width: 12,),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: allExpensesList[1],
              isSelected: selectedIndex == 1,
            ),
          ),
        ),
         const SizedBox(width: 12,),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: allExpensesList[2],
              isSelected: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );

    
  }
}


/**
return Row(
      // children: allExpensesList
      //     .map((e) => Expanded(
      //           child: AllExpensesItem(allExpensesItemModel: e),
      //         ))
      //     .toList(),
      children: allExpensesList.asMap().entries.map((e) {
        int index = e.key;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpensesItem(
                allExpensesItemModel: e.value,
                isSelected: selectedIndex == index,
              ),
            ),
          ),
        );
      }).toList(),
    ); 
 */