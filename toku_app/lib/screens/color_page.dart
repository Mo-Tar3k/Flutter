import 'package:flutter/material.dart';
import 'package:toku_app/components/list_item.dart';
import 'package:toku_app/models/itemmodel.dart';

// ignore: must_be_immutable
class ColorPage extends StatelessWidget {
  ColorPage({super.key});

  List<ItemModel> colors = [
    const ItemModel(
      sound: 'sounds/colors/black.wav',
      jpName: 'Burakku',
      enName: 'Black',
      image: 'assets/images/colors/color_black.png',
    ),
    const ItemModel(
      sound: 'sounds/colors/brown.wav',
      jpName: 'Chairo',
      enName: 'Brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    const ItemModel(
      sound: 'sounds/colors/dusty yellow.wav',
      jpName: 'Hijautsu',
      enName: 'Dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    const ItemModel(
      sound: 'sounds/colors/gray.wav',
      jpName: 'Gure',
      enName: 'Gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    const ItemModel(
      sound: 'sounds/colors/red.wav',
      jpName: 'Kuro',
      enName: 'Red',
      image: 'assets/images/colors/color_red.png',
    ),
    const ItemModel(
      sound: 'sounds/colors/white.wav',
      jpName: 'Shiro',
      enName: 'White',
      image: 'assets/images/colors/color_white.png',
    ),
    const ItemModel(
      sound: 'sounds/colors/yellow.wav',
      jpName: 'Yuki',
      enName: 'Yellow',
      image: 'assets/images/colors/yellow.png',
    ),
    const ItemModel(
      sound: 'sounds/colors/green.wav',
      jpName: 'Midori',
      enName: 'Green',
      image: 'assets/images/colors/color_green.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        title: const Text(
          'Colors',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ListItem(
            color: const Color(0xff79359F),
            item: colors[index],
          );
        },
      ),
    );
  }
}
