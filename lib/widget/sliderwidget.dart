import 'package:flutter/material.dart';

class SliderCountainer extends StatelessWidget {
  final Widget child;
  const SliderCountainer({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 250,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15), // Border radius
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  spreadRadius: 5, // Spread radius
                  blurRadius: 7, // Blur radius
                  offset: Offset(0, 3), // Offset
                ),
              ],
            ),
            child:child
            );
  }
}
