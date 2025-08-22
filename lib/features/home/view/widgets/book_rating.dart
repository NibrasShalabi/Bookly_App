import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key , this.mainAxisAlignment =MainAxisAlignment.start });
  final MainAxisAlignment mainAxisAlignment ;

  @override
  Widget build(BuildContext context) {
    return  Row(
    mainAxisAlignment: mainAxisAlignment,
      children: [
      const  Icon(
        size: 14,
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
       const  SizedBox(width: 6.3),
        Text('4.8', style: Styles.textStyle16),
       const SizedBox(width: 5),
        Text('(24.5k)',style: Styles.textStyle14,),
      ],
    );
  }
}
