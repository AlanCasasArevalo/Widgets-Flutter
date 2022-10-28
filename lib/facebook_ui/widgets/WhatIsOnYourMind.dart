import 'package:flutter/material.dart';
import 'avatar.dart';

class WhatIsOnYourMind extends StatelessWidget {
  const WhatIsOnYourMind({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Avatar(size: 50, avatarAsset: 'assets/users/1.jpg'),
        SizedBox(
          width: 20,
        ),
        Text(
          "What's on your mind, Lisa?",
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Titillium',
            fontWeight: FontWeight.w100,
          ),
        ),
      ],
    );
  }
}
