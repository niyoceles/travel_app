import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';

class ResponseButton extends StatelessWidget {
  const ResponseButton({Key? key, this.isResponsive = false, this.width})
      : super(key: key);

  final bool? isResponsive;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.mainColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
        // Image.asset(''),
        // SizedBox(width: 25,),
        Container(
          padding: EdgeInsets.only(right: 10, left: 10),
          width: 50,
          child: const Text(
            ">>>",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}
