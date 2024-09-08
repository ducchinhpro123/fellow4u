import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key, required this.isSignUp});
  final bool isSignUp;

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    List<String> options = ['Traveler', 'Guide'];
    String currentOption = options[0];
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: Stack(
        //fit: StackFit.loose,
        children: [
          ClipPath(
            clipper: InvertedBorderClipper(),
            child: Container(
              height: 190.0,
              width: double.infinity,
              color: const Color(0xff00CEA6),
            ),
          ),
          Align(
            alignment: const Alignment(-0.9, -0.55),
            child: SvgPicture.asset(
              'images/sign_up/icon.svg',
              //width: 20,
            ),
          ),
          Align(
            alignment: const Alignment(0.9, -0.55),
            child: SvgPicture.asset(
              'images/sign_up/plane.svg',
              //width: 20,
            ),
          ),
          Align(
            alignment: const Alignment(0.4, -0.3),
            child: SvgPicture.asset(
              'images/sign_up/cloud.svg',
              //width: 20,
            ),
          ),
          Align(
            alignment: const Alignment(0.3, 0),
            child: SvgPicture.asset(
              'images/sign_up/line.svg',
              //width: 20,
            ),
          ),
          Align(
            alignment: const Alignment(-0.9, 0.9),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: widget.isSignUp
                          ? const Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff121212),
                              ),
                            )
                          : const Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff121212),
                              ),
                            ),
                    ),
                  ],
                ),
                if (widget.isSignUp)
                  Row(
                    children: [
                      Radio(
                        value: options[0],
                        groupValue: currentOption,
                        onChanged: (value) {
                          setState(() {
                            currentOption = value.toString();
                          });
                        },
                      ),
                      const Text(
                        'Traveler',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333),
                        ),
                      ),
                      const SizedBox(width: 30),
                      Radio(
                        value: options[1],
                        groupValue: currentOption,
                        onChanged: (value) {
                          setState(() {
                            currentOption = value.toString();
                          });
                        },
                      ),
                      const Text(
                        'Guide',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InvertedBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    final path = Path();

    path.lineTo(0, height);
    //path.lineTo(width, height);
    path.quadraticBezierTo(width * 0.5, height - 100, width, height);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
