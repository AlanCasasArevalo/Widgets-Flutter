import 'package:flutter/material.dart';

class MyAspectRatio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              'https://www.fayerwayer.com/resizer/Khft4HPwSZsHfQCGd4lT_ZXcClA=/800x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/FNOHDGI3YZG4HAPGTYX4LPMZWY.jpg',
              // height: 200,
              // width: double.infinity,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
    );
  }
}
