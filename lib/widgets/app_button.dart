import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  AppButton(
      {Key? key,
      required this.color,
      this.text,
      this.isIcon = false,
      this.icon,
      required this.backgroundColor,
      required this.borderColor,
      required this.size})
      : super(key: key);
  final Color color;
  String? text;
  bool? isIcon;
  IconData? icon;

  final Color backgroundColor;
  double? size;

  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: borderColor, width: 1.0),
          color: backgroundColor),
      child: isIcon == false
          ? Center(
              child: AppText(
                text: text!,
                color: color,
              ),
            )
          : Center(
              child: Icon(
                icon,
                color: color,
              ),
            ),
    );
  }
}
