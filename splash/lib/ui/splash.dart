import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splash/ui/home.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  /* @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 2),()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return Home();
    })));
  } */
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset('assets/images/loadinghc.gif'),
          ),

          SizedBox(height: 40.0,),
        ],),
    );
  }
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 10)).then((_){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Home())
      );
    });
  }
}