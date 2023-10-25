import 'package:bmi_caculator/card.dart';
import 'package:bmi_caculator/card_content_gender.dart';
import 'package:bmi_caculator/card_content_height.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const inactiveCardColor = Color(0xff1D1E33);
const activeCardColor = Colors.black;
const inactiveIconColor = Color(0xff8D8E98);
const activeIconColor = Colors.white;
const inactiveTextCardColor = Color(0xff8D8E98);
const activeTextCardColor = Colors.white;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    } else if (gender == 2) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

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
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(1);
                        });
                      },
                      child: MyCard(
                        color: maleCardColor,
                        cardChild: const CardContentGender(
                            iconGender: FontAwesomeIcons.mars,
                            nameGender: "MALE",
                            inactiveTextCardColor: inactiveTextCardColor,
                            inactiveIconColor: inactiveIconColor),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(2);
                        });
                      },
                      child: MyCard(
                        color: femaleCardColor,
                        cardChild: const CardContentGender(
                            iconGender: FontAwesomeIcons.venus,
                            nameGender: "FEMALE",
                            inactiveTextCardColor: inactiveTextCardColor,
                            inactiveIconColor: inactiveIconColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: MyCard(
                color: Color(0xff1D1E33),
                cardChild:
                    CardContentHeight(nameData: "HEIGHT", resultData: "180"),
              ),
            ),
            const Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: MyCard(
                      color: Color(0xff1D1E33),
                      cardChild: CardContentWeightAge(
                        nameData: "WEIGHT",
                        resultData: "60",
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                      color: Color(0xff1D1E33),
                      cardChild: CardContentWeightAge(
                        nameData: "AGE",
                        resultData: "19",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: const Color(0xffEB1555),
              child: const Center(
                child: Text(
                  "CACULATOR YOUR BMI",
                  style: TextStyle(
                      color: Color(0xffFBD1DE),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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

// class CardContentHeight extends StatelessWidget {
//   const CardContentHeight(
//       {super.key, required this.nameData, required this.resultData});
//   final String nameData;
//   final String resultData;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Container(
//             child: Text(
//               nameData,
//               style: const TextStyle(
//                 color: Color(0xff8D8E98),
//                 fontWeight: FontWeight.w500,
//                 fontSize: 20,
//               ),
//             ),
//           ),
//           Container(
//             child: Text(
//               resultData,
//               style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 50,
//                   fontWeight: FontWeight.w600),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class CardContentGender extends StatelessWidget {
//   const CardContentGender(
//       {super.key,
//       required this.nameGender,
//       required this.iconGender,
//       required this.inactiveTextCardColor,
//       required this.inactiveIconColor});
//   final String nameGender;
//   final IconData iconGender;
//   final Color inactiveIconColor;
//   final Color inactiveTextCardColor;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Container(
//           child: Icon(
//             iconGender,
//             size: 80,
//             color: inactiveIconColor,
//           ),
//         ),
//         Container(
//           child: Text(
//             nameGender,
//             style: TextStyle(
//                 color: inactiveTextCardColor,
//                 fontWeight: FontWeight.w500,
//                 fontSize: 20),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class Card extends StatelessWidget {
//   const Card({super.key, required this.color, required this.cardChild});
//   final Color color;
//   final Widget cardChild;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: cardChild,
//     );
//   }
// }
//key class , flutter outline , chú ý Widget text
