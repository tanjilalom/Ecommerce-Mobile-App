import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/constants.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscaffoldColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  backgroundColor: kcontantColor,
                  padding: const EdgeInsets.all(15.0),
                ),
                icon: const Icon(Ionicons.grid_outline),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  backgroundColor: kcontantColor,
                  padding: const EdgeInsets.all(15.0),
                ),
                icon: const Icon(Ionicons.notifications_outline),
                iconSize: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
