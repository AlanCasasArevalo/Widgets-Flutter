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
              ),
            ),
          ],
        ),
      )
    );
  }
}
