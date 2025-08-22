

import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';

class CustomLiesViewItem extends StatelessWidget {
  const CustomLiesViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsData.logo),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
