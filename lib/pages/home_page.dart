import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_portfolio/constants/colors.dart';
import 'package:test_portfolio/constants/nav_items.dart';
import 'package:test_portfolio/widgets/header_desktop.dart';
import 'package:test_portfolio/widgets/site_logo.dart';

import '../styles/style.dart';
import '../widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.backgroundColor,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // MAIN
            // const HeaderDesktop(),
            HeaderMobile(
              onLogoTap: null,
              onMenuTap: (){},
            ),

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
  }
}
