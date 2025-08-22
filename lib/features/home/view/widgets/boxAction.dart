import 'package:booklyapp/core/widget/custom_butten.dart';
import 'package:flutter/material.dart';
class BoxAction extends StatelessWidget {
  const BoxAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: const Row(
        children: [
          Expanded(
            child: CustomButten(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12) , bottomLeft: Radius.circular(12)), text: '19.9',
            ),
          ),
          Expanded(
            child: CustomButten(
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(12) , bottomRight: Radius.circular(12)), text: 'Free Preview',
            ),
          ),
        ],
      ),
    );
  }
}
