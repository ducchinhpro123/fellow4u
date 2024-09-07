import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: const Alignment(0.5, -0.6),
                  child: SvgPicture.asset(
                    width: MediaQuery.of(context).size.width * 0.85,
                    'images/background.svg',
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.7, -0.7),
                  child: SvgPicture.asset('images/cloud_2.svg'),
                ),
                Align(
                  alignment: const Alignment(0.5, -0.2),
                  child: SvgPicture.asset(
                    'images/boy.svg',
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.4, -0.2),
                  child: SvgPicture.asset(
                    'images/girl.svg',
                  ),
                ),
                const Align(
                  alignment: Alignment(0.0, 0.4),
                  child: Text(
                    'Find a local guide easily',
                    style: TextStyle(
                      color: Color(0xff121212),
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment(0.0, 0.55),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(69, 0, 69, 0),
                    child: Text(
                      'With Fellow4U, you can find a local guide for you trip easily and explore as the way you want.',
                      style: TextStyle(
                        color: Color(0xff555555),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment(0, 0.7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.horizontal_rule, color: Color(0xff04EBBE)),
                      Icon(Icons.remove),
                      Icon(Icons.remove),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
