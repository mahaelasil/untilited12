import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled12/presentation/style/colors.dart';
import 'package:untitled12/presentation/widgets/defult_text.dart';

import '../../../core/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
   with TickerProviderStateMixin{
  late final AnimationController _controller;
  late final Animation<double>_animation;
  @override
  void initState() {
    _controller=AnimationController(
        vsync: this,
    duration: const Duration(microseconds: 12000),
    )..repeat(reverse: true);
    _animation=CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn);
    Timer(
      const Duration(milliseconds: 4000),
          () => Navigator.pushNamedAndRemoveUntil(
          context, homeLayout, (route) => false),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
          width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors:
          [
            skyBlue,
            lightSkyBlue,
            skyBlue
          ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                height:30.h,
                width:70.w,
              ),
              DefaultText(
                  text: 'Easy Contact ',
              textSize: 25.sp,
              textColor: darkBlue,
              weight: FontWeight.bold,
              textStyle: FontStyle.italic,
              textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}