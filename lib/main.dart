import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  child: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80,
                      ),
                      SizedBox(height: 15,),
                      Text(
                        'Male',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(color: Colors.blue),
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.venus,
                        size: 80,
                      ),
                      SizedBox(height: 15,),
                      Text(
                        'FEMALE',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(color: Colors.blue),
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
