import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String avatarAsset;

  const Avatar({Key? key, required this.size, required this.avatarAsset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(avatarAsset),
        ),
      ),
    );
  }
}
