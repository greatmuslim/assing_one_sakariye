import 'package:assing_one_sakariye/caller_info.dart';
import 'package:flutter/material.dart';
import 'incoming_call_screen.dart';
import 'main.dart';

class DialScreen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const DialScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Background image
              Image.asset(
                "assets/images/bck.jpeg",
                fit: BoxFit.cover,
              ),
              // Caller information
              const CallerInfo(),
              // Incoming call screen
              const IncomingCallScreen(),
              Positioned(
                bottom: 20,
                left: 20,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    // Handle back button press
                    Navigator.of(context).pop(const MainPage());
                  },
                  iconSize: 40,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
