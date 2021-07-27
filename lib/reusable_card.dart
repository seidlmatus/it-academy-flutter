import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget contentChild;

  const ReusableCard({
    Key? key,
    required this.contentChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: contentChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
