import 'package:flutter/material.dart';
import 'package:design/utils/colors.dart';

class ProductColorCard extends StatelessWidget {
  int color;
  bool current;

  ProductColorCard({super.key, required this.color, required this.current});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25.0,
      height: 25.0,
      margin: EdgeInsets.only(right: 3.0),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: current?   Color.fromARGB(43, 0, 0, 0) : Colors.transparent, blurRadius: 5.0),
          ],
          color: Color(color),
          border: const Border(
            bottom: BorderSide(color: Colors.white, width: 5.0),
            top: BorderSide(color: Colors.white, width: 5.0),
            right: BorderSide(color: Colors.white, width: 5.0),
            left: BorderSide(color: Colors.white, width: 5.0),
          ),
          borderRadius: BorderRadius.circular(50.0)),
    );
  }
}
