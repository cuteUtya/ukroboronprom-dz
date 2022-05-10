import 'package:flutter/cupertino.dart';
import 'package:ukroboronprom/data/weapon_data.dart';

const weapons = [
  WeaponData(
    name: "РК-360МЦ «Нептун»",
    type: "Береговий мобільний ракетний комплекс",
    youtubeVideoId: "6HUcaF1EPOA",
    characteristic: WeaponCharacteristic(
      paragraphs: [
        WeaponCharacteristicParagraph(
          name: "Озброєння",
          items: [
            WeaponCharacteristicItem(
              name: "Головнеозброєння",
              value: "ПКР Р-360 «Нептун»",
            ),
            WeaponCharacteristicItem(
              name: "Операційнадальність",
              value: "1000 км",
            ),
            WeaponCharacteristicItem(
              name: "Максимальна глибина",
              value: "7-300 км",
            ),
          ],
        )
      ],
    ),
    images: [
      AssetImage("neptun_tzm.jpg"),
      AssetImage("neptun_preview.jpg"),
    ],
  ),
  WeaponData(
    name: "«Гюрза-М»",
    type: "Артилерійський катер",
    youtubeVideoId: "I8IfsW5TbwY",
    characteristic: WeaponCharacteristic(paragraphs: [
      WeaponCharacteristicParagraph(
        name: "Габарити",
        items: [
          WeaponCharacteristicItem(
            name: "Водовантажність",
            value: "54 т",
          ),
          WeaponCharacteristicItem(
            name: "Довжина",
            value: "23 м",
          ),
          WeaponCharacteristicItem(
            name: "Ширина",
            value: "4.8 м",
          ),
          WeaponCharacteristicItem(
            name: "Осадка",
            value: "1.0 м",
          ),
        ],
      ),
      WeaponCharacteristicParagraph(
        name: "Озброєння",
        items: [
          WeaponCharacteristicItem(
            name: "КАУ-30М",
            value: "2 одиниці",
          ),
          WeaponCharacteristicItem(
            name: "30-мм гармата ЗТМ-1",
            value: "1 одиниця",
          ),
          WeaponCharacteristicItem(
            name: "30-мм гранатомет КБА-117",
            value: "1 одиниця",
          ),
          WeaponCharacteristicItem(
            name: "7,62-мм кулемет КТ-7,62",
            value: "1 одиниця",
          ),
          WeaponCharacteristicItem(
            name: "ПТКР «Бар’єр»",
            value: "2 одиницi",
          ),
        ],
      ),
    ]),
    images: [
      AssetImage("Gyurza_1.jpg"),
      AssetImage("Gyurza.jpg"),
    ],
  ),
  WeaponData(
    name: "БТР-4E",
    youtubeVideoId: "Qei9v52FhiY",
    type: "Бронетранспортер",
    characteristic: WeaponCharacteristic(
      paragraphs: [
        WeaponCharacteristicParagraph(
          name: "Габарити",
          items: [
            WeaponCharacteristicItem(name: "Ширина", value: "2.9 м"),
            WeaponCharacteristicItem(name: "Висота", value: "2.86 м"),
            WeaponCharacteristicItem(name: "Довжина", value: "7.65 м"),
            WeaponCharacteristicItem(name: "Кліренс", value: "0.46 м"),
          ],
        ),
        WeaponCharacteristicParagraph(
          name: "Озброєння",
          items: [
            WeaponCharacteristicItem(
                name: "Тип гармати", value: "нарізна, автоматична"),
            WeaponCharacteristicItem(name: "Висота", value: "2.86 м"),
            WeaponCharacteristicItem(name: "Боєкомплект гармати", value: "400"),
            WeaponCharacteristicItem(name: "Кулемети", value: "1×7,62-мм КТ"),
          ],
        ),
        WeaponCharacteristicParagraph(
          name: "Двигун",
          items: [
            WeaponCharacteristicItem(
                name: "Потужність двигуна", value: "500 к.с"),
            WeaponCharacteristicItem(
                name: "Швидкість по шосе", value: "110 км/г"),
            WeaponCharacteristicItem(
                name: "Запас ходу по шосе", value: "690 км"),
            WeaponCharacteristicItem(name: "Колісна формула", value: "8×8"),
          ],
        ),
      ],
    ),
    images: [
      AssetImage("btr4e.jpg"),
      AssetImage("btr4.jfif"),
    ],
  ),
  WeaponData(
    name: "«Дозор-Б»",
    type: "Бронетранспортер",
    youtubeVideoId: "rzUYGL1KwCI",
    characteristic: WeaponCharacteristic(paragraphs: [
      WeaponCharacteristicParagraph(
        name: "Габарити",
        items: [
          WeaponCharacteristicItem(name: "Вага", value: "6.3 т"),
          WeaponCharacteristicItem(name: "Довжина", value: "5.4 м"),
          WeaponCharacteristicItem(name: "Висота", value: "2.28 м"),
          WeaponCharacteristicItem(name: "Ширина", value: "2.4 м"),
        ],
      ),
      WeaponCharacteristicParagraph(
        name: "Рух",
        items: [
          WeaponCharacteristicItem(
              name: "Двигун", value: "Deutz BF 4M 1013 FC"),
          WeaponCharacteristicItem(name: "Підвіска", value: "4×4"),
          WeaponCharacteristicItem(
              name: "Дорожній просвіт", value: "400, база: 3 100"),
          WeaponCharacteristicItem(name: "Швидкість", value: "90 — 105 км/год"),
        ],
      ),
      WeaponCharacteristicParagraph(
        name: "Тактичні данні",
        items: [
          WeaponCharacteristicItem(
              name: "Обслуга", value: "3 (водій, командир, стрілець)"),
          WeaponCharacteristicItem(
              name: "Десант", value: "6—8 (залежно від модифікації)"),
        ],
      ),
    ]),
    images: [
      AssetImage("dozor_b.jpg"),
      AssetImage("dozor_b_1.jpg"),
    ],
  ),
  WeaponData(
    name: "«Стугна-П»",
    type: "Противотанковый ракетный комплекс",
    youtubeVideoId: "xeuBZ8bAoeY",
    characteristic: WeaponCharacteristic(
      paragraphs: [
        WeaponCharacteristicParagraph(
          name: "Габарити",
          items: [
            WeaponCharacteristicItem(name: "Вага", value: "29.5 кг"),
            WeaponCharacteristicItem(name: "Довжина", value: "1.36 м"),
            WeaponCharacteristicItem(name: "Діаметр", value: "140 мм"),
          ],
        ),
        WeaponCharacteristicParagraph(
          name: "Боєва здатність",
          items: [
            WeaponCharacteristicItem(name: "Калібр", value: "130 мм (152 мм)"),
            WeaponCharacteristicItem(
                name: "Дальність вогню (ефективна)", value: ">100 м"),
            WeaponCharacteristicItem(
                name: "Дальність вогню (максимальна)", value: "100-5000 м"),
            WeaponCharacteristicItem(name: "Швидкість", value: "200 м/с"),
            WeaponCharacteristicItem(name: "Точність", value: "±2 м"),
          ],
        ),
      ],
    ),
    images: [
      AssetImage("stugna-p.webp"),
      AssetImage("stugna-p.jpg"),
    ],
  ),
  WeaponData(
    name: "M4 — WAC-47",
    type: "Штурмова гвинтівка",
    youtubeVideoId: "xXo-2rVHwwk",
    characteristic: WeaponCharacteristic(paragraphs: [
      WeaponCharacteristicParagraph(
        name: "Габарити",
        items: [
          WeaponCharacteristicItem(name: "Вага", value: "3110 г"),
          WeaponCharacteristicItem(name: "Довжина", value: "840 мм"),
          WeaponCharacteristicItem(
              name: "Довжина ствола", value: "406 мм (16')"),
        ],
      ),
      WeaponCharacteristicParagraph(
        name: "Бойові характеристики",
        items: [
          WeaponCharacteristicItem(name: "Набій", value: "7,62x39 мм"),
          WeaponCharacteristicItem(name: "Калібр", value: "7,62 мм"),
          WeaponCharacteristicItem(name: "Дульна швидкість", value: "884 м/с"),
          WeaponCharacteristicItem(
              name: "Дальність вогню (ефективна)", value: "600 м"),
          WeaponCharacteristicItem(
              name: "Система живлення", value: "30 набоїі"),
        ],
      )
    ]),
    images: [
      AssetImage("m4.jpg"),
      AssetImage("m4_0.jpg"),
    ],
  ),
];
