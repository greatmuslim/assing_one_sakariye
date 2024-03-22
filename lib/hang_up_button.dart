import 'package:flutter/material.dart';

class HangUpButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const HangUpButton({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        icon: const Icon(Icons.call_end),
        onPressed: () {
          // Add functionality to hang up the call
        },
        iconSize: 40,
        color: Colors.red,
        padding: const EdgeInsets.all(20),
      ),
    );
  }
}
