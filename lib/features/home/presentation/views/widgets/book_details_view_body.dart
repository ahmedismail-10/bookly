import 'package:bookly/constants.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const .symmetric(horizontal: kPadding),
            child: Column(
              mainAxisAlignment: .start,
              children: [
                const CustomBookDetailsAppBar(),
                const SizedBox(height: 36),
                BookDetailsSection(bookModel: bookModel),
                const Spacer(),
                const SimilarBooksSection(),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
