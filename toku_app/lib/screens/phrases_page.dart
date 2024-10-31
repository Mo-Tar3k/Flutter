import 'package:flutter/material.dart';
import 'package:toku_app/components/list_item.dart';
import 'package:toku_app/models/itemmodel.dart';

// ignore: must_be_immutable
class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});

  List<ItemModel> phrases = [
    const ItemModel(
      sound: 'assets/sounds/phrases/are_you_coming.wav',
      jpName: '',
      enName: 'are you coming',
      
    ),
    const ItemModel(
      sound: 'assets/sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: '',
      enName: 'dont forget to subscribe',
      
    ),
    const ItemModel(
      sound: 'assets/sounds/phrases/how_are_you_feeling.wav',
      jpName: '',
      enName: 'how are you feeling',
      
    ),
    const ItemModel(
      sound: 'assets/sounds/phrases/i_love_anime.wav',
      jpName: '',
      enName: 'i love anime',
      
    ),
    const ItemModel(
      sound: 'assets/sounds/phrases/i_love_programming.wav',
      jpName: '',
      enName: 'i love programming',
      
    ),
    const ItemModel(
      sound: 'assets/sounds/phrases/programming_is_easy.wav',
      jpName: '',
      enName: 'programming is easy',
      
    ),
    const ItemModel(
      sound: 'assets/sounds/phrases/what_is_your_name.wav',
      jpName: '',
      enName: 'what is your name',
      
    ),
    const ItemModel(
      sound: 'assets/sounds/phrases/where_are_you_going.wav',
      jpName: '',
      enName: 'where are you going',
      
    ),  
    const ItemModel(
      sound: 'assets/sounds/phrases/yes_im_coming.wav',
      jpName: '',
      enName: 'yes im coming',
      
    ),
      
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return ListItem(
            color: const Color.fromARGB(255, 0, 221, 251),
            item: phrases[index],
          );
        },
      ),
    );
  }
}
