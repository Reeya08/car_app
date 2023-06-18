import 'dart:async';
import 'dart:ui';

import 'package:car_app/presentation/views/get_started/get_started_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GetStartedView()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   width: MediaQuery.of(context).size.width,
      //   height: MediaQuery.of(context).size.height,
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage(
      //         'assets/images/splash_background.png',
      //       ),
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      //   child: Center(
      //     child: Image.asset(
      //       'assets/images/splash_logo.png',
      //       height: 212,
      //       width: 237,
      //     ),
      //   ),
      // ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaY:1,sigmaX:1),
              child: Image.asset(
                'assets/images/splash_background.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Image.asset(
              'assets/images/splash_logo.png',
              height: 212,
              width: 237,
            ),
          ),
        ],
      ),
    );
  }
}
