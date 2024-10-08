import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure,List<BookModel>>> fetchNewsetBooks() async{
   try {
  var data=await apiService.get(endPoint: ('volumes?Filtering=free-ebook&Sorting=newest&q=subject:Programming'));

  List<BookModel>books=[];
  for (var item in data['items']) {
    books.add(BookModel.fromJson(item));
    
  }
  return right(books);
} on Exception catch (e) {
  if(e is DioError)
  {
    return left(ServerFailure.fromDioError(e));
  }
  return left(ServerFailure(e.toString()));
}
  }

  
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{
  try {
  var data=await apiService.get(endPoint: 'volumes?Filtering=free-ebook&q=subject:Programming');

  List<BookModel>books=[];
  for (var item in data['items']) {
    books.add(BookModel.fromJson(item));
    print(item);
  }
  
  return right(books);
} on Exception catch (e) {
  if(e is DioError)
  {
    return left(ServerFailure.fromDioError(e));
  }
  return left(ServerFailure(e.toString()));
}
  }
  

}
