import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Column(
        children: [
          Container(
            height: 100,
            child: SingleChildScrollView(
              // El parametro physics tiene como valor por defecto AlwaysScrollableScrollPhysics(), adaptandose a cada una de las plataformas (Android y iOS)
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  18,
                  (index) => Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    color: Colors.primaries[index],
                    child: Text("El color $index"),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 350,
              child: SingleChildScrollView(
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
    ));
  }
}
