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
    final PageController pageController = PageController();

    return MaterialApp(
      title: 'Onboadring',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: PageView(
          controller: pageController,
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
            onPressed: () {
              if (pageController.hasClients) {
                pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut);
              }
            },
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
