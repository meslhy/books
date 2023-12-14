import 'package:books/ui/screens/home/home_screen.dart';
import 'package:books/ui/screens/splash/splash_screen.dart';
import 'package:books/ui/utils/app_color.dart';
import 'package:books/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: AppColors.primaryColor),
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
        SplashScreen.routeName:(context) => SplashScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}


