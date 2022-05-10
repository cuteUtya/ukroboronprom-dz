import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ukroboronprom/data/carousel_items.dart';
import 'package:ukroboronprom/database.dart';
import 'package:ukroboronprom/widgets/catalog.dart';
import 'package:ukroboronprom/widgets/hat.dart';
import 'package:ukroboronprom/widgets/promo_carousel.dart';
import 'package:ukroboronprom/widgets/smooth_scroll.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: NoThumbScrollBehavior().copyWith(scrollbars: false),
      title: 'Ukroboronprom',
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    _isMobile = size.height > size.width;
    return Scaffold(
      body: Center(
        child: SmoothListView(
          items: [
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
              weapons: weapons,
            )
          ],
        ),
      ),
    );
  }
}

bool _isMobile = false;

bool get isMobile => _isMobile;

//thank https://stackoverflow.com/questions/67662141/flutter-how-to-hide-a-scrollbarthumb-in-scrollable-widgets-like-listview-build#:~:text=The%20easiest%20and%20quickest%20way,%2C%20child%3A%20...%20)
class NoThumbScrollBehavior extends ScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
      };
}
