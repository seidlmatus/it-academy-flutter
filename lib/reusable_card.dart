import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget contentChild;
  final Color color;
  final VoidCallback onPress;

  const ReusableCard({
    Key? key,
    required this.contentChild,
    this.color = Colors.blue,
    required this.onPress ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: contentChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
