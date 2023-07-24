// import 'package:flutter/cupertino.dart';
import 'dart:developer';

import 'package:chat_karo/api/apis.dart';
import 'package:chat_karo/main.dart';
import 'package:chat_karo/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_screen.dart';

//splash screen
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // bool _isAnimate = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      // setState(() {
      //   _isAnimate = true;
      // });

      //Exit full screen
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.white,
            statusBarColor: Colors.white),
      );

      if (APIs.auth.currentUser != null) {
        log('\nUser:${APIs.auth.currentUser}');
        //navigate to home screen
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const HomeScreen()));
      } else {
        //navigate to login screen
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const LoginScreen()));
      }
      //navigate to login screen
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    //initializing media query (for getting device screen size)
    mq = MediaQuery.of(context).size;

    return Scaffold(
      //appbar
      appBar: AppBar(
        // leading: const Icon(CupertinoIcons.home),
        automaticallyImplyLeading: false,
        title: const Text(
          "Welcome to Chat Karo",
        ),
        backgroundColor: Colors.white,
      ),
      //body
      body: Stack(children: [
        //app logo
        Positioned(
          top: mq.height * .15,
          right: mq.width * .25,
          width: mq.width * .5,
          // duration: const Duration(seconds: 1),
          child: Image.asset('assets/images/icon.png'),
        ),
        //google login button
        Positioned(
          bottom: mq.height * .15,
          // left: mq.width * .05,
          width: mq.width,
          // height: mq.height * .06,
          child: const Text(
            'MADE IN INDIA WITH ❤️',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
              letterSpacing: .5,
            ),
          ),
        ),
      ]),
    );
  }
}
