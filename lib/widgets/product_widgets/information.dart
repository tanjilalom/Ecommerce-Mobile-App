import 'package:ecommerce_mobile_app/constants.dart';
import 'package:ecommerce_mobile_app/models/products.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$${product.price}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 22,
                      decoration: BoxDecoration(
                        color: kprimaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding:
                      const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          const Icon(
                            Ionicons.star,
                            size: 13,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            product.rate.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '(320 Reviews)',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    )
                  ],
                )
              ],
            ),
            const Spacer(),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Seller: ",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  TextSpan(
                    text: "Tariqul Islam",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
