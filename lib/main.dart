import 'package:flutter/material.dart';
import 'package:iedu/login_page.dart';
//import 'package:device_preview/device_preview.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,

      home:  LoginPage(),
    );
  }
}
