import 'package:flutter/material.dart';
import 'package:onboarding/check_email/form_page.dart';
import 'package:onboarding/widgets/top_bar.dart';

class CheckEmailPage extends StatelessWidget {
  const CheckEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TopBar(
            isSignUp: false,
            title: 'Check Email',
          ),
          //Expanded(child: FormPage()),
          FormPage(),
        ],
      ),
    );
  }
}
