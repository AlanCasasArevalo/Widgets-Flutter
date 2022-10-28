import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:widgets/facebook_ui/facebook_ui.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: MyFacebookUI(),
    );
  }
}
