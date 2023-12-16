import 'package:books/ui/screens/details/book_details_screen.dart';
import 'package:books/ui/utils/app_assets.dart';
import 'package:books/ui/utils/app_color.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class CardOfImage extends StatelessWidget {
  double? height;
  double? width;
  bool isBestSeller;
  String imageUrl;
   CardOfImage({this.height, this.width , this.isBestSeller = false,required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height??MediaQuery.of(context).size.height *.24 ,
      width:width?? MediaQuery.of(context).size.width *.32,
      child: InkWell(
        onTap: (){
          if(!isBestSeller)
          Get.to(() => BookDetailsScreen(), transition: Transition.fade , duration:const Duration(milliseconds: 250));
        },
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CachedNetworkImage(
              imageUrl: imageUrl,
              imageBuilder: (context, imageProvider) => Container(
                height:height ?? MediaQuery.of(context).size.height *.24 ,
                width: width?? MediaQuery.of(context).size.width *.32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: imageProvider, fit: BoxFit.cover),
                ),
              ),
              errorWidget: (_, __, ___) => Image.asset(
                AppAssets.test,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height *.24,
                width: MediaQuery.of(context).size.width * .32,
              ),
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
      ),
    );
  }
}
