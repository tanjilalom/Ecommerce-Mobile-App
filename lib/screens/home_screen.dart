import 'package:ecommerce_mobile_app/widgets/home_appbar.dart';
import 'package:ecommerce_mobile_app/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/constants.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscaffoldColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppbar(),
              SizedBox(
                height: 20,
              ),
              SearchField(),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: PageView.builder(itemBuilder: (context, index) {
                      return Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assetName'),
                          ),
                        ),
                      );
                    }),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
