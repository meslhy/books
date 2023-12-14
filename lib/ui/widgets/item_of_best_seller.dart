import 'package:books/ui/utils/app_color.dart';
import 'package:books/ui/widgets/card_of_image.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.15 ,
      child: Row(
        children: [
          CardOfImage(
            height: MediaQuery.of(context).size.height *.15 ,
            width: MediaQuery.of(context).size.width *.22,
            isBestSeller: true,),
          const SizedBox(width: 12,),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Harry Potter and the Goblet of Fire",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                  ),
                  maxLines: 2,
                ),
                Text(
                  "Y.meslhy",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.grey
                  ),
                  maxLines: 2,
                ),
                Row(
                  children: [
                    Text(
                      "200 EG",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22
                      ),
                      maxLines: 2,
                    ),
                    Spacer(),
                    Icon(
                      Icons.star,
                      color: AppColors.gold,
                    ),
                    Text(
                      "4.5",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22
                      ),
                      maxLines: 2,
                    ),
                    SizedBox(width: 6,),
                    Text(
                      "(25302)",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: AppColors.grey
                      ),
                      maxLines: 2,
                    ),
                  ],
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
