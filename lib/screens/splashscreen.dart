import 'package:clothstore_webview_app/components/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        PageTransition(type: PageTransitionType.fade, child:  const LoadingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/clothstore-logo.png',
              height: 50,
            ),
            Image.asset('assets/Stylish_text.png', height: 50,),
          ],
        ),
      ),
    );
  }
}
