import 'package:flutter/material.dart';

class MyColumnFlexible extends StatelessWidget {
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
            width: 300,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.red,
                  child: Text("""
                  Hello amundio,
                  Hello amundio,
                  Hello amundio,
                  Hello amundio,
                  Hello amundio,
                  Hello amundio,
                  Hello amundio,
                  Hello amundio,
                  Hello amundio,
                  Hello amundio,
                  Hello amundio,
                  Hello amundio,
                  Hello amundio,
                  Hello amundio,
                  Hello amundio,
                  Hello amundio,
                  Hello amundio,
                  Hello amundio,
                  Hello amundio,
                  Hello amundio,
                  Hello amundio,
                  """),
                ),
                Flexible(
                  child: Container(
                    height: 200,
                    color: Colors.cyan,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
