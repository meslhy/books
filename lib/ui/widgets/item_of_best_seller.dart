import 'package:books/data/models/all_books/all_books_responses.dart';
import 'package:books/ui/screens/details/book_details_screen.dart';
import 'package:books/ui/utils/app_color.dart';
import 'package:books/ui/widgets/card_of_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class BestSellerItem extends StatelessWidget {

  Books book;
  BestSellerItem(this.book, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.15 ,
      child: InkWell(
        onTap: (){
          Get.to(() => const BookDetailsScreen(), transition: Transition.fade , duration:const Duration(milliseconds: 250));
        },
        child: Row(
          children: [
            CardOfImage(
              height: MediaQuery.of(context).size.height *.15 ,
              width: MediaQuery.of(context).size.width *.22,
              imageUrl: book.volumeInfo?.imageLinks?.smallThumbnail??"",
              isBestSeller: true,),
            const SizedBox(width: 12,),
             Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    book.volumeInfo!.title??"",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                    ),
                    maxLines: 2,
                  ),
                  Container(
                    width: 200,
                    child: Text(
                      book.volumeInfo!.description??"",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: AppColors.grey
                      ),
                      maxLines: 2,
                    ),
                  ),
                  Row(
                    children: [
                     const Text(
                        "Free",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          color: AppColors.gold
                        ),
                        maxLines: 2,
                      ),
                      const Spacer(),
                      Expanded(
                        child: Text(
                          book.volumeInfo!.publisher??"",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: AppColors.whiteColor
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
