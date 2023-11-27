import 'package:bmi_caculator/input_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardContentWeightAge extends StatelessWidget {
  const CardContentWeightAge(
      {super.key, required this.nameData, required this.resultData});
  final String nameData;
  final String resultData;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Text(
            nameData,
            style: const TextStyle(
                color: inactiveTextCardColor,
                fontWeight: FontWeight.w500,
                fontSize: 20),
          ),
        ),
        Container(
          child: Text(
            resultData,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 50),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.grey,
                ),
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 50,
                child: const Icon(
                  FontAwesomeIcons.minus,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.grey,
                ),
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 50,
                child: const Icon(
                  FontAwesomeIcons.plus,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
