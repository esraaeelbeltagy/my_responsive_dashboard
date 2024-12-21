import 'package:flutter/material.dart';

import '../models/item_detail_model.dart';
import '../utils/app_styles.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({
    super.key,
    required this.itemDetailModel,
  });
  final ItemDetailModel itemDetailModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      minLeadingWidth: 12,
      leading: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
          color: itemDetailModel.color,
          shape: BoxShape.circle,
        ),
      ),
      title:
          Text(itemDetailModel.title, style: AppStyles.styleRegular16(context)),
      trailing: Text(
        itemDetailModel.value,
        style: AppStyles.styleMedium16(context).copyWith(
          color: const Color(0xFF208CC8),
        ),
      ),
    );
  }
}
