import 'package:flutter/material.dart';

class MyColumnCustom extends StatelessWidget {
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
            width: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Flexible(
                  child: FlutterLogo(
                    size: 100,
                  ),
                ),
                const Flexible(
                  child: FlutterLogo(
                    size: 200,
                  ),
                ),
                Container(
                  height: 100,
                  width: 300,
                  color: Colors.black,
                  child: const Text(
                    "Hola",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
