import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [
              0.5,0.5
            ],
            colors: [
              Color(0xff5EE8C5),
              Color(0xff30BAd6)
            ],
          ),
        ),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
          Page1(),
        ],),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Background image
        const Background(),

        // Main content
        MainContent(),
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
        fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "11",
              style: textStyle,
            ),
            Text(
              "Miercoles",
              style: textStyle,
            ),
            Expanded(
              child: Container(),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              size: 100,
              color: Colors.white,
            ),
          ]),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff30BAd6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: const Image(image: AssetImage('assets/scroll-1.png')));
  }
}



class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAd6),
      child:  Center(child: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: TextButton(onPressed: null,
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xff30BAd6),
          shape: const StadiumBorder(),
        ),child: const Text("Bienvenido",style: TextStyle(color:Colors.white,fontSize: 20),),
        
        ),
      ),

      
      
      ),
    );
  }
}