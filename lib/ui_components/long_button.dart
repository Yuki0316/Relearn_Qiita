import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  const LongButton(
      {Key? key,
      required this.text,
      required this.backgroundColor,
      required this.onPressed,
      required this.foregroundColor})
      : super(key: key);

  final String text;
  final Color? backgroundColor;
  final void Function()? onPressed;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    double? deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth / 1.3,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          textStyle: const TextStyle(
            fontSize: 24,
          ),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
