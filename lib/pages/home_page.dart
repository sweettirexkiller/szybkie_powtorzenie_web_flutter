import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_portfolio/constants/colors.dart';
import 'package:test_portfolio/constants/nav_items.dart';

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
            Container(
                height: 60,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Colors.transparent,
                      CustomColor.secondaryColor
                    ]),
                    borderRadius: BorderRadius.circular(100)),
                child: Row(
                  children: [
                    const Text(
                      'Piotr Jankiewicz',
                      style: TextStyle(
                          color: CustomColor.secondaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const Spacer(),
                    for (int i = 0; i < navTitles.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              navTitles[i],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            )),
                      ),
                  ],
                )),
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
