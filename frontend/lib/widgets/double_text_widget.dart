import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/styles.dart';

class AppDoubleText extends StatelessWidget {
  final String bigText;
  final String  smallText;
  const AppDoubleText({super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headlineStyle2,
        ),
        InkWell(
            child: Text(
              smallText,
              style: Styles.textStyle.copyWith(
                color: Styles.primaryColor,
              ),
            )),
      ],
    );
  }
}
