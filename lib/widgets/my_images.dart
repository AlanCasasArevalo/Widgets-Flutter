import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Container(
              height: 200,
              width: 300,
              color: Colors.grey,
              child: Image.asset(
                'assets/images/wolverine_4.png',
                height: 600,
                width: 400,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
            ),
            Container(
              color: Colors.grey,
              child: Image.network(
                'https://www.fayerwayer.com/resizer/Khft4HPwSZsHfQCGd4lT_ZXcClA=/800x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/FNOHDGI3YZG4HAPGTYX4LPMZWY.jpg',
                // Primer valor _ context, segundo valor, la imagen ya descargada, tercer valor el evento de descarga,
                // una vez terminado queda en null por tanto ya podemos devolver la imagen que ya tenemos descargada
                loadingBuilder: (_, imageDownloaded, event) {
                  if (event == null) {
                    return imageDownloaded;
                  } else {
                    return Center(
                      child: const CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
            ),
            Center(
              // Se instala la dependencia de CachedNetworkImage, esta dependencia necesita que se realice un relanzado de la aplicacion debido a que utiliza codigo nativo para hacer el guardado de dicha imagen en los distintos dispositivos de plataforma, android y iOS
              child: CachedNetworkImage(
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error_outline),
                imageUrl:
                    'https://www.fayerwayer.com/resizer/Khft4HPwSZsHfQCGd4lT_ZXcClA=/800x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/FNOHDGI3YZG4HAPGTYX4LPMZWY.jpg',
              ),
            )
          ],
        ),
      ),
    );
  }
}
