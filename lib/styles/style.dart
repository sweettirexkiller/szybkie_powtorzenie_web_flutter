import 'package:flutter/material.dart';

import '../constants/colors.dart';

BoxDecoration kHeaderDecoration = BoxDecoration(
    gradient: const LinearGradient(
        colors: [
          Colors.transparent,
          CustomColor.secondaryColor
        ]
    ),
    borderRadius: BorderRadius.circular(100)
);
