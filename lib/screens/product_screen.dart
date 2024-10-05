import 'package:ecommerce_mobile_app/constants.dart';
import 'package:ecommerce_mobile_app/models/products.dart';
import 'package:ecommerce_mobile_app/widgets/product_widgets/image_slider.dart';
import 'package:ecommerce_mobile_app/widgets/product_widgets/information.dart';
import 'package:ecommerce_mobile_app/widgets/product_widgets/product_appbar.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key, required this.product});

  final Product product;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int currentImage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontantColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProductAppbar(),
            ImageSlider(
                onChanged: (value) {
                  setState(() {
                    currentImage = value;
                  });
                },
                currentImage: currentImage,
                image: widget.product.image),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: currentImage == index ? 15 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentImage == index
                        ? Colors.black
                        : Colors.transparent,
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductInfo(product: widget.product),
                  const Text(
                    'Color',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: List.generate(widget.product.colors.[index], (index) => Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget.product.colors[index],
                      ),
                      margin: EdgeInsets.only(right: 20),
                      child: Container(),
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
