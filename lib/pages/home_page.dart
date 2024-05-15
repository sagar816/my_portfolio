import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: CustomColor.scaffoldBg,
      endDrawer: Drawer( 
        backgroundColor: CustomColor.scaffoldBg,
        child: ListView( 
          children: [ 
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: IconButton(onPressed: (){
                  
                }, icon: Icon(Icons.close),),
              ),
            ),
            for(int i = 0; i < navIcons.length; i++)
            ListTile(
              contentPadding:const  EdgeInsets.symmetric(horizontal: 30.0),
              titleTextStyle: const TextStyle( 
                color: CustomColor.whitePrimary,
                fontWeight: FontWeight.w600,
                fontSize: 16
              ), 
              onTap: (){ 

              },
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
            )
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [ 
          //MAIN
          // HeaderDesktop(),
          HeaderMobile(
            onLogoTap: () {},
            onMenuTap: () {
              scaffoldKey.currentState?.openEndDrawer();
            },
          ),
          //SKILLS
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          //PROJECT
          Container(
            height: 500,
            width: double.maxFinite,
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
  }
}

