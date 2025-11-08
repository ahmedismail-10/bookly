import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_button_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(height: 36),
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
          const SizedBox(
            height: 50,
          ),
          const Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle14,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SimilarBooksListView(),
        ],
      ),
    );
  }
}
