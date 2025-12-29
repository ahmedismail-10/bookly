import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Book Details',
            style: Styles.textStyle20,
          ),
        ),
      ),
    );
  }
}
