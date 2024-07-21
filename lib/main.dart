import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      designSize: const Size(360,690),
      builder: (context,child){
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chef At Home',
      home: const Home(),
      );
      }
    );
  }
}