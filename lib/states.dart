import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class States extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
    height:150.h,
    margin: EdgeInsets.only(top:15.h,bottom: 10.h),
    padding: EdgeInsets.only(right:25.w, left: 25.w),
    child: Container(
    decoration: BoxDecoration(
      //color: Colors.red,
      borderRadius: BorderRadius.all(Radius.circular(30.r)),
      image: DecorationImage(
        image: AssetImage('assets/globe.jpg'),
        fit: BoxFit.cover,
        opacity: 0.8,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text('Delicacies of the',style: TextStyle(fontFamily: 'AreYouSerious' ,fontSize: 40.sp,fontWeight: FontWeight.w700),),
        ),
        Center(
          child: Text('Globe',style: TextStyle(fontFamily: 'AreYouSerious',fontSize: 40.sp,fontWeight: FontWeight.w700),),
        ),
      ],
    ),
    ),
   );
  }
}