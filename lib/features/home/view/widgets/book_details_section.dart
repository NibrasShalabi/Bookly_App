import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home/view/widgets/book_rating.dart';
import 'package:booklyapp/features/home/view/widgets/custom_lies_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomLiesViewItem(),
        ),
        SizedBox(height: 43),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w100,
            color: Colors.grey,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 18),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
      ],
    );
  }
}

