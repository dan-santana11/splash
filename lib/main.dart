import 'package:flutter/material.dart';
import 'package:flutter_mega_filmes/ui/splash.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hurst Capital',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}