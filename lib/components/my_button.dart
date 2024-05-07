import 'package:calculatorapp/constant.dart';
import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const myButton(
      {Key? key,
      required this.title,
      this.color = const Color(0xff1c1c1c),
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            child: Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 20, color: whiteColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
