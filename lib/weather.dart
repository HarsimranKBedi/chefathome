import 'package:chef_at_home/weatherlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherScroll extends StatefulWidget {
  @override
  _WeatherScrollState createState() => _WeatherScrollState();
}

class _WeatherScrollState extends State<WeatherScroll> {
  PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page?.round() ?? 0;
      });
    });
  }

  void _goToPage(int page) {
    _pageController.animateToPage(
      page,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150.h,
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Stack(
            children: [
              PageView(
                controller: _pageController,
                children: List.generate(items.length, (index) {
                  final element = items[index];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      image: DecorationImage(
                        image: AssetImage(element.image),
                        fit: BoxFit.cover,
                        opacity: 0.9,
                      ),
                    ),
                    child: Center(child: Text(element.heading,style: GoogleFonts.aboreto(fontSize: 40.sp,color: element.color,fontWeight: FontWeight.w700),))
                  );
                }),
                onPageChanged: (page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
              ),
              Positioned(
                top: 55.h,
                right: 7.w,
                child: Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        if (_currentPage == 3) {
                          _goToPage(0); // Jump to the first page
                        } else {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      icon: Icon(
                        Icons.arrow_forward_outlined,
                        size: 20.sp,
                        color: Colors.black,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 55.h,
                left: 7.w,
                child: Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        if (_currentPage == 0) {
                          _goToPage(3); // Jump to the last page
                        } else {
                          _pageController.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 20.sp,
                        color: Colors.black,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              return AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 4.w),
                width: _currentPage == index ? 10.w : 6.w,
                height: _currentPage == index ? 10.h : 6.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == index ? Colors.black : Colors.grey,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
