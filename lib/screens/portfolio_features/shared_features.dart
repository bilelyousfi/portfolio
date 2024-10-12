import 'package:flutter/material.dart';

class SharedFeatures extends StatefulWidget {
  const SharedFeatures({Key? key}) : super(key: key);

  @override
  State<SharedFeatures> createState() => _SharedFeaturesState();
}

class _SharedFeaturesState extends State<SharedFeatures> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Shared Soon',
        style: TextStyle(
          fontSize: 24, // Adjust font size as needed
          color: Colors.black, // Change text color if needed
          fontWeight: FontWeight.bold, // Adjust font weight
        ),
      ),
    );
  }
}
