import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:onboarding/widgets/custom_button.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

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
                  alignment: const Alignment(0.5, -0.7),
                  child: SvgPicture.asset(
                    width: MediaQuery.of(context).size.width,
                    'images/page3/background.svg',
                  ),
                ),
                const Align(
                  alignment: Alignment(0.0, 0.6),
                  child: Text(
                    'Many tours around the world',
                    style: TextStyle(
                      color: Color(0xff121212),
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment(0.0, 0.8),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(59, 0, 59, 0),
                    child: Text(
                      'Fellow4U helps you save time and get offers from hundred local guides that suit your trip.',
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
                  alignment: Alignment(0, 0.9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.horizontal_rule),
                      Icon(Icons.remove),
                      Icon(Icons.remove, color: Color(0xff04EBBE)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //const CustomButton(
          //  title: 'GET STARTED',
          //  marginLeft: 31,
          //),
        ],
      ),
    );
  }
}
