import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: const Color(kBottomContainerColor),
        margin: const EdgeInsets.only(
          top: kBottomContainerTopMargin,
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: const EdgeInsets.only(
          bottom: 20,
        ),
        child: Center(
          child: Text(
            text,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
