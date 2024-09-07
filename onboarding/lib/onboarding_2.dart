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
                  alignment: const Alignment(0.5, -0.5),
                  child: SvgPicture.asset(
                    width: MediaQuery.of(context).size.width,
                    'images/page2/background.svg',
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.82, -0.67),
                  child: SvgPicture.asset(
                    'images/page2/shape_1.svg',
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.82, -0.69),
                  child: SvgPicture.asset(
                    'images/page2/shape_2.svg',
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.7, -0.8),
                  child: SvgPicture.asset('images/page2/cloud.svg'),
                ),
                Align(
                  alignment: const Alignment(0.0, -0.2),
                  child: SvgPicture.asset(
                    'images/page2/girl.svg',
                  ),
                ),
                const Align(
                  alignment: Alignment(0.0, 0.4),
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
                  alignment: Alignment(0.0, 0.55),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(59, 0, 59, 0),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
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
                      Icon(Icons.horizontal_rule),
                      Icon(Icons.remove, color: Color(0xff04EBBE)),
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
