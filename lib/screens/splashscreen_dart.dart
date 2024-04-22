import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resumewise/utils/all_colors.dart';
import 'package:resumewise/utils/text_style.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushNamed("homepage");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment(0, 0.85),
        children: [
          Center(
            child: Image.asset(
              "assets/icons/icon2.webp",
              height: 135,
            ),
          ),
          Text(
            "Resume Wise",
            style: TextStyle(
              fontSize: 22,
              color: primaryBlack,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
