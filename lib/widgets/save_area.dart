import 'package:flutter/material.dart';

class MySafeArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        width: double.infinity,
        height: double.infinity,
        // Haciendo que el SafeArea contenga el hijo Column hacemos que se vea mejor la imagen
        child: SafeArea(
          // Con el parametro bottom (por defecto a true) habilitamos el safearea inferior o no
          bottom: false,
          child: Column(
            children: [
              Text("Hello"),
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
