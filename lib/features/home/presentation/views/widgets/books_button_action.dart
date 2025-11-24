import 'package:bookly/core/utils/functions/custom_launch_url.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BooksButtonAction extends StatelessWidget {
  const BooksButtonAction({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            text: Text(
              'Free',
              style: Styles.textStyle18.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () {
              customLaunchUrl(context, uri: bookModel.volumeInfo?.previewLink);
            },
            text: Text(
              getText(bookModel),
              style: Styles.textStyle16.copyWith(
                color: Colors.white,
              ),
            ),
            backgroundColor: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
        ),
      ],
    );
  }

  String getText(BookModel bookModel) {
    return bookModel.volumeInfo?.previewLink != null
        ? 'preview'
        : 'Not Available';
  }
}
