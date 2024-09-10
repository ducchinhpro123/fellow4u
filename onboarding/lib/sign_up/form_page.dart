import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onboarding/widgets/custom_button.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FormPageState();
  }
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: const Text(
                  'Wellcome back, Yoo Jin',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(
                      0xff00CEA6,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            child: Container(
              margin: const EdgeInsets.only(right: 18, left: 18),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please insert some values';
                  }
                  return null;
                },
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
          SizedBox(
            child: Container(
              margin: const EdgeInsets.only(right: 18, left: 18),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please insert some values';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  label: Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 18),
            child: const Text(
              'Forgot password',
            ),
          ),
          const SizedBox(height: 20),
          CustomButton(
            title: 'SIGN IN',
            marginLeft: 0,
            formKey: _formKey,
          ),
          const Text('or sign in with'),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'images/sign_in/facebook.svg',
              ),
              const SizedBox(width: 15),
              SvgPicture.asset(
                'images/sign_in/line.svg',
              ),
              const SizedBox(width: 15),
              SvgPicture.asset(
                'images/sign_in/talk.svg',
              ),
            ],
          ),
          const SizedBox(height: 120),
          RichText(
            text: TextSpan(
              text: 'Don’t have an account? ',
              style: DefaultTextStyle.of(context).style,
              children: const [
                TextSpan(
                  text: 'Sign Up',
                  style: TextStyle(
                    color: Color(0xff00CEA6),
                    fontWeight: FontWeight.bold,
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
