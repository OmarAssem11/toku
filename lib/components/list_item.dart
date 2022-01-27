import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning/models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.item,
    required this.color,
    required this.itemType,
  }) : super(key: key);
  final Item item;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          if (item.image != null)
            Container(
              color: const Color(0xfffff6dc),
              child: Image.asset(
                item.image!,
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  item.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                final player = AudioCache(prefix: 'assets/sounds/$itemType/');
                player.play(item.sound);
              },
            ),
          ),
        ],
      ),
    );
  }
}
