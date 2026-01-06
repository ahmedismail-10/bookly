import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await _apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming',
      );
      if (data['totalItems'] > 0) {
        List<BookModel> books = [];
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
        return right(books);
      } else {
        return left(ServerFailure());
      }
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await _apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:computer science',
      );
      if (data['totalItems'] > 0) {
        List<BookModel> books = [];
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
        return right(books);
      } else {
        return left(ServerFailure());
      }
    } catch (e) {
      return left(ServerFailure());
    }
  }
}
