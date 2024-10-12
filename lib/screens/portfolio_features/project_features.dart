import 'package:flutter/material.dart';
import '../../helper/app_colors.dart';
import '../../widget/card_widget.dart';
import '../../widget/components/floating_button.dart';
import '../../widget/components/search_project.dart';
import '../../models/student_model.dart'; // Import your Student model and list

class ProjectFeatures extends StatefulWidget {
  const ProjectFeatures({Key? key}) : super(key: key);

  @override
  State<ProjectFeatures> createState() => _ProjectFeaturesState();
}

class _ProjectFeaturesState extends State<ProjectFeatures> {
  // This variable holds the search query
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SearchInput(
                onSearch: (query) {
                  setState(() {
                    searchQuery = query;
                  });
                },
              ),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      for (var student in studentSummaries.where((student) {

                        return student.studentName.toLowerCase().contains(searchQuery.toLowerCase()) ||
                            student.Text.toLowerCase().contains(searchQuery.toLowerCase());
                      }))
                        StudentCard(student: student),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Center(
              child: const FloatingActionButtonWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
