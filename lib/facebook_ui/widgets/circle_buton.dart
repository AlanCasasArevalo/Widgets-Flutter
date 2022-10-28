import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {

  final Color color;
  final IconData iconData;

  const CircleButton({
    Key? key, required this.color, required this.iconData,
  })
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
      ),
      child: Icon(
        iconData,
        color: Colors.white,
        size: 16,
      ),
    );
  }

}