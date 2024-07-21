import 'package:chef_at_home/timerrecipeslist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Timerrecipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:10.h,right: 25.w, left: 25.w,bottom:10.h),
      child: GridView.builder(
        shrinkWrap: true, // Allows the GridView to size itself based on its children
        physics: NeverScrollableScrollPhysics(), // Disables scrolling within the GridView
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15.h,
          crossAxisSpacing: 35.w,
        ),
        itemCount: times.length,
        itemBuilder: (context, index) {
          final element = times[index];
          return Container(
            height: 50.h,
            width: 50.h,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 214, 213, 213),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.alarm, size: 35.sp),
                SizedBox(height: 20.h),
                Text(
                  element.time,
                  style: GoogleFonts.roboto(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
