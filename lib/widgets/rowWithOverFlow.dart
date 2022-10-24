import 'package:flutter/material.dart';

class MyRowWithOverFlow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Colors.black,
      ),
      child: Container(
        color: Colors.white,
        alignment: Alignment.centerLeft,
        child: Container(
          color: Colors.grey,
          width: 300,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
              SizedBox(
                width: 200,
                child: Text(
                  "Hola como va Hola como va Hola como va Hola como va Hola como va Hola como va Hola como va Hola como va Hola como va Hola como va Hola como va Hola como va ",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
