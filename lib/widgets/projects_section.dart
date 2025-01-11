import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import 'package:my_portfolio/widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          //Work projects title
          const Text(
            "Work Projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          // Work projects cards
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 950),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < profProjectUtils.length; i++)
                  ProjectCardWidget(
                    project: profProjectUtils[i],
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 120,
          ),
          //Practice projects title
          const Text(
            "Practice Projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          // Practice projects cards
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 950),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < pracProjectUtils.length; i++)
                  ProjectCardWidget(
                    project: pracProjectUtils[i],
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 120,
          ),
          //Flutter Widgets Title
          const Text(
            "Flutter Widgets",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          // Work projects cards
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 950),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < profProjectUtils.length; i++)
                  ProjectCardWidget(
                    project: profProjectUtils[i],
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 120,
          ),
          // Dart Core and OOPs title
          const Text(
            "Dart Core and OOPs",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          // Work projects cards
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 950),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < profProjectUtils.length; i++)
                  ProjectCardWidget(
                    project: profProjectUtils[i],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
