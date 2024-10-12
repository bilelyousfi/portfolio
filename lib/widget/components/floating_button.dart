import 'package:flutter/material.dart';

import '../../helper/app_colors.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 130,
        height: 45,
        decoration: BoxDecoration(
          color: AppColors.SelectedColor,
          borderRadius: BorderRadius.circular(28),
        ),
        child: TextButton(
          onPressed: () {
            // Define action for the FAB
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent, // Make background transparent
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.filter_list_rounded, color: Colors.white),
              SizedBox(width: 8),
              Text(
                'Filter',
                style:
                TextStyle(color: Colors.white, fontSize: 16), // Text style
              ),
            ],
          ),
        ),
      ),
    );
  }
}
