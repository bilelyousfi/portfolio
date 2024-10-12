
import 'package:flutter/material.dart';



class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Coming Soon.',
        style: TextStyle(
          fontSize: 24, // Adjust font size as needed
          color: Colors.black, // Change text color if needed
          fontWeight: FontWeight.bold, // Adjust font weight
        ),
      ),
    );
  }

}