import 'package:books/data/models/Failuer.dart';
import 'package:books/data/models/all_books/all_books_responses.dart';
import 'package:books/data/repos/home/ds/home_online_ds.dart';
import 'package:books/domain/repos/home/ds/home_online_ds.dart';
import 'package:books/domain/repos/home/home_repo.dart';
import 'package:books/ui/utils/constants.dart';
import 'package:books/ui/utils/extensions.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepo)
class HomeRepoImpl extends HomeRepo{
  HomeOnlineDS ds;
  Connectivity connective;

  HomeRepoImpl(this.ds,this.connective);
  @override
  Future<Either<Failuer, AllBooksResponses>> getAllBooks(bool isNewest) async{

    if(await connective.isInternetConnective){
      return ds.getAllBooks(isNewest);
    }else{
      return Left(Failuer(Constants.internetErrorMessage));
    }

  }

}