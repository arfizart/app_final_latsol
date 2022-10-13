import '../constants/r.dart';
// import '../views/login_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../auth/path.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String route = "splash_screen";

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const PathTree()));
      // Navigator.of(context).pushReplacementNamed(LoginPage.route);
    });

    return Scaffold(
      backgroundColor: R.colors.primary,
      // appBar: AppBar(),
      body: Center(
        child: Image.asset(R.assets.icSplash),
      ),
    );
  }
}
