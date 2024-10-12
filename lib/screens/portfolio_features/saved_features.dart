import 'package:flutter/material.dart';

class SavedFeatures extends StatefulWidget {
  const SavedFeatures({Key? key}) : super(key: key);

  @override
  State<SavedFeatures> createState() => _SavedFeaturesState();
}

class _SavedFeaturesState extends State<SavedFeatures> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Saved Soon',
        style: TextStyle(
          fontSize: 24, // Adjust font size as needed
          color: Colors.black, // Change text color if needed
          fontWeight: FontWeight.bold, // Adjust font weight
        ),
      ),
    );
  }
}
