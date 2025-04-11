import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_portfolio/constants/colors.dart';
import 'package:test_portfolio/constants/nav_items.dart';
import 'package:test_portfolio/widgets/header_desktop.dart';
import 'package:test_portfolio/widgets/main_desktop.dart';
import 'package:test_portfolio/widgets/site_logo.dart';

import '../constants/size.dart';
import '../styles/style.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
            key: scaffoldKey,
            backgroundColor: CustomColor.backgroundColor,
            endDrawer: constraints.maxWidth >= kMinDesktopWidth
                ? null
                : const DrawerMobile(),
            body: ListView(
              scrollDirection: Axis.vertical,
              children: [
                // MAIN
                if (constraints.maxWidth >= kMinDesktopWidth)
                  const HeaderDesktop()
                else
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),

                // const MainDesktop(),
                if (constraints.maxWidth >= kMinDesktopWidth)
                  const MainDesktop()
                else
                  const MainMobile(),

                // SKILLS
                Container(
                  height: 500,
                  width: double.maxFinite,
                ),
                // PROJECTS
                Container(
                  height: 500,
                  color: Colors.blueGrey,
                  width: double.maxFinite,
                ),
                // CONTACT
                Container(
                  height: 500,
                  width: double.maxFinite,
                ),
                // FOOTER
                Container(
                  height: 500,
                  color: Colors.blueGrey,
                  width: double.maxFinite,
                ),
              ],
            ));
      },
    );
  }
}
