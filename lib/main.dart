import 'package:flutter/material.dart';
import 'package:webview_app/webview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter webview',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Webview_Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
