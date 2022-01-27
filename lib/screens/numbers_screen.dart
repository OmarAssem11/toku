// ignore_for_file: avoid_field_initializers_in_const_classes

import 'package:flutter/material.dart';
import 'package:language_learning/components/list_item.dart';
import 'package:language_learning/models/item.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({Key? key}) : super(key: key);
  final List<Item> numbers = const [
    Item(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      enName: 'one',
      sound: 'number_one_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'Two',
      sound: 'number_two_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      enName: 'Three',
      sound: 'number_three_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      enName: 'Four',
      sound: 'number_four_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      enName: 'Five',
      sound: 'number_five_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: 'Six',
      sound: 'number_six_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      enName: 'Seven',
      sound: 'number_seven_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'Hachi',
      enName: 'Eight',
      sound: 'number_eight_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyū',
      enName: 'Nine',
      sound: 'number_nine_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Jū',
      enName: 'Ten',
      sound: 'number_ten_sound.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color(0xff46332b),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListItem(
          item: numbers[index],
          itemType: 'numbers',
          color: const Color(0xffef9235),
        ),
        itemCount: numbers.length,
      ),
    );
  }
}
