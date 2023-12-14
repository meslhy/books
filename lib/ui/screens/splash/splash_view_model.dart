import 'package:books/ui/utils/base_request_states.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SplashViewModel extends Cubit{

  late AnimationController animationController ;
  late Animation<Offset> slidingAnimation ;

  SplashViewModel():super(BaseRequestInitialState());


  textAnimation(TickerProvider t){
    animationController = AnimationController(vsync: t,duration:const Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin:const Offset(0, 10) , end:Offset.zero ).animate(animationController);
    animationController.forward();
  }
  textAnimationDispose(){
    animationController.dispose();
  }

}