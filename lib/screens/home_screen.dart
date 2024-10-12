import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Coming Soon',
        style: TextStyle(
          fontSize: 24, // Adjust font size as needed
          color: Colors.black, // Change text color if needed
          fontWeight: FontWeight.bold, // Adjust font weight
        ),
      ),
    );
  }

}