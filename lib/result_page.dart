import 'package:flutter/material.dart';
import 'package:untitled1/bottom_widget.dart';
import 'package:untitled1/calculator.dart';
import 'package:untitled1/input_page.dart';
import 'package:untitled1/reusable_card.dart';

class ResultPage extends StatelessWidget {
  static final String name = "/ResultPage";

  final Calculator calculator;

  const ResultPage({required this.calculator});

  @override
  Widget build(BuildContext context) {
    String bmi = calculator.calculateBMI();
    return Scaffold(
      appBar: AppBar(
        title: Text('result'.toUpperCase()),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Result',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: ReusableCard(
                  contentChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        calculator.getResult(),
                        style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        bmi,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 100,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        calculator.getInfoText(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  onPress: () {}),
            ),
          ),
          BottomWidget(
            text: 'Re-calculate'.toUpperCase(),
            onTap: () {
              Navigator.pop(
                context,
              );
            },
          )
        ],
      ),
    );
  }
}
