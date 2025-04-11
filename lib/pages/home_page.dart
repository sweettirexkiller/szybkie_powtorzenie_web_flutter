import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_portfolio/constants/colors.dart';
import 'package:test_portfolio/constants/skill_items.dart';
import 'package:test_portfolio/widgets/header_desktop.dart';
import 'package:test_portfolio/widgets/main_desktop.dart';
import 'package:test_portfolio/widgets/skills_desktop.dart';

import '../constants/size.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_mobile.dart';
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
                // if (constraints.maxWidth >= kMinDesktopWidth)
                //   const HeaderDesktop()
                // else
                //   HeaderMobile(
                //     onLogoTap: () {},
                //     onMenuTap: () {
                //       scaffoldKey.currentState?.openEndDrawer();
                //     },
                //   ),
                //
                // // const MainDesktop(),
                // if (constraints.maxWidth >= kMinDesktopWidth)
                //   const MainDesktop()
                // else
                //   const MainMobile(),
                //
                // // SKILLS
                // if(constraints.maxWidth >= kMinDesktopWidth)
                //   const SkillsDesktop()
                // else
                //   const SkillsMobile(),

                // PROJECTS
                Container(
                    width: screenWidth,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        // work projects title
                        const Text(
                          "Work projects",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        ),
                        // work project cards
                        Container(
                          clipBehavior: Clip.antiAlias,
                          height: 280,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blueGrey.shade200,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [

                              Image.asset(
                                "projects/02.png",
                                height: 140,
                                width: 250,
                                fit: BoxFit.cover,
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: Text("Title",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600)),
                              ),
                              // subtitle
                              const Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Text("subTitle",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white)),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Text("About the poject description",
                                    style: TextStyle(fontSize: 10)),
                              ),

                              Spacer(),
                              // footer
                              Container(
                                color: Colors.grey,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 10),
                                child: Row(
                                  children: [
                                    const Text(
                                      "Available on:",
                                      style: TextStyle(
                                          color: CustomColor.secondaryColor,
                                          fontSize: 10),
                                    ),
                                    const Spacer(),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 6),
                                        child: InkWell(
                                          onTap: (){},
                                          child: Image.asset("android_icon.png",
                                              width: 17),
                                        )),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 6),
                                        child: InkWell(
                                          onTap: (){},
                                          child: Image.asset("ios_icon.png",
                                              width: 19),
                                        )),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 6),
                                        child: InkWell(
                                          onTap: (){},
                                          child: Image.asset("web_icon.png",
                                              width: 17),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                // CONTACT
                Container(
                  height: 500,
                  width: double.maxFinite,
                  color: Colors.blueGrey,
                ),
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
