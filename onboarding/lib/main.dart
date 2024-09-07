import 'package:flutter/material.dart';
import 'package:onboarding/onboarding_1.dart';
import 'package:onboarding/onboarding_2.dart';
import 'package:onboarding/onboarding_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboadring',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: PageView(
          children: const [
            Onboarding1(),
            Onboarding2(),
            Onboarding3(),
          ],
        ),
        floatingActionButton: Container(
          //backgroundColor: Colors.white,
          margin: const EdgeInsets.only(bottom: 16.0),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'SKIP',
              style: TextStyle(
                color: Color(0xff777777),
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
