// ignore_for_file: avoid_field_initializers_in_const_classes

import 'package:flutter/material.dart';
import 'package:language_learning/components/list_item.dart';
import 'package:language_learning/models/item.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({Key? key}) : super(key: key);
  final List<Item> colors = const [
    Item(
      image: 'assets/images/colors/color_black.png',
      jpName: 'Burakku',
      enName: 'Black',
      sound: 'black.wav',
    ),
    Item(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'Brown',
      sound: 'brown.wav',
    ),
    Item(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hokori ppoi kiiro',
      enName: 'Dusty yellow',
      sound: 'dusty yellow.wav',
    ),
    Item(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gurē',
      enName: 'Gray',
      sound: 'gray.wav',
    ),
    Item(
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'Green',
      sound: 'green.wav',
    ),
    Item(
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'Red',
      sound: 'red.wav',
    ),
    Item(
      image: 'assets/images/colors/color_yellow.png',
      jpName: 'Kiiro',
      enName: 'Yellow',
      sound: 'yellow.wav',
    ),
    Item(
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiroi',
      enName: 'White',
      sound: 'white.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor: const Color(0xff46332b),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListItem(
          item: colors[index],
          itemType: 'colors',
          color: const Color(0xff854CAE),
        ),
        itemCount: colors.length,
      ),
    );
  }
}
