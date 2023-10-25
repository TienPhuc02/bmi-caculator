import 'package:flutter/material.dart';

class CardContentHeight extends StatelessWidget {
  const CardContentHeight(
      {super.key, required this.nameData, required this.resultData});
  final String nameData;
  final String resultData;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              nameData,
              style: const TextStyle(
                color: Color(0xff8D8E98),
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            child: Text(
              resultData,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
