import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/cuppertino_scaffold.dart';
import 'widgets/custom_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Si en vez de usar MaterialApp usamos CupertinoApp TODOS los componentes que esten dentro de la aplicacion deberan
    // ser de tipo cupertino, no de material debido a que por incompatibilidades fallara
    return CupertinoApp(
      home: MyCupertinoScaffold(),
    );
  }
}
