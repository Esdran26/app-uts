import 'dart:async';
import 'package:app_uts/src/home/init_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 2),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const InitPage())));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  'images/logo.png',
                  height: 100.0,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/logosplash.jpg',
                    height: 50.0,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
