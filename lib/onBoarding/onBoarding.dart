

import 'package:birinchi_proyekt/todoList/todolist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  final PageController _pageController = PageController(initialPage: 0);

  int whatPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                LottieBuilder.asset('assets/anim/hello.json',repeat: true,),
                LottieBuilder.asset('assets/anim/anim2.json',repeat: true),
                LottieBuilder.asset('assets/anim/truck.json',repeat: true)
              ],
              onPageChanged: (val){
                whatPage = val;
              },
            )
          ),

          SmoothPageIndicator(
            controller: _pageController,
            // PageController
            count:  3,
            effect:   const SlideEffect(
                spacing:  8.0,
                radius:  4.0,
                dotWidth:  24.0,
                dotHeight:  5.0,
                strokeWidth:  0,
                dotColor:  Color(0xFFE8E8E8),
                activeDotColor: Color(0xFFFFDF34)
            ),  // your preferred effect

          ),
          const SizedBox(height: 40,),

          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width * 0.44, 54),
                    side: const BorderSide(color:Color(0xFFFFD01E)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    'Previous',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                  onPressed: () {
                    whatPage != 0
                        ? _pageController.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    ):{};
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width * 0.44, 54),
                    backgroundColor: const Color.fromRGBO(254, 201, 25, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                  onPressed: () {
                    //print(whatPage);
                    whatPage != 2
                        ? _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    )
                        :  MaterialPageRoute(
                        builder: (context) => const ToDoList()
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 25,)
        ],
      ),
    );
  }
}


