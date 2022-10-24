import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(color: Colors.black),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 55),
        child: Center(
          child: Container(
            color: Colors.grey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /*
                Flex permite hacer "espacios" imaginarios realizando una especie de contenedor nuevo expandido
                Cuando sumamos un numero a ese flex lo que hacemos es crear un nuevo espacio dentro del expanded dividiendo el contenedor padre
                en los flex totales si tuvieramos 2 contenedores Expanded con 1 flex cada uno con diferentes numeros dichos numeros serian los
                espacios contenidos en la columna o en la fila
                 */
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 100,
                    color: Colors.cyan,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100,
                    color: Colors.yellowAccent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
