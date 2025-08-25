import 'package:booklyapp/core/errors/failures.dart';
import 'package:booklyapp/features/home/data/models/BookSModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{

Future<Either<Failure,List<BookSModel>>>fatchBestSellerBooks();
Future<List<BookSModel>>fatchFeaturedBooks();


}