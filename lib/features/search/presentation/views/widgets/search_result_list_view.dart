import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_item.dart';
import 'package:bookly/features/search/presentation/manager/searched_books_cubit/searched_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchedBooksCubit, SearchedBooksState>(
      builder: (context, state) {
        if (state is SearchedBooksInitial) {
          return const Center(
            child: Text(
              'Search for books',
              style: Styles.textStyle20,
            ),
          );
        } else if (state is SearchedBooksSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: BookItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is SearchedBooksFailure) {
          return Center(
            child: CustomErrorWidget(errMessage: state.errorMessage),
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
