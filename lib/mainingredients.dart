import 'package:chef_at_home/heroingredientlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mainingredients extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height:560.h,
      width: double.infinity,
      margin: EdgeInsets.only(top: 25.h),
      padding: EdgeInsets.only(right:25.w,left:25.w),
      child: Container(
        color: Colors.yellow,
        child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.w,
          mainAxisSpacing: 15.h,
        ), 
        itemCount: ingredients.length,
        itemBuilder: (context,index){
          final element = ingredients[index];
          return Container(
            decoration:BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.r)),
              image: DecorationImage(
                image: AssetImage(element.image),
                fit: BoxFit.cover,
                opacity: 0.88,
              ),
            ),
          );
        }
        ),
      ),
    );
  }
}