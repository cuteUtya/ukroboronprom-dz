import 'package:flutter/cupertino.dart';
import 'package:ukroboronprom/data/weapon_data.dart';

const weapons = [
  WeaponData(
    name: "РК-360МЦ «Нептун»",
    type: "Береговий мобільний ракетний комплекс",
    characteristic: null,
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
    type: "Бронетранспортер",
    characteristic: null,
    images: [
      AssetImage("btr4e.jpg"),
    ],
  ),
  WeaponData(
    name: "«Дозор-Б»",
    type: "Бронетранспортер",
    characteristic: null,
    images: [
      AssetImage("dozor_b.jpg"),
    ],
  ),
  WeaponData(
    name: "«Стугна-П»",
    type: "Противотанковый ракетный комплекс",
    characteristic: null,
    images: [
      AssetImage("stugna-p.webp"),
    ],
  ),
  WeaponData(
    name: "M4 — WAC-47",
    type: "Штурмова гвинтівка",
    characteristic: null,
    images: [
      AssetImage("m4.jpg"),
    ],
  ),
];
