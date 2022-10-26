import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Se puede usar un SizedBox si se quiere tener una vista que contenga el SingleChildScrollView con un tamaño determinado
      body: SizedBox(
        height: 350,
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
              18,
                  (index) => Container(
                height: 100,
                color: Colors.primaries[index],
              ),
            ),
          ),
        ),
      )
    );
  }
}
