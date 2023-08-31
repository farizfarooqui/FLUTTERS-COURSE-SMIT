import 'package:flutter/material.dart';
import 'package:figma_project/colors.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Container(
          color: AppColors.black_1,
          height: 20,
          width: 60,
        ),
        Container()
      ],
    );
  }
}