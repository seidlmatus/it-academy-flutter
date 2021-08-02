import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {



  final String text;
  final VoidCallback onTap;

  const BottomWidget({
    Key? key, required this.text, required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.redAccent,
        width: double.infinity,
        height: 80,
        child: Center(
            child: Text(
              text.toUpperCase(),
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            )),
      ),
    );
  }
}