import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/bg2.png'),
        Scaffold(
          body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 260,
                ),
                Container(
                  child: Image.asset('assets/images/logo2.png'),
                ),
                SizedBox(
                  height: 150,
                ),
                Container(
                  child: Image.asset('assets/images/Group 7.png'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
