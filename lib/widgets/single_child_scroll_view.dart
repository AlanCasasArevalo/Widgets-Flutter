import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorsContainer = List.generate(
      18,
      (index) => Container(
        height: 100,
        width: 100,
        alignment: Alignment.center,
        color: Colors.primaries[index],
        child: Text("El color $index"),
      ),
    );

    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                FlutterLogo(
                  size: 90,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(8),
                    scrollDirection: Axis.horizontal,
                    child: Row(children: colorsContainer),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              // Este widget es mejor usarlo con pocos elementos, cuando se usan muchos elementos de renderizacion es mejor usar un ListView
              child: SingleChildScrollView(
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                reverse: false,
                padding: EdgeInsets.all(8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(18),
                        child: TextField(),
                      ),
                      ...colorsContainer,
                    ]),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
