import 'package:books/ui/utils/app_assets.dart';
import 'package:books/ui/utils/app_color.dart';
import 'package:books/ui/widgets/card_of_image.dart';
import 'package:books/ui/widgets/item_of_best_seller.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName ="homeRoute";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
              child: buildAppBar(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *.26 ,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CardOfImage(),
                      separatorBuilder: (context, index) => const SizedBox(width: 20,),
                      itemCount: 10,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40,),
            const Text(
              "Best Seller",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,

              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) =>const BestSellerItem(),
                  separatorBuilder: (context, index) => const SizedBox(height: 10,),
                  itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAppBar() => AppBar(
    backgroundColor: AppColors.primaryColor,
    elevation: 0.00,
    leading: Image.asset(AppAssets.splashLogo),
    actions:const [
      Icon(Icons.search_sharp),
    ],
  );
}
