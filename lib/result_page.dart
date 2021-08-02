import 'package:flutter/material.dart';
import 'package:untitled1/bottom_widget.dart';
import 'package:untitled1/calculator.dart';
import 'package:untitled1/input_page.dart';

class ResultPage extends StatelessWidget {
  static final String name = "/ResultPage";

  final Calculator calculator;

  const ResultPage({required this.calculator});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('result'.toUpperCase()),
      ),
      body: Column(
        children: [
          Text('${calculator.height}, ${calculator.weight}'),
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
