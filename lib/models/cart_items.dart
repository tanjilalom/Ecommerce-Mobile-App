import 'package:ecommerce_mobile_app/models/products.dart';

class CartItem {
  int quantity;
  Product product;

  CartItem({
    required this.product,
    required this.quantity,
  });
}

List<CartItem> cartItems = [
  CartItem(product: products[0], quantity: 2),
  CartItem(product: products[1], quantity: 1),
];
