import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    var boxDecoration = const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2,0.8],
          colors: [
            Color(0xff2E305F),
            Color(0xff202333),
          ]


        ),
      );
    return Stack(
      children:[ 
        // Purple Gradient
        Container(
        decoration: boxDecoration,  
      ),
      //Pink box
      Positioned(
        top: -100,
        left: -30,
        child: _Pinkbox()),
      ],
    );
  }
}


class _Pinkbox extends StatelessWidget {
  const _Pinkbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi/5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
                Color.fromRGBO(236, 98, 188, 1),
                Color.fromRGBO(241, 142, 172, 1),
            ],
          ),
    
        ),
      ),
    );
  }
}