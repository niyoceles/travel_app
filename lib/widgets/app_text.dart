import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  AppText(
      {Key? key,
      this.size = 16,
      required this.text,
      this.color = Colors.black54})
      : super(key: key);

  double size;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
