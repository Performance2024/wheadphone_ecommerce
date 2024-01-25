import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  final String imageUrl;

  const BrandCard({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 90.0,
      padding: EdgeInsets.symmetric(vertical: 15.0),
      decoration: const BoxDecoration(
          color: Colors.white,
           boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.01),
              offset: const Offset(0.5, 0.5),
              blurRadius: 10.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      child: Image.asset(imageUrl),
    );
  }
}
