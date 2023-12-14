import 'package:books/domain/di/di.dart';
import 'package:books/ui/screens/home/home_screen.dart';
import 'package:books/ui/screens/splash/splash_view_model.dart';
import 'package:books/ui/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashScreen extends StatefulWidget {
  static String routeName ="splashRoute";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{


  SplashViewModel viewModel = getIt();
  @override
  void initState() {
    super.initState();
    viewModel.textAnimation(this);
    Future.delayed( const Duration(seconds: 2),() {
      Get.to(() => HomeScreen(), transition: Transition.fade , duration:const Duration(milliseconds: 250));
    },);
  }
  @override
  void dispose() {
    super.dispose();
   viewModel.textAnimationDispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: splashViewBody(),
    );
  }

  splashViewBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.splashLogo),
        const SizedBox(height: 18,),
        AnimatedBuilder(
          animation: viewModel.slidingAnimation,
          builder: (context,_) {
            return SlideTransition(
              position: viewModel.slidingAnimation ,
              child: const Text(
                  "Read Free Books",
                  textAlign: TextAlign.center
              ),
            );
          }
        ),
      ],
    );
  }
}
