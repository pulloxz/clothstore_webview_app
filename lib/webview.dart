import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();

    
    controller = WebViewController();
    controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    controller.loadRequest(
      Uri.parse('https://heartfelt-choux-58bb66.netlify.app'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(child: WebViewWidget(
          controller: controller,
        ),),
      ),
    );
  }
}
