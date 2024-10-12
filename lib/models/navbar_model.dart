import 'package:flutter/material.dart';

List<BottomBarItems> Data = [
  BottomBarItems(label: "Home", icon: Icons.home_filled),
  BottomBarItems(label: "Portfolio", icon: Icons.business_center_sharp),
  BottomBarItems(label: "Input", icon: Icons.article),
  BottomBarItems(label: "Profile", icon: Icons.person),
];

class BottomBarItems {
  final IconData icon;
  final String label;
  BottomBarItems({
    required this.icon,
    required this.label,
  });
}
