import 'package:flutter/material.dart';
import 'package:ukroboronprom/data/carousel_items.dart';
import 'package:ukroboronprom/widgets/carousel.dart';

class PromoCarousel extends StatelessWidget {
  const PromoCarousel({
    Key? key,
    required this.items,
  }) : super(key: key);
  final List<CarouselItem> items;
  @override
  Widget build(BuildContext context) {
    return Carousel(
      items: items
          .map(
            (e) => (w) => Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image(
                      image: e.image,
                      height: w.height,
                      width: w.width,
                      fit: BoxFit.cover,
                      isAntiAlias: true,
                      filterQuality: FilterQuality.high,
                    ),
                    Positioned(
                      top: 12,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: e.title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Noto Sans",
                                fontSize: 24,
                              ),
                            ),
                            TextSpan(
                              text: "\n${e.text}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
          )
          .toList(),
    );
  }
}
