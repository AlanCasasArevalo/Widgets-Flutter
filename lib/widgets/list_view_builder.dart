import 'package:flutter/material.dart';

class MyListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // Creando el ListView como un builder evitamos problemas de renderimiento, lo que permite crear listas muy muy grandes, con imagenes sonidos videos etc y solo renderiza las 3 celdas siguientes que serian mostradas, por tanto evita que el sistema se sobrecargue
      body: ListView.separated(
        separatorBuilder: (_, int index) {
          // Aqui podemos devolver cualquier tipo de widget, container, column, rows lo que queramos
          return Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          print("🧨 $index");
          return Container(
            height: 100,
            margin: EdgeInsets.all(8),
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(),
                Text("$index")
              ],
            ),
            alignment: Alignment.center,
          );
        },
        itemCount: 10000,
      ),
    );
  }
}
