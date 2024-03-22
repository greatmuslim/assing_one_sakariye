import 'package:assing_one_sakariye/hang_up_button.dart';
import 'package:flutter/material.dart';

class IncomingCallScreen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const IncomingCallScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Card(
          elevation: 4,
          margin: const EdgeInsets.all(20),
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: 20),
                _buildActionButtons(context),
                const SizedBox(
                  height: 20,
                ),
                const HangUpButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildIconButton(Icons.add_call, "Add Call", () {}),
            _buildIconButton(Icons.pause_circle_filled, "Hold", () {}),
            _buildIconButton(Icons.bluetooth, "Bluetooth", () {}),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildIconButton(Icons.volume_up, "Speaker", () {}),
            _buildIconButton(Icons.mic_off, "Mute", () {}),
            _buildIconButton(Icons.dialpad, "Keypad", () {}),
          ],
        ),
      ],
    );
  }

  Widget _buildIconButton(IconData icon, String text, VoidCallback onPressed) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon),
          onPressed: onPressed,
          iconSize: 40,
          color: Colors.blueGrey,
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(fontSize: 14, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
