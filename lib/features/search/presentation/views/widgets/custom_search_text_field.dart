import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_icon_button.dart';
import 'package:bookly/features/search/presentation/manager/searched_books_cubit/searched_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({super.key});

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  TextEditingController searchController = .new();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      onSubmitted: (value) {
        search(context, value);
      },
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: Styles.textStyle16,
        suffixIcon: CustomIconButton(
          icon: FontAwesomeIcons.magnifyingGlass,
          size: 25,
          onPressed: () {
            search(context, searchController.text);
          },
        ),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  void search(BuildContext context, String value) {
    BlocProvider.of<SearchedBooksCubit>(
      context,
    ).fetchSearchedBooks(searchQuery: value);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: .circular(8),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
