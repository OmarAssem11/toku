// ignore_for_file: avoid_field_initializers_in_const_classes

import 'package:flutter/material.dart';
import 'package:language_learning/components/list_item.dart';
import 'package:language_learning/models/item.dart';

class FamilyMemberScreen extends StatelessWidget {
  const FamilyMemberScreen({Key? key}) : super(key: key);
  final List<Item> familyMembers = const [
    Item(
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichioya',
      enName: 'Father',
      sound: 'father.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'Mother',
      sound: 'mother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'Son',
      sound: 'son.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'Daughter',
      sound: 'daughter.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojisan',
      enName: 'Grandfather',
      sound: 'grand father.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'GrandMother',
      sound: 'grand mother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Nisan',
      enName: 'Older brother',
      sound: 'older brother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'Older sister',
      sound: 'older sister.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'Younger brother',
      sound: 'younger brother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'Younger sister',
      sound: 'younger sister.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor: const Color(0xff46332b),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListItem(
          item: familyMembers[index],
          itemType: 'family_members',
          color: const Color(0xff5d8b3e),
        ),
        itemCount: familyMembers.length,
      ),
    );
  }
}
