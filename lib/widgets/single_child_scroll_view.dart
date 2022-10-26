import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Text("Hola"),
            Expanded(
              child: SizedBox(
                height: 350,
                child: SingleChildScrollView(
                  // Con el parametro reverse (por defecto) hacemos que el scroll empiece al final del listado de elementos (como en whatsapp o telegram)
                  reverse: false,
                  child: Column(
                    children: List.generate(
                      18,
                          (index) => Container(
                        height: 100,
                        alignment: Alignment.center,
                        color: Colors.primaries[index],
                            child: Text("El color $index"),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
