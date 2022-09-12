import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webview_Screen extends StatefulWidget {
  Webview_Screen({Key? key}) : super(key: key);

  @override
  State<Webview_Screen> createState() => _Webview_ScreenState();
}

late WebViewController controller;

class _Webview_ScreenState extends State<Webview_Screen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        String? url = await controller.currentUrl();
        if (url == "https://flutter.dev/") {
          return true;
        } else {
          controller.goBack();
          return false;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Webview App",
            style: TextStyle(letterSpacing: 4, color: Colors.black),
          ),
        ),
        body: Center(
          child: WebView(
            initialUrl: "https://flutter.dev/",
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webviewcontroller) {
              controller = webviewcontroller;
            },
          ),
        ),
      ),
    );
  }
}
