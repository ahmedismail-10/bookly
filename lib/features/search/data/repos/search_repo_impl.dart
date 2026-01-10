import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  SearchRepoImpl(this._apiService);

  final ApiService _apiService;
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks({
    required String searchQuery,
  }) async {
    try {
      var data = await _apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=$searchQuery',
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
