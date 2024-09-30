import 'package:flutter/material.dart';

class Reusable_Card extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final GestureTapCallback? onpress;

  Reusable_Card({required this.colour, this.cardChild, this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
