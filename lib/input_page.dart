import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Container(
              child: const Icon(FontAwesomeIcons.bars, color: Colors.white),
            ),
            Container(
              margin: const EdgeInsets.only(left: 70),
              child: const Text("BMI CACULATOR"),
            ),
          ],
        ),
      ),
      body: const SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Card(color: Color(0xff1D1E33)),
                  ),
                  Expanded(
                    child: Card(color: Color(0xff1D1E33)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Card(color: Color(0xff1D1E33)),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Card(color: Color(0xff1D1E33)),
                  ),
                  Expanded(
                    child: Card(color: Color(0xff1D1E33)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
//key class , flutter outline , chú ý Widget text
