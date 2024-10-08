import 'package:ecommerce_mobile_app/constants.dart';
import 'package:ecommerce_mobile_app/models/cart_items.dart';
import 'package:ecommerce_mobile_app/widgets/cart_widgets/cart_checkout.dart';
import 'package:ecommerce_mobile_app/widgets/cart_widgets/cart_tile.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontantColor,
      appBar: AppBar(
        backgroundColor: kcontantColor,
        title: const Text(
          'My Cart',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leadingWidth: 60,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(backgroundColor: Colors.white),
            icon: const Icon(Ionicons.chevron_back),
          ),
        ),
      ),
      bottomSheet: CartCheckout(items: cartItems),
      body: ListView.separated(
          padding: const EdgeInsets.all(20),
          itemBuilder: (context, index) => CartTile(
                item: cartItems[index],
                onRemove: () {
                  if (cartItems[index].quantity != 1) {
                    setState(() {
                      cartItems[index].quantity--;
                    });
                  }
                },
                onAdd: () {
                  setState(() {
                    cartItems[index].quantity++;
                  });
                },
              ),
          separatorBuilder: (context, index) => const SizedBox(height: 20),
          itemCount: cartItems.length),
    );
  }
}
