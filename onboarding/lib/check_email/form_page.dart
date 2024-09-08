import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onboarding/widgets/custom_button.dart';

import 'package:simple_shadow/simple_shadow.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 18, right: 40),
            child: const Text(
              'Please check your email for the instructions on how to reset your password.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff555555),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 20),
          SimpleShadow(
            opacity: 0.1,
            color: Colors.black,
            offset: const Offset(2, 2),
            sigma: 19,
            child: SvgPicture.asset(
              'images/check_email/envelope.svg',
            ),
          ),
          const SizedBox(height: 100),
          RichText(
            text: TextSpan(
              text: 'Back to ',
              style: DefaultTextStyle.of(context).style,
              children: const [
                TextSpan(
                    text: 'Sign In',
                    style: TextStyle(
                      color: Color(0xff00CEA6),
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
