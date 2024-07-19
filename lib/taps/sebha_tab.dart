import 'package:flutter/material.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,

      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Image.asset(
                'assets/images/head_sebha_logo.png',
                height: 105,

              ),
            ),Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Image.asset(
                'assets/images/body_sebha_logo.png',
                height: 234,
              ),
            ),
          ],
        ),

    ],);
  }
}
