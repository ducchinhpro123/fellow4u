import 'package:flutter/material.dart';
import 'package:onboarding/sign_up/form_page.dart';
import 'package:onboarding/widgets/top_bar.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TopBar(
            isSignUp: true,
            title: 'Sign In',
          ),
          //Expanded(child: FormPage()),
          FormPage(),
        ],
      ),
    );
  }
}
