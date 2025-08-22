import 'package:flutter/material.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/constant.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home/view/widgets/book_rating.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem ({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push('/BookDetailsView');
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(AssetsData.logo),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      'Hary Potter and the Goblet of Fire',
                      style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text('J.K Rowling', style: Styles.textStyle14),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        '19.99 ',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      BookRating(),
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
