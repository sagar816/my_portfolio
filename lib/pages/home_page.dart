import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/project_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey =
      GlobalKey<ScaffoldState>(); // to programatically open drawer - define key
  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      //this constraints contain information about screen size or window size that can be used to manipulate UI
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : const DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //MAIN
            // if (constraints.maxWidth >= kMinDesktopWidth)
            //   const HeaderDesktop()
            // else
            //   HeaderMobile(
            //     onLogoTap: () {},
            //     onMenuTap: () {
            //       scaffoldKey.currentState?.openEndDrawer();
            //     },
            //   ),

            // // const MainDesktop(),
            // if (constraints.maxWidth >= kMinDesktopWidth)
            //   const MainDesktop()
            // else
            //   const MainMobile(),

            // //SKILLS
            // Container(
            //   width: screenWidth,
            //   padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
            //   color: CustomColor.bgLight1,
            //   child: Column(mainAxisSize: MainAxisSize.min, children: [
            //     //title
            //     const Text(
            //       "What I can do",
            //       style: TextStyle(
            //         fontSize: 24,
            //         fontWeight: FontWeight.bold,
            //         color: CustomColor.whitePrimary,
            //       ),
            //     ),
            //     const SizedBox(height: 50),

            //     // platforms and skills
            //     if (constraints.maxWidth >= kMedDesktopWidth)
            //       const SkillsDesktop()
            //     else
            //       const SkillsMobile(),
            //   ]),
            // ),

            //PROJECT
            Container(
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

                  // Work projects cards
                  ProjectCardWidget(
                    project: workProjectUtils.first,
                  )
                ],
              ),
            ),
            //CONTACT
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
            //FOOTER
            Container(
              height: 500,
              width: double.maxFinite,
            )
          ],
        ),
      );
    });
  }
}
