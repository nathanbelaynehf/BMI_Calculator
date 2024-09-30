import 'package:flutter/material.dart';

class RondedIconButton extends StatelessWidget {
  RondedIconButton({required this.icon, required this.onPresseds});

  final IconData? icon;
  final VoidCallback? onPresseds;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPresseds,
    );
  }
}
