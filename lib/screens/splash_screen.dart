// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:zfood/screens/login.dart';
import 'package:zfood/widgets/Font.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return EasySplashScreen(
      showLoader: false,
      title: Text('ZAFood',
          style:Macondo(35, Colors.black) ,),
      logo: Image.asset('images/splash.png',fit:BoxFit.fill),
      logoWidth: 150,
      navigator: LoginPage(),
      durationInSeconds: 6,
      gradientBackground: LinearGradient(
          end: Alignment.bottomCenter,
          begin: Alignment.topCenter,
          colors: [
            Color.fromARGB(223, 255, 182, 182),
            Color.fromARGB(255, 255, 17, 0),
            Color.fromARGB(223, 255, 182, 182),
          ]),
    );
  }
}
