import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({
    super.key,
    required this.onChanged,
    required this.currentImage,
    required this.image,
  });

  final Function(int) onChanged;
  final int currentImage;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        onPageChanged: onChanged,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Image.asset(image);
        },
      ),
    );
  }
}
