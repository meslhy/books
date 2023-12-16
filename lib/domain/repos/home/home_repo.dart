import 'package:books/data/models/Failuer.dart';
import 'package:books/data/models/all_books/all_books_responses.dart';
import 'package:either_dart/either.dart';

abstract class HomeRepo{
  Future<Either<Failuer,AllBooksResponses>> getAllBooks(bool isNewest);
}