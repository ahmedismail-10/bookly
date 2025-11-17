import 'package:bookly/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';

class SearchResultView extends StatelessWidget {
  const SearchResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20),
          // child: BookItem(),
          child: Text('Hello World!'),
        );
      },
    );
  }
}
