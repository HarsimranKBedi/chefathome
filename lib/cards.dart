import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'listtiles.dart';

class Designcards extends StatelessWidget
{
  @override
  Widget build(BuildContext context){
    return Padding(
      // height:180.h,
      // width: double.infinity,
      //color: Colors.yellow,
      padding: EdgeInsets.only(right:25.w,left:25.w,bottom: 10.h),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount:listTiles.length,
        itemBuilder: (context,index){
          final element = listTiles[index];
          return Container(
            height:57.h,
            child: Card(
              child: ListTile(
                title: Text(element.title),
                trailing: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.arrow_forward),
                ),
              ),
            ),
          );
        },
        ),
    );
    //return Container(
    //   color: Colors.yellow,
    //   height:300,
    //   width: double.infinity,
    // );
      
  }
}