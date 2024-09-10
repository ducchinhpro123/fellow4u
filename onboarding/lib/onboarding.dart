import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        backgroundColor: const Color(0xff00CEA6),
        body: Stack(
          children: [
            Align(
              alignment: const Alignment(1, -0.8),
              child: SvgPicture.asset('images/onboarding/cloud.svg'),
            ),
            Align(
              alignment: const Alignment(0.4, -0.56),
              child: SvgPicture.asset('images/onboarding/cloud_3.svg'),
            ),
            Align(
              alignment: const Alignment(-1, -0.7),
              child: SvgPicture.asset('images/onboarding/cloud_2.svg'),
            ),
            Align(
              alignment: const Alignment(-0.9, -0.5),
              child: SvgPicture.asset('images/onboarding/line.svg'),
            ),
            Align(
              alignment: const Alignment(0.2, -0.65),
              child: SvgPicture.asset('images/onboarding/plane.svg'),
            ),
            Center(
              child: Image.asset('images/onboarding/Logo.png'),
            ),
            Align(
              alignment: const Alignment(0.85, 0.9),
              child: SvgPicture.asset('images/onboarding/leaf_3.svg'),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset(
                'images/onboarding/Vector_4.svg',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
            ),
            Align(
              alignment: const Alignment(0.2, 0.85),
              child: SvgPicture.asset('images/onboarding/hat.svg'),
            ),
            Align(
              alignment: const Alignment(-0.9, 1),
              child: SvgPicture.asset(
                'images/onboarding/leaf_2.svg',
              ),
            ),
            Align(
              alignment: const Alignment(-0.7, 1),
              child: SvgPicture.asset('images/onboarding/leaf_1.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
