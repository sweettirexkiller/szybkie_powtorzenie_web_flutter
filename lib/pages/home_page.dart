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
                // // const MainDesktop(),
                // if (constraints.maxWidth >= kMinDesktopWidth)
                //   const MainDesktop()
                // else
                //   const MainMobile(),
                // // SKILLS
                // if(constraints.maxWidth >= kMinDesktopWidth)
                //   const SkillsDesktop()
                // else
                //   const SkillsMobile(),
                //
                // // PROJECTS
                // const ProjectsSection(),
                // // CONTACT
                Container(
                    padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                    color: Colors.blueGrey,
                    child: Column(
                      children: [
                        const Text(
                          "Get in touch",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 50),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 700.0),
                          child: const Row(
                            children: [
                              Flexible(
                                  child: CustomTextfield(
                                hintText: "Your Name",
                              )),
                              SizedBox(
                                width: 15,
                              ),
                              Flexible(
                                  child: CustomTextfield(
                                hintText: "Your email",
                              )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 700.0),
                          child: const CustomTextfield(
                            hintText: "Your message",
                            maxLines: 20,
                          ),
                        ),

                        // send button
                        const SizedBox(
                          height: 15,
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 700.0),
                          child: SizedBox(
                            width: double.maxFinite,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text("Get in touch")),
                          ),
                        ),
                      ],
                    )),
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
