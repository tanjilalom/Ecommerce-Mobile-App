import 'package:ecommerce_mobile_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
          icon: Badge.count(
            count: 5,
            child: const Icon(Ionicons.notifications_outline),
          ),
          iconSize: 30,
        ),
      ],
    );
  }
}
