import 'dart:async';

import 'package:bitti_gitti/view/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const HomeScreen(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
                text: "Bitti ",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontSize: 54,
                      color: Colors.black54,
                    ),
                children: [
                  TextSpan(
                      text: "Gitti",
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontSize: 54,
                                color: Colors.black26,
                              )),
                ]),
          ),
          SizedBox.square(
              dimension: 300, child: Image.asset('assets/images/logo.png')),
        ],
      ),
    ));
  }
}
