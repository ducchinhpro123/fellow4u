import 'package:flutter/material.dart';
import 'package:onboarding/onboarding_1.dart';
import 'package:onboarding/onboarding_2.dart';
import 'package:onboarding/onboarding_3.dart';
import 'package:onboarding/sign_up/sign_up_page.dart';
import 'package:onboarding/widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      // if pageController.page?.round() is not null then resolves page
      // else currentPage = 0
      setState(() {
        currentPage = _pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboadring',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        //appBar: AppBar(),
        body: PageView(
          controller: _pageController,
          children: const [
            SignUpPage(),
            Onboarding1(),
            Onboarding2(),
            Onboarding3(),
          ],
        ),
        floatingActionButton: currentPage < 2
            ? Container(
                //backgroundColor: Colors.white,
                margin: const EdgeInsets.only(bottom: 16.0),
                child: TextButton(
                  onPressed: () {
                    if (_pageController.hasClients) {
                      _pageController.nextPage(
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
              )
            : const CustomButton(
                title: 'GET STARTED',
              ),
      ),
    );
  }
}
