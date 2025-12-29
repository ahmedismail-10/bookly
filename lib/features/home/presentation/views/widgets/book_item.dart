import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128,
      child: Row(
        children: [
          const BookImage(),
          const SizedBox(width: kPadding),
          Expanded(
            child: Column(
              mainAxisAlignment: .center,
              crossAxisAlignment: .start,
              children: [
                Text(
                  'The Jungle Book',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20.copyWith(
                    fontFamily: kGtSectraFine,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Rudyard Kipling',
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
                      '19.99 €',
                      style: Styles.textStyle20.copyWith(fontWeight: .bold),
                    ),
                    const BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
