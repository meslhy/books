import 'package:books/data/models/Failuer.dart';
import 'package:books/data/models/all_books/all_books_responses.dart';
import 'package:books/domain/repos/home/home_repo.dart';
import 'package:books/ui/utils/base_request_states.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetNewestBooksUseCase extends Cubit{
  HomeRepo repo;
  GetNewestBooksUseCase(this.repo):super(BaseRequestInitialState());

  void execute()async{
    Either<Failuer,AllBooksResponses> either = await repo.getAllBooks(true);

    either.fold(
            (failuer) => emit(BaseRequestErrorState(failuer.errorMessage)),
            (data) => emit(BaseRequestSuccessState<List<Books>>(data: data.items)));
  }

}