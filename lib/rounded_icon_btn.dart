import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPress;

  const RoundedIconButton({
    Key? key,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(icon),
      fillColor: Colors.redAccent,
      constraints: BoxConstraints.tightFor(width: 40.0, height: 40.0),
      shape: CircleBorder(),
    );
  }
}