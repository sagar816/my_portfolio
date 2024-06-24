import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/utils/project_utils.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({super.key, required this.project});
  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 400,
      width: 300,
      // height: 290,
      // width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //project image
          Image.asset(
            project.image,
            height: 250,
            width: 300,
            fit: BoxFit.cover,
          ),
          //title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: const TextStyle(
                  fontWeight: FontWeight.w600, color: CustomColor.whitePrimary),
            ),
          ),
          //subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              style: const TextStyle(
                  fontSize: 12, color: CustomColor.whiteSecondary),
            ),
          ),

          const Spacer(),

          //footer

          Container(
              color: CustomColor.bgLight1,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Row(
                children: [
                  const Text(
                    "Available on:",
                    style: TextStyle(
                        color: CustomColor.yellowSecondary, fontSize: 10),
                  ),
                  const Spacer(),
                  if (project.iosLink != null)
                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [project.iosLink]);
                      },
                      child: Image.asset(
                        "assets/vue.png",
                        width: 19,
                      ),
                    ),
                  if (project.androidLink != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 11),
                      child: InkWell(
                        onTap: () {
                          js.context.callMethod("open", [project.androidLink]);
                        },
                        child: Image.asset(
                          "assets/android.png",
                          width: 30,
                        ),
                      ),
                    ),
                  if (project.webLink != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 11),
                      child: InkWell(
                        onTap: () {
                          js.context.callMethod("open", [project.webLink]);
                        },
                        child: Image.asset(
                          "assets/app2.png",
                          width: 30,
                        ),
                      ),
                    ),
                  if (project.github != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 11),
                      child: InkWell(
                        onTap: () {
                          js.context.callMethod("open", [project.github]);
                        },
                        child: Image.asset(
                          "assets/gh5.png",
                          width: 30,
                        ),
                      ),
                    )
                ],
              )),
        ],
      ),
    );
  }
}
