import 'package:empower_kids/screens/login.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:audioplayers/audioplayers.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    startTime();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AudioPlayer().play(AssetSource("intro.wav"));
    AudioPlayer().stop();
    AudioPlayer().dispose();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xffF4BB62),
          title: const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              "EMPOWER  KIDS",
              style: TextStyle(
                  fontSize: 30, letterSpacing: 4, fontFamily: 'times'),
            ),
          ),
          elevation: 0,
        ),
        body: AnimatedSplashScreen(
          centered: true,
          splash: Image.asset("assets/splash.jpg"),
          nextScreen: const login(),
          backgroundColor: const Color(0xffF4BB62),
          splashIconSize: double.infinity,
          splashTransition: SplashTransition.fadeTransition,
          animationDuration: const Duration(seconds: 2),
          disableNavigation: true,
        ),
      ),
    );
  }

  startTime() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const login()));
  }
}
