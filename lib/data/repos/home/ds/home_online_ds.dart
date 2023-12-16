import 'dart:convert';

import 'package:books/data/models/Failuer.dart';
import 'package:books/data/models/all_books/all_books_responses.dart';
import 'package:books/domain/repos/home/ds/home_online_ds.dart';
import 'package:books/ui/utils/constants.dart';
import 'package:books/ui/utils/end_points.dart';
import 'package:either_dart/src/either.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeOnlineDS)
class HomeOnlineDSImpl extends HomeOnlineDS{
  @override
  Future<Either<Failuer, AllBooksResponses>> getAllBooks(bool isNewest)async{
    try{
      Uri url =   Uri.parse("https://${EndPoints.baseUrl}${isNewest?EndPoints.newestBooks:EndPoints.books}");
      Response serverResponse = await get(url);
      AllBooksResponses responses = AllBooksResponses.fromJson(jsonDecode(serverResponse.body));
      if(serverResponse.statusCode >= 200 && serverResponse.statusCode < 300){
        return Right(responses);
      }else{
        return Left(Failuer(responses.message??Constants.defaultErrorMessage));
      }
    }catch(e,ee){
      print("Exception while calling:getLoggedUserCart:$e in:$ee");
      return Left(Failuer(Constants.defaultErrorMessage));
    }
  }


}