import 'package:ecommerce_mobile_app/constants.dart';
import 'package:ecommerce_mobile_app/screens/cart_screen.dart';
import 'package:ecommerce_mobile_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 2;

  List screen = const [
    Scaffold(),
    Scaffold(),
    HomeScreen(),
    CartScreen(),
    HomeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: kprimaryColor,
        onPressed: () {
          setState(() {
            currentTab = 2;
          });
        },
        child: const Icon(
          Iconsax.home,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 70,
        color: Colors.white,
        elevation: 0,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () => setState(() {
                      currentTab = 0;
                    }),
                icon: Icon(
                  Ionicons.grid_outline,
                  color: currentTab == 0 ? kprimaryColor : Colors.grey.shade400,
                )),
            IconButton(
                onPressed: () => setState(() {
                      currentTab = 1;
                    }),
                icon: Icon(
                  Ionicons.heart_outline,
                  color: currentTab == 1 ? kprimaryColor : Colors.grey.shade400,
                )),
            IconButton(
                onPressed: () => setState(() {
                      currentTab = 3;
                    }),
                icon: Icon(
                  Ionicons.cart_outline,
                  color: currentTab == 3 ? kprimaryColor : Colors.grey.shade400,
                )),
            IconButton(
                onPressed: () => setState(() {
                      currentTab = 4;
                    }),
                icon: Icon(
                  Ionicons.person_outline,
                  color: currentTab == 4 ? kprimaryColor : Colors.grey.shade400,
                )),
          ],
        ),
      ),
      body: screen[currentTab],
    );
  }
}
