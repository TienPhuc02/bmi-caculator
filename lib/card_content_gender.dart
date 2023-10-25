import 'package:flutter/material.dart';

class CardContentGender extends StatelessWidget {
  const CardContentGender(
      {super.key,
      required this.nameGender,
      required this.iconGender,
      required this.inactiveTextCardColor,
      required this.inactiveIconColor});
  final String nameGender;
  final IconData iconGender;
  final Color inactiveIconColor;
  final Color inactiveTextCardColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Icon(
            iconGender,
            size: 80,
            color: inactiveIconColor,
          ),
        ),
        Container(
          child: Text(
            nameGender,
            style: TextStyle(
                color: inactiveTextCardColor,
                fontWeight: FontWeight.w500,
                fontSize: 20),
          ),
        ),
      ],
    );
  }
}
