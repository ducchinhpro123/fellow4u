import 'package:flutter/material.dart';
import 'package:onboarding/sign_up/form_page.dart';
import 'package:onboarding/widgets/top_bar.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TopBar(
            isSignUp: false,
          ),
          //Expanded(child: FormPage()),
          FormPage(),
        ],
      ),
    );
  }
}
