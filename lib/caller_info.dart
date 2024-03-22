import 'package:flutter/material.dart';

class CallerInfo extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CallerInfo({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 80), // Adjust spacing as needed
        Text(
          "Sakariye",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        SizedBox(height: 8),
        Text(
          "00:00",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ],
    );
  }
}
