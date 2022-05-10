import 'package:flutter/cupertino.dart';

class WeaponData {
  const WeaponData({
    required this.name,
    required this.type,
    required this.characteristic,
    required this.images,
    this.youtubeVideoId,
  });

  final String name;
  final String type;
  final WeaponCharacteristic? characteristic;
  final String? youtubeVideoId;
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
