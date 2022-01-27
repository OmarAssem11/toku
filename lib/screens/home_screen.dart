import 'package:flutter/material.dart';
import 'package:language_learning/components/category_item.dart';
import 'package:language_learning/screens/colors_screen.dart';
import 'package:language_learning/screens/family_members_screen.dart';
import 'package:language_learning/screens/numbers_screen.dart';
import 'package:language_learning/screens/phrases_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef6db),
      appBar: AppBar(
        backgroundColor: const Color(0xff46332b),
        title: const Text('Toku '),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: const Color(0xffef9235),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NumbersScreen(),
              ),
            ),
          ),
          Category(
            text: 'FamilyMembers',
            color: const Color(0xff5d8b3e),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FamilyMemberScreen(),
              ),
            ),
          ),
          Category(
            text: 'Colors',
            color: const Color(0xff854CAE),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ColorsScreen(),
              ),
            ),
          ),
          Category(
            text: 'Phrases',
            color: const Color(0xff51B0D3),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PhrasesScreen(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
