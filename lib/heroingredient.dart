import 'package:chef_at_home/heroingredientlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroIngredient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.only(top:25.h,left:25.w,right:25.w,bottom:25.h),
              //padding: EdgeInsets.all(0),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(), 
                shrinkWrap: true, 
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.w,
                  mainAxisSpacing: 15.h,
                ),
                itemCount: ingredients.length,
                itemBuilder: (context, index) {
                  final element = ingredients[index];
                  return Stack(
                    children: [
                      Container(
                        height: 180.h,
                        width: 136.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          image: DecorationImage(
                            image: AssetImage(element.image),
                            fit: BoxFit.cover,
                            opacity: 0.88,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        top: 90.h,
                        child: Container(
                          
                          padding: EdgeInsets.only(left: 10.w, top: 0),
                          width: 136.w,
                          decoration: BoxDecoration(
                            //color: Colors.red,
                            color: const Color.fromARGB(255, 250, 242, 242).withOpacity(0.8),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(13.r),
                              topRight: Radius.circular(13.r),
                              bottomLeft: Radius.circular(20.r),
                              bottomRight: Radius.circular(20.r),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    element.title,
                                    style: GoogleFonts.roboto(fontSize: 12.sp),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.remove_red_eye, size: 20.sp),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            );
  }
}
