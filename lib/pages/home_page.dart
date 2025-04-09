import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_portfolio/constants/colors.dart';
import 'package:test_portfolio/constants/nav_items.dart';
import 'package:test_portfolio/widgets/header_desktop.dart';
import 'package:test_portfolio/widgets/site_logo.dart';

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

            Container(
              height: 50,
              margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
              child: Row(
                children: [
                  SiteLogo(onTap: () {}),
                  const Spacer(),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                ],
              ),
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
