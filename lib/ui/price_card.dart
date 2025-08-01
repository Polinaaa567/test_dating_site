import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  final String count;
  final String price;
  final String? badgeText;

  const PriceCard({
    super.key,
    required this.count,
    required this.price,
    this.badgeText,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 33, 32, 32),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Color.fromARGB(255, 57, 55, 55),
              width: 1.5,
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    count,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 5),
                  Image.asset('assets/image/mask.png', width: 30),
                ],
              ),
              SizedBox(height: 10),
              Text(
                price,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        if (badgeText != null)
          Positioned(
            top: -10,
            child: Container(
              height: 20,
              width: 60,
              decoration: BoxDecoration(
                // shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.elliptical(60, 20)),
                gradient: RadialGradient(
                  colors: [Colors.yellow, Colors.orange, Colors.red],
                  center: Alignment.center,
                  radius: 0.8,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.withAlpha(100),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 0),
                  ),
                ],
              ),

              child: Center(
                child: Text(
                  badgeText!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
