import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String avatarAsset;
  final double borderWidth;

  const Avatar(
      {Key? key,
      required this.size,
      required this.avatarAsset,
      this.borderWidth = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isFromNetwork = avatarAsset.startsWith('http://') || avatarAsset.startsWith('https://');
    final imageProvider =
        isFromNetwork ? NetworkImage(avatarAsset) : AssetImage(avatarAsset) as ImageProvider;

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: borderWidth,
          color: Colors.white,
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: imageProvider,
        ),
      ),
    );
  }
}
