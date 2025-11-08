import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_button_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * (243 / 812),
          child: const FeaturedItem(),
        ),
        const SizedBox(
          height: 42,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 13,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
            color: Colors.white.withValues(
              alpha: 0.7,
            ),
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 41,
        ),
        const BooksButtonAction(),
      ],
    );
  }
}
