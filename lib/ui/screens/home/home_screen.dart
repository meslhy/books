import 'package:books/data/models/all_books/all_books_responses.dart';
import 'package:books/domain/di/di.dart';
import 'package:books/ui/screens/home/home_view_model.dart';
import 'package:books/ui/utils/app_assets.dart';
import 'package:books/ui/utils/app_color.dart';
import 'package:books/ui/utils/base_request_states.dart';
import 'package:books/ui/widgets/card_of_image.dart';
import 'package:books/ui/widgets/item_of_best_seller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeScreen extends StatefulWidget {
  static String routeName ="homeRoute";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeViewModel viewModel = getIt();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel.getBooks();
    viewModel.getNewestBooks();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 20),
                    child: buildAppBar(),
                  ),
                  BlocBuilder(
                    bloc: viewModel.allBooksUseCase,
                    builder:(context, state) {
                      if(state is BaseRequestErrorState){
                        return ErrorWidget(state.message);
                      }else if(state is BaseRequestSuccessState){
                        List<Books> books = state.data;
                        return SizedBox(
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * .26,
                          child: Row(
                            children: [
                              Expanded(
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => CardOfImage(
                                      imageUrl:books[index].volumeInfo?.imageLinks?.smallThumbnail??""
                                  ),
                                  separatorBuilder: (context,
                                      index) => const SizedBox(width: 20,),
                                  itemCount: 10,
                                ),
                              ),
                            ],
                          ),
                        );
                      }else{
                        return const Center(child: CircularProgressIndicator(color: AppColors.orange,));
                      }

                    },
                  ),
                  const SizedBox(height: 40,),
                  const Text(
                    "Newest Books",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                    ),
                  ),


                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: BlocBuilder(
                bloc: viewModel.newestBooksUseCase,
                builder:(context, state) {
                  if(state is BaseRequestErrorState){
                    return ErrorWidget(state.message);
                  }
                  else if(state is BaseRequestSuccessState){
                    List<Books> books = state.data;
                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) =>  BestSellerItem(books[index] ),
                      separatorBuilder: (context, index) =>
                      const SizedBox(height: 10,),
                      itemCount: books.length,
                    );
                  }else{
                    return const Center(child: CircularProgressIndicator(color: AppColors.orange,));
                  }

                },
              ),
            ),
          ),
        ],
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
