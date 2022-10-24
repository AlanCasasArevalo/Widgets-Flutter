import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(color: Colors.black),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 55),
        child: Center(
          child: Container(
            color: Colors.grey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 50,
                  color: Colors.pink,
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Container(
                  height: 50,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
