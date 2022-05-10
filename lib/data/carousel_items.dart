import 'package:flutter/cupertino.dart';

class CarouselItem {
  const CarouselItem({
    required this.image,
    required this.title,
    required this.text,
  });

  final ImageProvider image;
  final String title;
  final String text;
}
