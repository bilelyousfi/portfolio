import 'package:flutter/material.dart';

class AchievmentFeatures extends StatefulWidget {
  const AchievmentFeatures({Key? key}) : super(key: key);

  @override
  State<AchievmentFeatures> createState() => _AchievmentFeaturesState();
}

class _AchievmentFeaturesState extends State<AchievmentFeatures> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Achievment Soon',
        style: TextStyle(
          fontSize: 24, // Adjust font size as needed
          color: Colors.black, // Change text color if needed
          fontWeight: FontWeight.bold, // Adjust font weight
        ),
      ),
    );
  }
}
