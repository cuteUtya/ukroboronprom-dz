import 'package:flutter/cupertino.dart';

class WeaponData {
  const WeaponData({
    required this.name,
    required this.type,
    required this.characteristic,
    required this.description,
    required this.images,
    this.youtubeVideoLinks,
  });

  final String name;
  final String type;
  final WeaponCharacteristic characteristic;
  final WeaponDescription description;
  final List<String>? youtubeVideoLinks;
  final List<ImageProvider> images;
}

class WeaponCharacteristic {
  const WeaponCharacteristic({
    required this.paragraphs,
  });

  final List<WeaponCharacteristicParagraph> paragraphs;
}

class WeaponCharacteristicParagraph {
  const WeaponCharacteristicParagraph({
    required this.name,
    required this.items,
  });

  final String name;
  final List<WeaponCharacteristicItem> items;
}

class WeaponCharacteristicItem {
  const WeaponCharacteristicItem({
    required this.name,
    required this.value,
  });

  final String name;
  final String value;
}

class WeaponDescription {
  const WeaponDescription({
    required this.paragraphs,
  });

  final List<WeponDescriptionParagraph> paragraphs;
}

class WeponDescriptionParagraph {
  const WeponDescriptionParagraph({
    required this.title,
    required this.text,
  });

  final String title;
  final String text;
}
