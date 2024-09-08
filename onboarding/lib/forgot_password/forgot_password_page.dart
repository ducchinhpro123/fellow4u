import 'package:flutter/material.dart';
import 'package:onboarding/forgot_password/form_page.dart';
import 'package:onboarding/widgets/top_bar.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TopBar(
            isSignUp: false,
            title: 'Forgot password',
          ),
          //Expanded(child: FormPage()),
          FormPage(),
        ],
      ),
    );
  }
}
