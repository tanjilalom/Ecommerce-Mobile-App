import 'package:ecommerce_mobile_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class AddToCard extends StatelessWidget {
  const AddToCard({
    super.key,
    required this.currentNumber,
  });

  final int currentNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.black),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    iconSize: 18,
                    icon: const Icon(
                      Ionicons.remove_outline,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    currentNumber.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 5),
                  IconButton(
                    onPressed: () {},
                    iconSize: 18,
                    icon: Icon(Ionicons.add_outline),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: kprimaryColor,
                borderRadius: BorderRadius.circular(60),
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Add to Cart",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
