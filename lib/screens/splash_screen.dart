import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:vanvex/screens/login_screen.dart';
import 'package:vanvex/screens/home_screen.dart';
import 'package:vanvex/screens/vistor_screen.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return EasySplashScreen(
      logo: Image.asset(
        "assets/images/logo-no-background.png",
      ),
      logoWidth: size.width / 3,
      backgroundColor: Colors.white,
      showLoader: true,
      loaderColor: Colors.grey.shade600,
      loadingText: Text(
        "Loading...",
        style: TextStyle(color: Colors.pink.shade400),
      ),
      navigator: const VistorScreen(),
      durationInSeconds: 5,
    );
  }
}
