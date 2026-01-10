import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kBookDetailsView,
          extra: bookModel,
        );
      },
      child: SizedBox(
        height: 128,
        child: Row(
          children: [
            BookImage(
              imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
            ),
            const SizedBox(width: kPadding),
            Expanded(
              child: Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: .start,
                children: [
                  Text(
                    bookModel.volumeInfo?.title ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20.copyWith(
                      fontFamily: kGtSectraFine,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    bookModel.volumeInfo?.authors?[0] ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle14.copyWith(
                      color: Colors.white.withValues(alpha: 0.7),
                    ),
                  ),
                  const SizedBox(height: 11),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(fontWeight: .bold),
                      ),
                      BookRating(
                        rating: bookModel.volumeInfo?.averageRating ?? 0,
                        count: bookModel.volumeInfo?.ratingsCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
