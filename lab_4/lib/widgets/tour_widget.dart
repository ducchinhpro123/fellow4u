import 'package:flutter/material.dart';
import 'package:lab_4/models/tour_model.dart';

class TourWidget extends StatefulWidget {
  const TourWidget({super.key, required this.tour});

  final TourModel tour;

  @override
  State<StatefulWidget> createState() {
    return TourWidgetState();
  }
}

class TourWidgetState extends State<TourWidget> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(widget.tour.imageUrl, fit: BoxFit.contain, width: double.infinity),
                const Positioned(
                  left: 10,
                  bottom: 10,
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.tour.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isFavourite = !isFavourite;
                          });
                        },
                        child: isFavourite
                            ? const Icon(Icons.favorite_rounded,
                                color: Colors.red)
                            : const Icon(Icons.favorite_outline),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(Icons.calendar_month),
                      const SizedBox(width: 5),
                      Text(widget.tour.date),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.timer),
                              const SizedBox(width: 5),
                              Text(widget.tour.duration),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                             "\$${widget.tour.price}",
                            style: const TextStyle(
                              color: Color(0xff00CEA6),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
