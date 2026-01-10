import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

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
        return left(
          const ServerFailure(errMessage: 'No books found'),
        );
      }
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
        return left(
          const ServerFailure(errMessage: 'No books found'),
        );
      }
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
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({
    required String category,
  }) async {
    try {
      var data = await _apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:$category',
      );
      if (data['totalItems'] > 0) {
        List<BookModel> books = [];
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item));
        }
        return right(books);
      } else {
        return left(
          const ServerFailure(errMessage: 'No books found'),
        );
      }
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
