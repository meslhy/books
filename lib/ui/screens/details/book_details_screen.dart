import 'package:books/ui/screens/home/home_screen.dart';
import 'package:books/ui/utils/app_assets.dart';
import 'package:books/ui/utils/app_color.dart';
import 'package:books/ui/utils/app_font.dart';
import 'package:books/ui/widgets/card_of_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildDetailsBody(context),
    );
  }

  Widget buildDetailsBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildAppBar(),
          SizedBox(
            height: MediaQuery.of(context).size.height *.38,
            child: Center(
              child: CardOfImage(
                height: MediaQuery.of(context).size.height *.3,
                width: MediaQuery.of(context).size.width *.37,
                isBestSeller: true,
              ),
            ),
          ),
          const Padding(
             padding: EdgeInsets.symmetric(horizontal: 40.0),
             child: Text(
              "Harry Potter and the Goblet of Fire",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                fontFamily: kGtSectraFine
              ),
              maxLines: 2,
               textAlign: TextAlign.center,
          ),
           ),
          const SizedBox(height: 12,),
          const Text(
            "Y.meslhy",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: AppColors.grey
            ),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 6,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: AppColors.gold,
                size: 20,
              ),
              Text(
                "4.5",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
                maxLines: 2,
              ),
              SizedBox(width: 8,),
              Text(
                "(25302)",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: AppColors.grey
                ),
                maxLines: 2,
              ),
            ],
          ),
          const SizedBox(height: 20,),
          buildCustomButton(),
          const SizedBox(height: 22,),
          const Text(
            "You can also like",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),

          ),
          const SizedBox(height: 10,),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>  CardOfImage(
                  height: MediaQuery.of(context).size.height *.15 ,
                  width: MediaQuery.of(context).size.width *.22,
                  isBestSeller: true,),
                separatorBuilder: (context, index) => const SizedBox(width: 10,),
                itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAppBar() => AppBar(
    backgroundColor: AppColors.primaryColor,
    elevation: 0.00,
    leading: IconButton(onPressed: (){
      Get.to(() => HomeScreen(), transition: Transition.fade , duration:const Duration(milliseconds: 250));
    }, icon: const Icon(Icons.close,size: 28,)),
    actions:const [
      Icon(Icons.shopping_cart_checkout_outlined),
    ],
  );

  Widget buildCustomButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          Expanded(
              child:Container(
                height: 60,
                decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft:Radius.circular(20) ),
                ),
                child: TextButton(
                  onPressed: (){},
                  child: const Text(
                      "20.2",
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                ),
              ),
          ),
          Expanded(
              child:Container(
                height: 60,
                decoration: const BoxDecoration(
                  color: AppColors.orange,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight:Radius.circular(20) ),
                ),
                child: TextButton(
                  onPressed: (){},
                  child: const Text(
                      "20.2",
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
