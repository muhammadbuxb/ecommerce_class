import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String price;
  const ProductDetailPage(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.price});
  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        color: Colors.grey.withOpacity(0.3),
        child: ListView(
          children: [
            Container(
              height: 280,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)), // Border radius
                boxShadow: [
                  BoxShadow(
                    color: Colors.indigo.shade100, // Shadow color
                    spreadRadius: 5, // Spread radius
                    blurRadius: 7, // Blur radius
                    offset: const Offset(0, 3), // Offset
                  ),
                ],
              ),
              child: Image.asset(
                '${widget.imageUrl}',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 60),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)), // Border radius
              ),
              child: Column(
                children: [
                  Text(
                    widget.title,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        ' PKR ${widget.price}',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Padding: Adds padding around its child widget.Expanded: A widget that expands a child of a Row, Column, or Flex to fill the available space along the main axis.Flexible: A widget that controls how a child of a Row, Column, or Flex flexes its children along the main axis.Spacer: A widget that creates an adjustable, empty space between its siblings.Divider: A thin horizontal line used to separate content.RichText:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width - 80,
                        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_cart_checkout_rounded,
                              size: 30,
                            ),
                            Text(
                              'Add to Cart',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
