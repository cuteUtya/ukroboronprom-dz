import 'package:flutter/material.dart';
import 'package:ukroboronprom/data/weapon_data.dart';
import 'package:ukroboronprom/main.dart';
import 'package:ukroboronprom/widgets/weapon_page.dart';

class Catalog extends StatelessWidget {
  const Catalog({
    Key? key,
    required this.weapons,
  }) : super(key: key);

  final List<WeaponData> weapons;

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];

    Widget b(WeaponData w) => CatalogCard(
          weaponData: w,
          image: w.images[0],
          title: w.name,
          text: w.type,
          width: MediaQuery.of(context).size.width / (isMobile ? 1 : 2),
          height:
              (MediaQuery.of(context).size.width / (isMobile ? 1 : 2)) * 3 / 4,
        );

    if (isMobile) {
      items = weapons.map((e) => b(e)).toList();
    } else {
      for (int i = 0; i < weapons.length; i += 2) {
        var f = weapons[i];
        var s = i + 1 >= weapons.length ? null : weapons[i + 1];

        items.add(
          Row(
            children: [
              b(f),
              s == null ? const SizedBox() : b(s),
            ],
          ),
        );
      }
    }

    return Column(
      children: items,
    );
  }
}

class CatalogCard extends StatelessWidget {
  const CatalogCard({
    Key? key,
    required this.weaponData,
    required this.image,
    required this.title,
    required this.text,
    this.width,
    this.height,
  }) : super(key: key);
  final WeaponData weaponData;
  final ImageProvider image;
  final String title;
  final String text;

  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: image,
          width: width,
          height: height,
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          top: (height ?? 300) * 0.4,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: "Noto Sans"),
                    ),
                    TextSpan(
                      text: "\n$text",
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: "Noto Sans",
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 48,
                width: (width ?? 1000) * 0.33,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 5,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => WeaponPage(
                          weapon: weaponData,
                        ),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.transparent,
                    ),
                    overlayColor: MaterialStateProperty.resolveWith(
                      (states) => states.contains(MaterialState.hovered) ||
                              states.contains(MaterialState.pressed)
                          ? Colors.white.withOpacity(0.2)
                          : Colors.transparent,
                    ),
                  ),
                  child: const Text(
                    "Детальніше",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: "Noto Sans",
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
