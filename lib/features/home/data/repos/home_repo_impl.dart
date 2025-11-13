import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this._apiService);
  final ApiService _apiService;
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await _apiService.get(
        endPoint: 'volumes?q=programming&filter=free-ebooks&OrderBy=newest',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on DioException catch (e) {
      return left(
        ServerFailure.fromDioException(e),
      );
    } catch (e) {
      return left(
        ServerFailure(errMessage: 'Unexpecter error: ${e.toString()}'),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await _apiService.get(
        endPoint: 'volumes?q=programming&filter=free-ebooks',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on DioException catch (e) {
      return left(
        ServerFailure.fromDioException(e),
      );
    } catch (e) {
      return left(
        ServerFailure(errMessage: 'Unexpecter error: ${e.toString()}'),
      );
    }
  }
}
