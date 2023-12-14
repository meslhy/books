import 'package:books/ui/utils/app_assets.dart';
import 'package:books/ui/utils/app_color.dart';
import 'package:flutter/material.dart';

class CardOfImage extends StatelessWidget {
  double? height;
  double? width;
  bool isBestSeller;
   CardOfImage({this.height, this.width , this.isBestSeller = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height??MediaQuery.of(context).size.height *.24 ,
      width:width?? MediaQuery.of(context).size.width *.32,
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Image.asset(
            AppAssets.test,
            height:height ?? MediaQuery.of(context).size.height *.24 ,
            width:width?? MediaQuery.of(context).size.width *.32,
            fit: BoxFit.fill,
          ),
          if(!isBestSeller)
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white.withOpacity(.3),
              child:const Icon(Icons.play_arrow , color: AppColors.whiteColor,),
            ),
          ),
        ],
      ),
    );
  }
}
