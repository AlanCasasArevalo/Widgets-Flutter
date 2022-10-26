import 'package:flutter/material.dart';

class MySafeArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Text("Hello")
            ],
          ),
        ),
      ),
    );
  }
}
