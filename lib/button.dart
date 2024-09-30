import 'package:flutter/material.dart';
import 'constants.dart';

class bottomB extends StatelessWidget {
  bottomB({
    Key? key,
    required this.ontap,
    required this.buttonTitle,
  }) : super(key: key);

  final Function ontap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ontap(),
      child: Container(
        child: Center(child: Text(buttonTitle, style: labelTextStyle3)),
        color: bottomColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        height: bottomContainerheight,
        width: double.infinity,
      ),
    );
  }
}
