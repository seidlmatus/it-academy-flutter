import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final value = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => {print('Hello')},
                child: Container(
                  color: Colors.yellow,
                  alignment: Alignment.center,
                  child: Text(
                    'Hello  1 $value',
                    style: TextStyle(color: Colors.red, fontSize: 30.0),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text(
                  'Hello  2 $value',
                  style: TextStyle(color: Colors.red, fontSize: 20.0),
                ),
              ),
              Text(
                'Hello  3 $value',
                style: TextStyle(color: Colors.red, fontSize: 20.0),
              ),
              TextButton(
                onPressed: () => {print('Hello')},
                child: Text(
                  'BTN',
                  style: TextStyle(color: Colors.red, backgroundColor:Colors.green,fontSize: 20.0),
                ),
              ),
              Image.asset('assets/icons/app_icon.png')

            ],
          ),
        )));
  }
}
