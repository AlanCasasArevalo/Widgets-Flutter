import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String avatarAsset;

  const Avatar({Key? key, required this.size, required this.avatarAsset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          size * .5,
        ),
        child: Image.asset(
          avatarAsset,
          width: size,
          height: size,
        ),
      ),
    );
  }
}
