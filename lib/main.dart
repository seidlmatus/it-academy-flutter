import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'.toUpperCase()),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Container(
                  child: Text('Male'),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(color: Colors.blue),
                ),
                Container(
                  child: Text('FEMALE'),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(color: Colors.red),
                ),
              ],
            ),
            Text('02'),
            Text('03'),
            Text('04'),
          ],
        ),
      ),
    );
  }
}
