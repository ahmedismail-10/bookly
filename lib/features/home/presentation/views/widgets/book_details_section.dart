import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action_button.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * (243 / 812),
          // child: const BookImage(
          //   imageUrl: '',
          // ),
        ),
        const SizedBox(height: 42),
        const Text(
          'The Jungle Book',
          textAlign: .center,
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 13),
        Text(
          'Rudyard Kipling',
          textAlign: .center,
          style: Styles.textStyle18.copyWith(
            color: Colors.white.withValues(
              alpha: 0.7,
            ),
            fontStyle: .italic,
          ),
        ),
        const SizedBox(height: 20),
        const BookRating(
          mainAxisAlignment: .center,
        ),
        const SizedBox(height: 41),
        const BooksActionButton(),
      ],
    );
  }
}
