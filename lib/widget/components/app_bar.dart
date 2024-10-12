import 'package:flutter/material.dart';
import '../../helper/app_colors.dart';
import '../../models/tab_bar_model.dart';

AppBar buildAppBar(BuildContext context, TabController tabController) {
  return AppBar(
    elevation: 0,
    centerTitle: false,
    leadingWidth: 0,
    title: const Text(
      'Portfolio',
      style: TextStyle(
        color: AppColors.blackColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    actionsIconTheme: IconThemeData(
      color: Theme.of(context).iconTheme.color,
    ),
    actions: [
      IconButton(
        onPressed: () {
          print("Shopping Bag tapped!");


        },
        icon: const Icon(Icons.shopping_bag, color: AppColors.SelectedColor),
      ),
      IconButton(
        onPressed: () {
          print(" Notifications  tapped!");

        },
        icon: const Icon(Icons.notifications, color: AppColors.SelectedColor),
      ),
    ],
    bottom: TabBar(
      controller: tabController,
      isScrollable: true,
      tabs: tabData.map((tab) {
        return Tab(
          child: Container(
            child: Text(
              tab.title,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'Roboto',
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        );
      }).toList(),
      labelColor: AppColors.SelectedColor,
      indicatorColor: AppColors.SelectedColor,
    ),
  );
}
