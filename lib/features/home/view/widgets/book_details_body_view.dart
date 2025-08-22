import 'package:booklyapp/features/home/view/widgets/book_details_section.dart';
import 'package:booklyapp/features/home/view/widgets/boxAction.dart';
import 'package:booklyapp/features/home/view/widgets/custom_book_details_appbar.dart';
import 'package:booklyapp/features/home/view/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children:const  [
                 CustomBookDetailsAppBar(),
                 BookDetailsSection(),
                 SizedBox(height: 18),
                 BoxAction(),
                 Expanded(child: SizedBox(height: 50)),
                SimilarBooksSection(),
                 SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

