import 'package:books/domain/use_case/get_newest_books_use_case.dart';
import 'package:books/ui/utils/base_request_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/use_case/get_books_use_case.dart';


@injectable
class HomeViewModel extends Cubit{

  GetBooksUseCase allBooksUseCase;
  GetNewestBooksUseCase newestBooksUseCase;

  HomeViewModel(this.allBooksUseCase,this.newestBooksUseCase):super(BaseRequestInitialState());

  getBooks(){
    return allBooksUseCase.execute();
  }

  getNewestBooks(){
    return newestBooksUseCase.execute();
  }
}