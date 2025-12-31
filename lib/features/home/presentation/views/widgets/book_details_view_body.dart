import 'package:bookly/constants.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: .symmetric(horizontal: kPadding),
      child: Column(
        mainAxisAlignment: .start,
        children: [
          CustomBookDetailsAppBar(),
          SizedBox(height: 36),
          BookDetailsSection(),
          Spacer(),
          SimilarBooksSection(),
        ],
      ),
    );
  }
}
