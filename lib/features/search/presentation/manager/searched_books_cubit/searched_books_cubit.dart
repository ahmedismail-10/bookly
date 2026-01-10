import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'searched_books_state.dart';

class SearchedBooksCubit extends Cubit<SearchedBooksState> {
  SearchedBooksCubit(this._searchRepo) : super(SearchedBooksInitial());
  final SearchRepo _searchRepo;

  Future<void> fetchSearchedBooks({required String searchQuery}) async {
    emit(SearchedBooksLoading());
    var result = await _searchRepo.fetchSearchedBooks(searchQuery: searchQuery);
    result.fold(
      (failure) => emit(SearchedBooksFailure(failure.errMessage)),
      (books) => emit(SearchedBooksSuccess(books)),
    );
  }
}
