import 'package:books/ui/screens/details/book_details_screen.dart';
import 'package:books/ui/screens/splash/splash_screen.dart';
import 'package:books/ui/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'domain/di/di.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: AppColors.primaryColor),
      home: SplashScreen(),
    );
  }
}


