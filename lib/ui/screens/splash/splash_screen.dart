import 'package:books/ui/utils/app_assets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static String routeName ="splashRoute";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  late AnimationController animationController ;
  late Animation<Offset> slidingAnimation ;



  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this,duration:const Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin:const Offset(0, 20) , end:Offset.zero ).animate(animationController);
    animationController.forward();
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
          animation: slidingAnimation,
          builder: (context,_) {
            return SlideTransition(
              position: slidingAnimation ,
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
