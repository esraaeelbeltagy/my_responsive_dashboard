import 'package:flutter/material.dart';

class ItemDetailModel {
  final String title, value;
  final Color color;

  const ItemDetailModel({
    required this.title,
    required this.value,
    required this.color,
  });
}

List<ItemDetailModel> incomeDetailsList = [
 const  ItemDetailModel(
    title: "Design service",
    value: "40%",
    color: Color(0xFF208CC8),
  ),
 const  ItemDetailModel(
    title: "Design product",
    value: "25%",
    color: Color(0xFF4EB7F2),
  ),
 const  ItemDetailModel(
    title: "Design service",
    value: "20%",
    color: Color(0xFF064061),
  ),
 const  ItemDetailModel(
    title: "Design service",
    value: "22%",
    color: Color(0xFFE2DECD),
  ),
];
