import 'package:flutter/material.dart';

class RoundCustomButton extends StatelessWidget {
  final IconData icon;
  final Color fillColor;
  final Color borderColor;
  const RoundCustomButton(
      {super.key,
      required this.borderColor,
      required this.fillColor,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.15,
      height: size.height * 0.08,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
          border: Border.all(color: borderColor)),
      child: Icon(icon),
    );
  }
}
