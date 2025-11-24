part of 'searched_books_cubit.dart';

sealed class SeachedBooksState extends Equatable {
  const SeachedBooksState();

  @override
  List<Object> get props => [];
}

final class SeachedBooksInitial extends SeachedBooksState {}

final class SeachedBooksLoading extends SeachedBooksState {}

final class SeachedBooksSuccess extends SeachedBooksState {
  final List<BookModel> books;

  const SeachedBooksSuccess(this.books);
}

final class SeachedBooksFailure extends SeachedBooksState {
  final String errorMessage;

  const SeachedBooksFailure(this.errorMessage);
}
