import 'package:ecommerce_mobile_app/constants.dart';
import 'package:ecommerce_mobile_app/models/products.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key, required this.text, });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 38,
          width: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kprimaryColor,
          ),
          alignment: Alignment.center,
          child: const Text(
            'Description',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          text,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
