import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/pages/productDetail.dart';
import 'package:ecommerce/widget/categoryContainer.dart';
import 'package:ecommerce/widget/productCard.dart';
import 'package:ecommerce/widget/sliderwidget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> imageList = [
    'https://cdn1.designhill.com/uploads/personal_designs/thumbs/4e81f0efcdff7d2b9cdef48be59cbe26-1a1a73f0871ed16b4f3686fe75e6cdaf15065941686569.png?ver=2.12.75',
    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/fashion-store-facebook-ad-banner-design-template-754121190affdca4b258b77da2984528_screen.jpg?ts=1655421066',
    'https://cdn1.designhill.com/uploads/personal_designs/thumbs/4e81f0efcdff7d2b9cdef48be59cbe26-1a1a73f0871ed16b4f3686fe75e6cdaf15065941686569.png?ver=2.12.75',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Ecommerce',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.green[300],
                      radius: 30,
                      child: Icon(Icons.person),
                    ),
                    Text(
                      'Name Test',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'test@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  // Handle item tap
                },
              ),
              ListTile(
                title: Text('Products'),
                onTap: () {
                  // Handle item tap
                },
              ),
            ],
          ),
        ),
        body: Container(
            color: Colors.grey.withOpacity(0.3),
            padding: EdgeInsets.all(16),
            child: ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),

                // Slider Container
                SliderCountainer(
                  child: CarouselSlider(
                    // Carousel Start
                    options: CarouselOptions(
                      height: 230,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayInterval: Duration(seconds: 4),
                      autoPlayAnimationDuration: Duration(milliseconds: 900),
                      autoPlayCurve: Curves.easeIn,
                      enableInfiniteScroll: true,
                    ),
                    items: imageList.map((imageUrl) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Image.network(
                            imageUrl,
                            fit: BoxFit.cover,
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                // Category Grid
                Container(
                  height: 250,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15), // Border radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.indigo.shade100, // Shadow color
                        spreadRadius: 5, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3), // Offset
                      ),
                    ],
                  ),
                  child: GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: [
                      CategoryContainer(),
                      CategoryContainer(),
                      CategoryContainer(),
                      CategoryContainer(),
                      CategoryContainer(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //  Product List Horizental
                Container(
                  height: 320,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ProductCardWidget(
                        imageUrl: 'assets/tshirt.jpeg',
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDetailPage(
                                    imageUrl: 'assets/tshirt.jpeg',
                                    title: 'T-Shirt',
                                    price: '999'),
                              ));
                        },
                        title: 'T-Shirt',
                        price: '999',
                      ),
                      ProductCardWidget(
                        imageUrl: 'assets/tshirt.jpeg',
                        onPress: () {
                           Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDetailPage(
                                    imageUrl: 'assets/tshirt.jpeg',
                                    title: 'Shirt',
                                    price: '699'),
                              ));
                        },
                        title: '',
                        price: '799',
                      ),
                      ProductCardWidget(
                        imageUrl: 'assets/tshirt.jpeg',
                        onPress: () {
                           Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDetailPage(
                                    imageUrl: 'assets/tshirt.jpeg',
                                    title: 'Pent',
                                    price: '979'),
                              ));
                        },
                        title: 'Pent',
                        price: '599',
                      ),
                      ProductCardWidget(
                        imageUrl: 'assets/tshirt.jpeg',
                        onPress: () {},
                        title: 'Sweet Shirt',
                        price: '1299',
                      ),
                      ProductCardWidget(
                        imageUrl: 'assets/tshirt.jpeg',
                        onPress: () {},
                        title: 'T-Shirt',
                        price: '999',
                      ),
                      ProductCardWidget(
                        imageUrl: 'assets/tshirt.jpeg',
                        onPress: () {},
                        title: 'Coat',
                        price: '5999',
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Kids',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'view all',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 320,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ProductCardWidget(
                        imageUrl: 'assets/tshirt.jpeg',
                        onPress: () {},
                        title: 'T-Shirt',
                        price: '999',
                      ),
                      ProductCardWidget(
                        imageUrl: 'assets/tshirt.jpeg',
                        onPress: () {},
                        title: 'Shirt',
                        price: '799',
                      ),
                      ProductCardWidget(
                        imageUrl: 'assets/tshirt.jpeg',
                        onPress: () {},
                        title: 'Pent',
                        price: '599',
                      ),
                      ProductCardWidget(
                        imageUrl: 'assets/tshirt.jpeg',
                        onPress: () {},
                        title: 'Sweet Shirt',
                        price: '1299',
                      ),
                      ProductCardWidget(
                        imageUrl: 'assets/tshirt.jpeg',
                        onPress: () {},
                        title: 'T-Shirt',
                        price: '999',
                      ),
                      ProductCardWidget(
                        imageUrl: 'assets/tshirt.jpeg',
                        onPress: () {},
                        title: 'Coat',
                        price: '5999',
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
