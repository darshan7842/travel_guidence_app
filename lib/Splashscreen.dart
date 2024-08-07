import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'homescreen.dart';

class SplashScreen extends StatefulWidget
{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
{

  @override
  void initState()
  {
    // TODO: implement initState
    super.initState();

    Timer
      (
        Duration(seconds: 5), () =>
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()))
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      body: Center
        (
          child: Lottie.network
            (
            "https://darshan7842.000webhostapp.com/Travel_guidence_app/lottie/Animation%20-%202.json",
            // width: 250,
            // height: 250
          )

      ),
    ) ;
  }
}