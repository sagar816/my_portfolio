import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.fromLTRB(40, 40, 40, 0
          // horizontal: 40.0,
          // vertical: 30.0,
          ),
      height: screenHeight / 2,
      constraints: const BoxConstraints(minHeight: 560.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //avatar img
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: SizedBox(
              width: screenWidth / 2,
              height: screenWidth / 2, // Square shape for the image
              child: Image.asset(
                "assets/sagar_pic.jpg",
                fit: BoxFit.cover, // Fill the box without distortion
              ),
            ),
          ),

          // ClipRRect(
          //   borderRadius: BorderRadius.circular(15.0),
          //   child: SizedBox(
          //     width: screenWidth / 2, // Adjusted width based on screen width
          //     height:
          //         screenHeight / 3, // Adjusted height based on screen height
          //     child: ShaderMask(
          //       shaderCallback: (bounds) {
          //         return LinearGradient(colors: [
          //           CustomColor.scaffoldBg.withOpacity(0.3),
          //           CustomColor.scaffoldBg.withOpacity(0.5),
          //         ]).createShader(bounds);
          //       },
          //       blendMode: BlendMode.srcATop,
          //       child: Image.asset(
          //         "assets/sagar_pic.jpg",
          //         fit: BoxFit
          //             .contain, // Ensure the image fills the box without distortion
          //       ),
          //     ),
          //   ),
          // ),

          // ClipRRect(
          //     borderRadius: BorderRadius.circular(15.0),
          //     child: SizedBox.fromSize(
          //       size: const Size.fromRadius(150),
          //       child: ShaderMask(
          //         shaderCallback: (bounds) {
          //           return LinearGradient(colors: [
          //             CustomColor.scaffoldBg.withOpacity(0.3),
          //             CustomColor.scaffoldBg.withOpacity(0.5),
          //           ]).createShader(bounds);
          //         },
          //         blendMode: BlendMode.srcATop,
          //         child: Image.asset(
          //           "assets/sagar_pic.jpg",
          //           width: screenWidth,
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //     )),
          const SizedBox(
            height: 50,
          ),
          // intro text
          const Text(
            "Hi , I'm Sagar Tambatkar\nA Front-end Developer",
            style: TextStyle(
              fontSize: 22.0,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          // SizedBox(
          //   width: 300,
          //   // height: 100,
          //   child: OutlinedButton(
          //     onPressed: () {},
          //     child: const Text("Get in touch"),
          //   ),
          // ),
        ],
      ),
    );
  }
}
