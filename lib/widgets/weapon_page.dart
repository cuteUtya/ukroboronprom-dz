import 'package:flutter/material.dart';
import 'package:ukroboronprom/data/weapon_data.dart';
import 'package:ukroboronprom/widgets/carousel.dart';

class WeaponPage extends StatelessWidget {
  const WeaponPage({
    Key? key,
    required this.weapon,
  }) : super(key: key);

  final WeaponData weapon;
  @override
  Widget build(BuildContext context) {
    var galleryWidth = MediaQuery.of(context).size.width * 0.4;
    var galleryHeight = galleryWidth * 3 / 4;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    padding: const EdgeInsets.all(2),
                    splashRadius: 24,
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.close,
                      size: 18,
                    ),
                  ),
                ],
              ),
              Text(
                weapon.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 32),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: galleryWidth,
                    height: galleryHeight,
                    margin: const EdgeInsets.only(right: 24),
                    child: Carousel(
                      items: weapon.images
                          .map(
                            (e) => (w) => Image(
                                  image: e,
                                  width: w.width,
                                  height: w.height,
                                  fit: BoxFit.cover,
                                ),
                          )
                          .toList(),
                    ),
                  ),
                  Flexible(
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
                          const Text(
                            "Характеристики",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: "Noto Sans",
                            ),
                            textAlign: TextAlign.center,
                          ),
                          _buildCharacteristics()
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCharacteristics() => Column(
        children: weapon.characteristic!.paragraphs
            .map((e) => _buildCharacteristicsParagraph(e))
            .toList(),
      );

  Widget _buildCharacteristicsParagraph(
      WeaponCharacteristicParagraph paragraph) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
            const SizedBox(height: 12),
            Text(
              paragraph.name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: "Noto Sans",
              ),
            ),
            const SizedBox(height: 6)
          ] +
          paragraph.items
              .map((e) => _buildCharacteristicsParagraphItem(e))
              .toList(),
    );
  }

  Widget _buildCharacteristicsParagraphItem(WeaponCharacteristicItem item) {
    return Container(
      margin: const EdgeInsets.only(top: 2),
      child: DefaultTextStyle(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontFamily: "Noto Sans",
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${item.name}:"),
            Text(item.value),
          ],
        ),
      ),
    );
  }
}
