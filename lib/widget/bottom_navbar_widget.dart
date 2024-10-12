import 'package:flutter/material.dart';
import 'package:portfolio/screens/input_screen.dart';
import 'package:portfolio/screens/portfolio_screen.dart';
import '../helper/app_colors.dart';
import '../models/navbar_model.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';
class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);
  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}
class _BottomNavigationBarWidgetState
    extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    PortfolioScreen(),
    InputScreen(),
    ProfileScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.of(context).size.width / Data.length;
    return Column(
      children: [
        Expanded(
          child: IndexedStack(
            index: _selectedIndex,
            children: _screens,
          ),
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(Data.length, (index) {
                  final item = Data[index];
                  return GestureDetector(
                    onTap: () => _onItemTapped(index),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 6),
                        Icon(
                          item.icon,
                          color: _selectedIndex == index
                              ? AppColors.SelectedColor
                              : AppColors.unSelectedColor,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          item.label,
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            color: _selectedIndex == index
                                ? AppColors.SelectedColor
                                : AppColors.unSelectedColor,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
              Positioned(
                top: 2,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 2,
                  width: itemWidth -10,
                  margin: EdgeInsets.only(left: _selectedIndex * itemWidth +5),
                  decoration: BoxDecoration(
                    color: AppColors.SelectedColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
