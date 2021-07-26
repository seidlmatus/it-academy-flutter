import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final value = 10;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
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
