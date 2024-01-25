import 'package:design/components/brand_card.dart';
import 'package:design/components/product_card.dart';
import 'package:design/components/product_color_card.dart';
import 'package:design/utils/colors.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0.0,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 70.0,
        title: Column(children: [
          const Image(
            image: AssetImage('lib/images/headphone_1.png'),
            width: 30.0,
          ),
          Text(
            'WHeadphones',
            style: TextStyle(
                color: Color(color1_2),
                fontSize: 15.0,
                fontWeight: FontWeight.bold),
          ),
        ]),
        leading: GestureDetector(
          onTap: ()=>Navigator.of(context).pop(context),
          child: Container(
            margin: const EdgeInsets.only(left: 20.0, bottom: 0.0),
            child: Icon(
              Icons.arrow_back,
              color: Color(color1_2),
              weight: 30.0,
            ),
          ),
        ),
        leadingWidth: 40.0,
        actions: [
          Icon(
            Icons.shopping_bag_outlined,
            color: Color(color1_2),
            weight: 30.0,
          ),
          const SizedBox(
            width: 15.0,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Color(color1),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color(color1)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 30.0, bottom: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'lib/images/headphones_pro.png',
                                  width: 170.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15.0,
                                        ),
                                        Icon(
                                          Icons.star_border,
                                          color: Colors.yellow,
                                          size: 15.0,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text('Beats Solo3 Headphones'),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      '\$249.6',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(color3)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50.0)),
                          child: Icon(
                            Icons.chevron_right,
                            color: Color(color3),
                          ),
                        )
                      ]),
                ),
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Colors',
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Color(color3),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            ProductColorCard(
                              color: color3,
                              current: true,
                            ),
                            ProductColorCard(
                              color: 0xFFE91E63,
                              current: false,
                            ),
                            ProductColorCard(
                              color: color1_2,
                              current: false,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Details',
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Color(color3),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Le blend mode (mode de fusion) est une propriété utilisée dans le domaine de la conception graphique et du rendu d'images pour déterminer comment les pixels d'une image source doivent être",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Color(color3),
                              fontWeight: FontWeight.normal),
                        ),
                      SizedBox(height: 30.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () => print('Add'),
                              child: Text(
                                'Add to Cart',
                                style: TextStyle(color: Color(color1_1)),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Color(color1)),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        vertical: 15.0, horizontal: 40.0)),
                              ),
                            ),
                            TextButton(
                              onPressed: () => print('Add'),
                              child: Text(
                                'Buy Now',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Color(color2)),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        vertical: 18.0, horizontal: 50.0)),
                                        side: MaterialStateProperty.all(BorderSide(
                                          color: Colors.white,
                                          width: 5.0
                                        ))
                              ),
                            )
                          ],
                        ),
                      ]),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
