import 'package:flutter/material.dart';

class MyCustomFonts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(8),
          children: [
            Text(
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Nonito',
                fontWeight: FontWeight.w300,
                // fontStyle: FontStyle.italic,
              ),
                '''
          Lorem Ipsum is simply dummy text of the printing and typesetting industry.
           Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
           when an unknown printer took a galley of type and scrambled it to make a type specimen book.
          '''
            ),
            Text(
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Titillium',
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
              ),
                '''
          Lorem Ipsum is simply dummy text of the printing and typesetting industry.
           Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
           when an unknown printer took a galley of type and scrambled it to make a type specimen book.
          '''
            ),
          ],
        ),
      ),
    );
  }
}
