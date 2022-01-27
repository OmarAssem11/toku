// ignore_for_file: avoid_field_initializers_in_const_classes

import 'package:flutter/material.dart';
import 'package:language_learning/components/list_item.dart';
import 'package:language_learning/models/item.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({Key? key}) : super(key: key);
  final List<Item> phrases = const [
    Item(
      jpName: 'Namae wa nandesu ka?',
      enName: 'What is your name?',
      sound: 'what_is_your_name.wav',
    ),
    Item(
      jpName: 'Go kibun wa ikagadesu ka?',
      enName: 'How are you feeling?',
      sound: 'how_are_you_feeling.wav',
    ),
    Item(
      jpName: 'Doko ni iku no?',
      enName: 'Where are you going?',
      sound: 'where_are_you_going.wav',
    ),
    Item(
      jpName: 'Kimasu ka?',
      enName: 'Are you coming?',
      sound: 'are_you_coming.wav',
    ),
    Item(
      jpName: 'Hai, kimasu',
      enName: 'Yes, i am coming',
      sound: 'yes_im_coming.wav',
    ),
    Item(
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'Programming is easy',
      sound: 'programming_is_easy.wav',
    ),
    Item(
      jpName: 'Watashi wa puroguramingu\n ga daisukidesu',
      enName: 'I love programming',
      sound: 'i_love_programming.wav',
    ),
    Item(
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'I love anime',
      sound: 'i_love_anime.wav',
    ),
    Item(
      jpName: 'Kōdoku suru koto o wasurenaide\n kudasai',
      enName: 'Do not forget to subscribe',
      sound: 'dont_forget_to_subscribe.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: const Color(0xff46332b),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListItem(
          item: phrases[index],
          itemType: 'phrases',
          color: const Color(0xff51B0D3),
        ),
        itemCount: phrases.length,
      ),
    );
  }
}
