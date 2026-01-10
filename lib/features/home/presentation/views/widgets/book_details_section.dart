import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action_button.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * (243 / 812),
          child: BookImage(
            imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 42),
        Text(
          bookModel.volumeInfo?.title ?? '',
          textAlign: .center,
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 13),
        Text(
          bookModel.volumeInfo?.authors?[0] ?? '',
          textAlign: .center,
          style: Styles.textStyle18.copyWith(
            color: Colors.white.withValues(
              alpha: 0.7,
            ),
            fontStyle: .italic,
          ),
        ),
        const SizedBox(height: 20),
        BookRating(
          mainAxisAlignment: .center,
          rating: bookModel.volumeInfo?.averageRating ?? 0,
          count: bookModel.volumeInfo?.ratingsCount ?? 0,
        ),
        const SizedBox(height: 41),
        const BooksActionButton(),
      ],
    );
  }
}
