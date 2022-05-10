import 'package:flutter/material.dart';
import 'package:ukroboronprom/data/carousel_items.dart';
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
            Container(
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
          ],
        ),
      ),
    );
  }
}
