import 'package:flutter/material.dart';
import 'package:ukroboronprom/data/carousel_items.dart';
import 'package:ukroboronprom/data/weapon_data.dart';
import 'package:ukroboronprom/widgets/catalog.dart';
import 'package:ukroboronprom/widgets/hat.dart';
import 'package:ukroboronprom/widgets/promo_carousel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ukroboronprom',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            const Hat(),
            const SizedBox(height: 24),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.width) * 9 / 20,
              child: const PromoCarousel(
                items: [
                  CarouselItem(
                    image: AssetImage("neptun_preview.jpg"),
                    title: "Ракетний комлпекс «Нептун»",
                    text: "Винищувач Чорноморського флоту",
                  ),
                  CarouselItem(
                    image: AssetImage("Gyurza.jpg"),
                    title: "Артилерійський катер «Гюрза-М»",
                    text: "У Генштабі здивовані що в нас є флот",
                  ),
                  CarouselItem(
                    image: AssetImage("btr4e.jpg"),
                    title: "Бронетранспортер «БТР-4Е»",
                    text: "Усе хороше - добре забуте старе",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Модельний ряд",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontFamily: "Noto Sans",
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            const Catalog(
              weapons: [
                WeaponData(
                  name: "РК-360МЦ «Нептун»",
                  type: "Береговий мобільний ракетний комплекс",
                  characteristic: null,
                  description: null,
                  images: [
                    AssetImage("neptun_tzm.jpg"),
                    AssetImage("neptun_preview.jpg"),
                  ],
                ),
                WeaponData(
                  name: "«Гюрза-М»",
                  type: "Артилерійський катер",
                  characteristic: null,
                  description: null,
                  images: [
                    AssetImage("Gyurza_1.jpg"),
                    AssetImage("Gyurza.jpg"),
                  ],
                ),
                WeaponData(
                  name: "БТР-4E",
                  type: "Бронетранспортер",
                  characteristic: null,
                  description: null,
                  images: [
                    AssetImage("btr4e.jpg"),
                  ],
                ),
                WeaponData(
                  name: "«Дозор-Б»",
                  type: "Бронетранспортер",
                  characteristic: null,
                  description: null,
                  images: [
                    AssetImage("dozor_b.jpg"),
                  ],
                ),
                WeaponData(
                  name: "«Стугна-П»",
                  type: "Противотанковый ракетный комплекс",
                  characteristic: null,
                  description: null,
                  images: [
                    AssetImage("stugna-p.webp"),
                  ],
                ),
                WeaponData(
                  name: "M4 — WAC-47",
                  type: "Штурмова гвинтівка",
                  characteristic: null,
                  description: null,
                  images: [
                    AssetImage("m4.jpg"),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
