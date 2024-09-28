import 'package:ecommerce_mobile_app/main.dart';
import 'package:ecommerce_mobile_app/widgets/home_appbar.dart';
import 'package:ecommerce_mobile_app/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/constants.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int currentSlide = 0;

    return Scaffold(
      backgroundColor: kscaffoldColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            HomeAppbar(),
            SizedBox(
              height: 20,
            ),
            SearchField(),
            SizedBox(
              height: 20,
            ),
            Stack(children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentSlide = value;
                      });
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/slider.jpg'),
                          ),
                        ),
                      );
                    }),
              ),
              Positioned.fill(
                bottom: 10,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      4,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: currentSlide == index ? 15 : 10,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentSlide == index
                              ? Colors.black
                              : Colors.transparent,
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ])
          ]),
        ),
      ),
    );
  }
}
