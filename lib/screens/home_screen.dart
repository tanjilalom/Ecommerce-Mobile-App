import 'package:ecommerce_mobile_app/models/category.dart';
import 'package:ecommerce_mobile_app/widgets/home_appbar.dart';
import 'package:ecommerce_mobile_app/widgets/home_slider.dart';
import 'package:ecommerce_mobile_app/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/constants.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscaffoldColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeAppbar(),
              const SizedBox(height: 20),
              const SearchField(),
              const SizedBox(height: 20),
              HomeSlider(
                onChanged: (value) {
                  setState(() {
                    currentSlide = value;
                  });
                },
                currentSlide: currentSlide,
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 90,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    categories[index].image,
                                  ),
                                ),),
                          ),
                          const SizedBox(height: 5),
                          Text(categories[index].title),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 20),
                    itemCount: categories.length),
              )
            ],
          ),
        ),
      ),
    );
  }
}
