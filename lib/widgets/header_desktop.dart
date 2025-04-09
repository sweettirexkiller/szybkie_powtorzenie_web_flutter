import 'package:flutter/material.dart';
import 'package:test_portfolio/widgets/site_logo.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        width: double.maxFinite,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Colors.transparent, CustomColor.secondaryColor]),
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          children: [
            SiteLogo(onTap: () {}),
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
        ));
  }
}
