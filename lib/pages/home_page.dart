import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:test_portfolio/constants/colors.dart';
import 'package:test_portfolio/constants/skill_items.dart';
import 'package:test_portfolio/utils/project_utils.dart';
import 'package:test_portfolio/widgets/custom_textfield.dart';
import 'package:test_portfolio/widgets/header_desktop.dart';
import 'package:test_portfolio/widgets/main_desktop.dart';
import 'package:test_portfolio/widgets/skills_desktop.dart';

import '../constants/size.dart';
import '../widgets/contact_section.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_mobile.dart';
import '../widgets/project_card.dart';
import '../widgets/projects_section.dart';
import '../widgets/skills_mobile.dart';

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
                //
                // const MainDesktop(),
                if (constraints.maxWidth >= kMinDesktopWidth)
                  const MainDesktop()
                else
                  const MainMobile(),
                // SKILLS
                if(constraints.maxWidth >= kMinDesktopWidth)
                  const SkillsDesktop()
                else
                  const SkillsMobile(),

                // PROJECTS
                const ProjectsSection(),
                // CONTACT
                const ContactSection(),
                // FOOTER
                Container(
                  height: 500,
                  width: double.maxFinite,
                ),
              ],
            ));
      },
    );
  }
}

