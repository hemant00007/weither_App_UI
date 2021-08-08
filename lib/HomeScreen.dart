import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Foreground.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery
        .of(context)
        .size
        .width;
    final height = MediaQuery
        .of(context)
        .size
        .height;
  return Stack(
    children: [
      Positioned(
        bottom: height/2,
        child: Image.network(
          'https://i.ibb.co/Y2CNM8V/new-york.jpg',
          height: height,
        ),
      ),Positioned(
        bottom: 0,
        child: Container(
          height: height/2.4,
          width: width,
          color: Color(0xFF2D2C35),
        ),
      ),
      Foreground()
    ],

  );
  }

}