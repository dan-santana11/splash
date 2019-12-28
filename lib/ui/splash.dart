import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_mega_filmes/ui/home.dart';
import 'package:flutter_mega_filmes/ui/loader_animator.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 6),()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return Home();
    })));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(20, 26, 50, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Image.asset('images/splash-hurst.png'),
        SizedBox(height: 40.0,),
        Loading(
          radius: 15.0,
          dotRadius: 6.0,
        )
      ],),
    );
  }
}