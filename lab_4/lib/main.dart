import 'package:flutter/material.dart';
import 'package:lab_4/models/tour_model.dart';
import 'package:lab_4/widgets/tour_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<TourModel> tours = [
      TourModel(
          title: "Da Nang - Ba Na - Hoi An",
          imageUrl: "images/danang-bana-hoian.png",
          date: "Jan 30, 2020",
          duration: "3 days",
          price: 400),

      TourModel(
          title: "Melbourne - Sydney",
          imageUrl: "images/uc.png",
          date: "Jan 30, 2020",
          duration: "3 days",
          price: 600),
      TourModel(
          title: "Ha Noi - Ha Long Bay",
          imageUrl: "images/danang-bana-hoian.png",
          date: "Jan 30, 2022",
          duration: "7 days",
          price: 1400),
      TourModel(
          title: "Da Nang - Ba Na - Hoi An",
          imageUrl: "images/danang-bana-hoian.png",
          date: "Jan 30, 2020",
          duration: "3 days",
          price: 400),
    ];
    return MaterialApp(
      title: "Flutter",
      home: Scaffold(
        body: ListView.builder(
          itemCount: tours.length,
          itemBuilder: (context, index) {
            return TourWidget(tour: tours[index]);
          },
        ),
      ),
    );
  }
}
