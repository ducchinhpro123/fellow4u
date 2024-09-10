import 'package:flutter/material.dart';
import 'package:onboarding/widgets/custom_button.dart';

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
            margin: const EdgeInsets.only(left: 18, right: 85),
            child: const Text(
              'Input your email, we will send you an instruction to reset your password.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff555555),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            child: Container(
              margin: const EdgeInsets.only(right: 18, left: 18),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          //const CustomButton(
          //  title: 'SEND',
          //  marginLeft: 0,
          //),
          const SizedBox(height: 120),
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
