import 'package:design/components/brand_card.dart';
import 'package:design/components/product_card.dart';
import 'package:design/utils/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List products = [
    {
      'imageUrl': 'lib/images/headphones_pro.png',
      'name': 'Solo 49',
      'price': 200.0,
      'isFavorite': true
    },
    {
      'imageUrl': 'lib/images/headphones_pro.png',
      'name': 'JBLI 49',
      'price': 45.0,
      'isFavorite': false
    },
    {
      'imageUrl': 'lib/images/headphones_pro.png',
      'name': 'Slow 49',
      'price': 150.0,
      'isFavorite': false
    },
    {
      'imageUrl': 'lib/images/headphones_pro.png',
      'name': 'JB ACEL 49',
      'price': 1000.0,
      'isFavorite': false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(14.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            border: Border(
              top: BorderSide(color: Colors.white, width: 3.0),
              bottom: BorderSide(color: Colors.white, width: 3.0),
              left: BorderSide(color: Colors.white, width: 3.0),
              right: BorderSide(color: Colors.white, width: 3.0),
            ),
            color: Color(color2)),
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        color: Color(color1),
        child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)),
            child: NavigationBar(
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              backgroundColor: Colors.white,
              indicatorColor: Colors.transparent,
              elevation: 0.0,
              height: 60,
              selectedIndex: 0,
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                NavigationDestination(icon: Icon(Icons.favorite), label: ''),
                NavigationDestination(
                    icon: Icon(Icons.location_city), label: ''),
                NavigationDestination(icon: Icon(Icons.person), label: ''),
              ],
            )),
      ),
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
        leading: Container(
          margin: const EdgeInsets.only(left: 20.0, bottom: 0.0),
          child: Image.asset(
            'lib/images/more_1.png',
          ),
        ),
        leadingWidth: 40.0,
        actions: [
          Icon(
            Icons.search,
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
          padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Choose brand',
              style: TextStyle(
                  color: Color(color3),
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BrandCard(imageUrl: 'lib/images/best_beat.png'),
                BrandCard(imageUrl: 'lib/images/jbl.png'),
                BrandCard(imageUrl: 'lib/images/best_beat.png'),
              ],
            ),
            const SizedBox(
              height: 35.0,
            ),
            Text(
              'Beats Products',
              style: TextStyle(
                  color: Color(color3),
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
                child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 20.0,
                            mainAxisSpacing: 20.0,
                            childAspectRatio: 1 / 1.3,
                            crossAxisCount: 2),
                    itemBuilder: (context, index) => ProductCard(
                          imageUrl: products[index]['imageUrl'],
                          name: products[index]['name'],
                          price: products[index]['price'],
                          isFavorite: products[index]['isFavorite'],
                        )))
          ]),
        ),
      ),
    );
  }
}
