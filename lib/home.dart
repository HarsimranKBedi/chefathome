import 'package:chef_at_home/heroingredientlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'heroingredient.dart';
import 'cards.dart';
import 'states.dart';
import 'timerrecipes.dart';
import 'weather.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recipes',
              style: GoogleFonts.roboto(
                fontSize: 22.sp,
                fontWeight: FontWeight.w500,
                color: Colors.brown,
              ),
            ),
            Icon(Icons.menu_book, color: Colors.brown),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 235, 229, 172),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroIngredient(),
            Padding(
              padding: EdgeInsets.only(right: 25.w, left: 25.w,bottom:10.w),
              child: Divider(height: 15.h, thickness: 2.w),
            ),
            // Padding(
            //   padding: EdgeInsets.only(right: 25.w, left: 25.w),
            //   child: Divider(height: 15.h, thickness: 2.w),
            // ),
            Designcards(),
            
            SizedBox(height: 10),
            WeatherScroll(),
            Timerrecipes(),
            Padding(
              padding: EdgeInsets.only(right: 25.w, left: 25.w),
              child: Divider(height: 15.h, thickness: 2.w),
            ),
            States(),
          ],
        ),
      ),
    );
  }
}
