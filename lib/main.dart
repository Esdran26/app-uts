import 'package:flutter/material.dart';

// Custom Imports
import 'package:app_uts/src/global/variables.dart';
import 'package:app_uts/src/splash/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cuental',
      theme: ThemeData(
          primaryColor: primaryColor,
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: Colors.greenAccent)),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => const SplashScreen()},
    );
  }
}
