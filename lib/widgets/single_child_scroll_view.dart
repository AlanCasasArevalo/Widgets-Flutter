import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // SingleChildScrollView no puede tener unas dimensiones fijas dichas dimensiones
      // se las da el padre del SingleChildScrollView
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            18,
                (index) => Container(
              height: 100,
              color: Colors.primaries[index],
            ),
          ),
        ),
      )
    );
  }
}
