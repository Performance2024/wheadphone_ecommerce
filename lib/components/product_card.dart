import 'package:design/pages/product_details.dart';
import 'package:design/utils/colors.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double price;
  final bool isFavorite;

  const ProductCard(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.price,
      required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProductDetail())),
      child: Container(
        height: 500.0,
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.01),
                offset: const Offset(0.5, 0.5),
                blurRadius: 10.0,
              ),
            ],
            borderRadius: const BorderRadius.all(Radius.circular(20.0))),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  padding: EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: Color(isFavorite == true ? color1_1 : color6),
                      borderRadius: BorderRadius.circular(50.0)),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 16.0,
                  ))
            ],
          ),
          Image.asset(
            imageUrl,
            width: 80.0,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:
                    TextStyle(color: Color(color5), fontWeight: FontWeight.w500),
                textAlign: TextAlign.right,
              ),
              Text('\$${price}',
                  style: TextStyle(
                      color: Color(color2), fontWeight: FontWeight.bold)),
              const Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 12.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 12.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 12.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 12.0,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.yellow,
                    size: 12.0,
                  ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
