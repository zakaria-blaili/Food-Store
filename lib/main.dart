// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zfood/provider/cartModel.dart';
import 'package:zfood/screens/cart.dart';
import 'package:zfood/screens/home_page.dart';
import 'package:zfood/screens/splash_screen.dart';
import 'package:zfood/screens/login.dart';

import 'screens/signup.dart';


void main() {
  runApp(ChangeNotifierProvider(
        child:  MyApp(),
        create: (_) =>CartProvider() ,));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}
