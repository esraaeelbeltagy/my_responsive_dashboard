import '../utils/app_images.dart';

class AllExpensesItemModel {
  final String imgUrl , title , date , price ;
  

  const AllExpensesItemModel({
    required this.imgUrl,
    required this.title,
    required this.date,
    required this.price,
  });
}


final List<AllExpensesItemModel> allExpensesList = [
  const AllExpensesItemModel(
    imgUrl: AppImages.imagesBalance,
    title: "Balance" , 
    date: "April 2022", 
    price: "\$20,129",
    ),
  const AllExpensesItemModel(
    imgUrl: AppImages.imagesIncome,
    title: "Income" , 
    date: "April 2022", 
    price: "\$20,129",
    ),
  const AllExpensesItemModel(
    imgUrl: AppImages.imagesExpenses,
    title: "Expenses" , 
    date: "April 2022", 
    price: "\$20,129",
    ),
];
