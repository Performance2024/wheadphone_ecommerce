import 'dart:ui';

import 'package:design/pages/home.dart';
import 'package:design/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'dart:math' as math;

class StarterPage extends StatelessWidget {
  StarterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(color2),
        backgroundBlendMode: BlendMode.darken,
        gradient: LinearGradient(
            transform: GradientRotation(-math.pi / 4),
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [
              0.1,
              0.4,
              0.45,
            ],
            colors: [
              Color(color2),
              Color(color3),
              Color(color2),
            ]),
        image: const DecorationImage(
          image: AssetImage('lib/images/music_2.png'),
          alignment: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Image(
                        image: AssetImage('lib/images/headphone.png'),
                        width: 64.0,
                      ),
                      Text(
                        'WHeadphones',
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'Search for wireless\n Headphones',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20.0,
                            letterSpacing: 0.5,
                            wordSpacing: 5.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  //Logo

                  //image
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        border: Border(
                          top: BorderSide(color: Colors.white),
                          bottom: BorderSide(color: Colors.white),
                          left: BorderSide(color: Colors.white),
                          right: BorderSide(color: Colors.white),
                        )),
                    child: SlideAction(
                      onSubmit: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage())),
                      sliderButtonIcon: Icon(
                        Icons.chevron_right,
                        size: 35.0,
                      ),
                      innerColor: Colors.white,
                      outerColor: Colors.black12,
                      height: 50,
                      elevation: 0,
                      reversed: true,
                      sliderButtonIconPadding: 0,
                      sliderButtonIconSize: 17.14,
                      text: 'text',
                      textStyle:
                          const TextStyle(fontSize: 20, color: Colors.white),
                      alignment: Alignment.centerLeft,
                      enabled: true,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: const Row(
                          children: [
                            Text(
                              'Swipe to access',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
