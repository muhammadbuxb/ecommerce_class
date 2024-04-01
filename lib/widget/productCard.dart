import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final Function() onPress;
  const ProductCardWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 200,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            '$imageUrl',
            fit: BoxFit.fitHeight,
          ),
          Text(
            '$title',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ' PKR $price',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              IconButton(
                  onPressed: onPress,
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.amber,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
