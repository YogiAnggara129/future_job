import 'dart:async';

import 'package:flutter/material.dart';
import 'package:future_job/pages/started_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const GetStartedPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4242A4),
      body: Center(
        child: Image.asset(
          'assets/image_splash.png',
          width: MediaQuery.of(context).size.width * 0.30,
        ),
      ),
    );
  }
}