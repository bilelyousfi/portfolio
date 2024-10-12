import 'package:flutter/material.dart';
import 'package:portfolio/screens/portfolio_features/achievment_features.dart';
import 'package:portfolio/screens/portfolio_features/project_features.dart';
import 'package:portfolio/screens/portfolio_features/saved_features.dart';
import 'package:portfolio/screens/portfolio_features/shared_features.dart';
import '../models/tab_bar_model.dart';
import '../widget/components/app_bar.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabData.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: buildAppBar(context, _tabController),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabData.map((tab) {
          switch (tab.title) {
            case "Project":
              return const ProjectFeatures();
            case "Saved":
              return const SavedFeatures();
            case "Shared":
              return const SharedFeatures();
            case "Achievment":
              return const AchievmentFeatures();
            default:
              return Container(
                alignment: Alignment.center,
                child: Text(tab.title, style: const TextStyle(fontSize: 10)),
              );
          }
        }).toList(),
      ),
    );
  }
}
