
import 'package:flutter/material.dart';

import '../models/user_info_model.dart';
import 'user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
    // عدد محدود 
     scrollDirection: Axis.horizontal,
     child: Row(
     children: 
      userInfoList.map((e)=> IntrinsicWidth(child: UserInfoListTile(userInfoModel: e,))).toList()
     ),
   ) ; 



 
  }
}



/*
* عدد غير محدود
   return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
       
        itemCount: userInfoList.length,
        itemBuilder: (context, index) => IntrinsicWidth(
          child: UserInfoListTile(
            userInfoModel: userInfoList[index],
          ),
        ),
      ),
    );


*///