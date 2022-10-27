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
          ],
        ),
      ),
    );
  }
}
