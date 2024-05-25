import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wallet_sha/shared/theme.dart';
import 'onboarding.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((_) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const OnBoardingPage()),
          (route) => false);
    });

    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Container(
          width: 155,
          height: 50,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img_logo_dark.png'),
            ),
          ),
        ),
      ),
    );
  }
}
