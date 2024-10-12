import 'package:flutter/material.dart';

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30, // Height of the button
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFFF39519), // First color
            const Color(0xFFFFCD67), // Second color
          ],
        ),
        borderRadius: BorderRadius.circular(5), // All corners rounded
      ),
      child: TextButton(
        onPressed: () {
          // Define button action
        },
        child: const Text(
          'A', // Button text
          style: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
