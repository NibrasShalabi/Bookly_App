import 'package:booklyapp/core/errors/failures.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:booklyapp/features/home/data/models/BookSModel.dart';
import 'package:booklyapp/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo{
  late final ApiService apiService;
  @override
  Future<Either<Failure, List<BookSModel>>> fatchBestSellerBooks()async {
 try {
   var data = await apiService.get(endPoint: 'volumes?filter=free-ebooks&orderBy=newest&q=subject:Programming');

  List<BookSModel> books = [];
  for (var item in data['items']) {
    books.add(BookSModel.fromJson(item));
  }
  return right(books);

 }  catch (e) {
   if (e is DioException){
   return left(ServerFailure.fromDioError(e));
   }
   return left(ServerFailure(e.toString()));
 }

  }

  @override
  Future<List<BookSModel>> fatchFeaturedBooks() {
    throw UnimplementedError();
  }

}