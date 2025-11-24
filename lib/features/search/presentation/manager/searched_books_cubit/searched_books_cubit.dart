import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'searched_books_state.dart';

class SeachedBooksCubit extends Cubit<SeachedBooksState> {
  SeachedBooksCubit(this.searchRepo) : super(SeachedBooksInitial());
  final SearchRepo searchRepo;

  Future<void> fetchSearchedBooks(String searchQuery) async {
    emit(SeachedBooksLoading());
    var result = await searchRepo.fetchSearchedBooks(searchQuery);
    result.fold(
      (failure) {
        emit(SeachedBooksFailure(failure.errMessage));
      },
      (books) {
        emit(SeachedBooksSuccess(books));
      },
    );
  }
}
