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
      margin: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 30.0,
      ),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //avatar img
          ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: SizedBox.fromSize(
                size: const Size.fromRadius(150),
                child: ShaderMask(
                  shaderCallback: (bounds) {
                    return LinearGradient(colors: [
                      CustomColor.scaffoldBg.withOpacity(0.3),
                      CustomColor.scaffoldBg.withOpacity(0.5),
                    ]).createShader(bounds);
                  },
                  blendMode: BlendMode.srcATop,
                  child: Image.asset(
                    "assets/sagar_pic.jpg",
                    width: screenWidth,
                  ),
                ),
              )),
          const SizedBox(
            height: 30,
          ),
          // intro text
          const Text(
            "Hi, I'm Sagar Tambatkar\nA Front-end Developer",
            style: TextStyle(
              fontSize: 24.0,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 300,
            child: OutlinedButton(
              onPressed: () {},
              child: const Text("Get in touch"),
            ),
          ),
        ],
      ),
    );
  }
}
