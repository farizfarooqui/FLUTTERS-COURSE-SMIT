import 'package:figma_project/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MakePayment extends StatelessWidget {
  const MakePayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.black_1,
          leading: Container(
            padding: const EdgeInsets.all(6),
            child: CircleAvatar(
              radius: 5,
              backgroundColor: AppColors.black_20,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.black_100,
                  )),
            ),
          ),
          title: Text(
            'Payment',
            style: TextStyle(color: AppColors.black_100),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ));
  }
}
